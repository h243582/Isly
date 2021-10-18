package org.example.controller;

import org.example.pojo.*;
import org.example.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;


@Controller
@RequestMapping("/")
public class ActionController {
    @Autowired
    private DestinationService destinationService;

    @Autowired
    private TopSectionService topSectionService;

    @Autowired
    private HotCityService hotCityService;

    @Autowired
    private TypeService typeService;
    @Autowired
    private UserService userService;

    @Autowired
    private OrdersService ordersService;

    @Autowired
    private OrderNompl orderNompl;

    @Autowired
    private AllAttribute allAttribute;

    @RequestMapping("/")
    public String index(HttpServletRequest request, HttpServletResponse response){
        if(allAttribute.getHotcity()==null){
            allAttribute.setTopsection(new ArrayList<List<String>>());
            List<TopSection> t= topSectionService.getTopSection();
            for(TopSection a:t){
                List<String> temp=new ArrayList<>();
                Destination p=destinationService.getDestinationByDesId(a.getDesid());
                temp.add(p.getName());
                temp.add(p.getDetail());
                temp.add(p.getSrc());
                temp.add(a.getDesid()+"");
                allAttribute.getTopsection().add(temp);
            }

            allAttribute.setHotcity(hotCityService.getHotCity());
            allAttribute.setType(typeService.getType());
        }
        GetData(request,response);
        return "isly";
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String mail=request.getParameter("mail");
        String password=request.getParameter("pw");
        User user=userService.Login(mail,password);
        if(user!=null) {
            HttpSession session=request.getSession();
            allAttribute.setUserName(user.getUsername());
            allAttribute.setMail(mail);
            allAttribute.setLoginmessage("");
            session.setAttribute("UserName",user.getUsername());
            session.setAttribute("Loginmessage", "");
            session.setAttribute("mail", mail);
            if(user.getVip()==1){
                session.setAttribute("Vip", 1);
                allAttribute.setVip(1);
            }
            else{
                session.setAttribute("Vip", 0);
                allAttribute.setVip(0);
            }
            session.setAttribute("psmessage", "");
            allAttribute.setPsmessage("");
            return "forward:/";
        }
        else {
            HttpSession session=request.getSession();
            session.setAttribute("Loginmessage","账号或密码错误");
            allAttribute.setPsmessage("账号或密码错误");
        }
        return "forward:toLogin";
    }

    @RequestMapping("/toLogin")
    public String toLogin(HttpServletRequest request,HttpServletResponse response){
        return "login";
    }

    @RequestMapping("/MyOrder")
    public String mydorer(HttpServletRequest request,HttpServletResponse response){
        HttpSession session=request.getSession();
        String mail= allAttribute.getMail();
        if(mail!=null) {
            List<Order> orderList=ordersService.getOrderBymail(mail);
            session.setAttribute("OrderList", orderList);
            allAttribute.setOrderList(orderList);
        }
        return "Myorder";
    }

    @RequestMapping("/toInfo")
    public String getInfo(HttpServletRequest request,HttpServletResponse response){
        if(request.getSession().getAttribute("mail")==null)
            return "redirect:/";
        return "information";
    }
    @RequestMapping("/toVip")
    public String getVip(HttpServletRequest request,HttpServletResponse response){
        return "vip";
    }

    @GetMapping("/OutLogin")
    public String outLogin(HttpServletRequest request,HttpServletResponse response){
        HttpSession session=request.getSession();
        session.invalidate();
        allAttribute=new AllAttribute();

        return "redirect:/";

    }
    @PostMapping("/Pay")
    public String pay(HttpServletRequest request,HttpServletResponse response){
        Order order=new Order();
        HttpSession session=request.getSession();
        int Desid=Integer.parseInt(request.getParameter("desid"));
        Destination destination=destinationService.getDestinationByDesId(Desid);
        String orderNo=orderNompl.CreatOrderNo();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            order.setDate(new java.sql.Date(format.parse(request.getParameter("date")).getTime()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        order.setMail((String)session.getAttribute("mail"));
        order.setName(destination.getName());
        order.setOrderno(orderNo);
        int num=Integer.parseInt(request.getParameter("number"));
        order.setNumber(num);
        order.setType(destination.getType());
        double totalprice=1.0*num*destination.getPrice();
        Object vip=session.getAttribute("Vip");
        int discount=0;
        if(vip!=null&&(int)vip==1) {
            totalprice*=0.9;
            discount=1;
        }
        order.setTotalprice(totalprice);
        order.setDiscount(discount);
        order.setPrice(destination.getPrice());
        order.setPayflag(1);
        String src=request.getParameter("src");
        order.setSrc(src);
        if(ordersService.InsertOrder(order)) {
            List<Destination> res=null;
            res=destinationService.getDestinationByType(destination.getType());
            session.setAttribute("DetailList", res);
            allAttribute.setDetailList(res);
            return "paySuccess";
        }
        else {
            session.setAttribute("desid", destination.getDesid());
            return "payfail";
        }
    }
    @PostMapping("/Register")
    public String Register(HttpServletRequest request,HttpServletResponse response){
        User user=new User();
        user.setUsername(request.getParameter("name"));
        user.setMail(request.getParameter("mail"));
        user.setPassword(request.getParameter("pw"));
        user.setVip(0);
        Boolean flag=userService.Regiter(user);
        if(flag) {
            HttpSession session=request.getSession();
            session.setAttribute("UserName",user.getUsername());
            session.setAttribute("mail", user.getMail());
            session.removeAttribute("Registermessage");
            allAttribute.setRegistermessage("");
            allAttribute.setUserName(user.getUsername());
            allAttribute.setMail(user.getMail());
            return "forward:/";
        }else {
            HttpSession session=request.getSession();
            session.setAttribute("Registermessage","该邮箱已被注册");
            return "register";
        }
    }
    @GetMapping("/toRegister")
    public String toRegister(HttpServletRequest request,HttpServletResponse response){
        return "register";
    }
    @RequestMapping("/Search")
    public String Search(HttpServletRequest request,HttpServletResponse response){
        String SText = request.getParameter("Stext");
        String typee=request.getParameter("type");
        String city=request.getParameter("city");
        List<Destination> res = null;
        HttpSession session = request.getSession();
        if (SText != null && !SText.equals("")) {
            res = destinationService.getDestinationByCity(SText);
        } else if(session.getAttribute("type")!=null){
            String type1 = (String) session.getAttribute("type");
            session.removeAttribute("type");
            res = destinationService.getDestinationByType(type1);
        }else {
            if(typee!=null) {
                res= destinationService.getDestinationByType(typee);
            }else if(city!=null) {
                res= destinationService.getDestinationByCity(city);
            }
        }
        session.setAttribute("DetailList", res);
        if(res==null)
            session.setAttribute("DetailList",allAttribute.getDetailList());
        allAttribute.setDetailList(res);
        return "search";
    }
    @GetMapping("/ToPay")
    public String toPay(HttpServletRequest request,HttpServletResponse response){
        String id=request.getParameter("No");
        int Desid=Integer.parseInt(id);
        Destination detail=destinationService.getDestinationByDesId(Desid);
        request.setAttribute("Detail", detail);
        allAttribute.setDetail(detail);
        return "pay";
    }
    @PostMapping("/updatename")
    public String updatename(HttpServletRequest request,HttpServletResponse response){
        String name=request.getParameter("name");
        HttpSession httpSession=request.getSession();
        String mail=(String)httpSession.getAttribute("mail");
        if(mail!=null&&name!=null&& !name.equals("")) {
            if(userService.ChangeName(mail, name)) {
                httpSession.setAttribute("UserName", name);
                httpSession.setAttribute("NameMessage","已更改为"+name);
            }
        }
        return "self";
    }
    @PostMapping("/updatepw")
    public String updatepw(HttpServletRequest request,HttpServletResponse response){
        HttpSession session=request.getSession();
        String mail=(String) session.getAttribute("mail");
        String pw=request.getParameter("pw");
        String npw=request.getParameter("npw");
        User user=new User();
        user.setMail(mail);
        user.setPassword(pw);
        if(mail!=null) {
            if(userService.ChangePassword(user,npw)) {
                session.setAttribute("psmessage", "修改成功");
                allAttribute.setPsmessage("修改成功");
                return "password";
            }
            session.setAttribute("psmessage", "原密码错误");
            allAttribute.setPsmessage("原密码错误");
            return "password";
        }
        session.setAttribute("psmessage", "修改失败");
        allAttribute.setPsmessage("修改失败");
        return "password";
    }


    @PostMapping("/Vip")
    public String getVIP(HttpServletRequest request,HttpServletResponse response){
        HttpSession session=request.getSession();
        String mail=(String) session.getAttribute("mail");
        if(mail!=null) {
            if(userService.Bookvip(mail)) {
                session.setAttribute("Vip", 1);
                allAttribute.setVip(1);
            }
            else {
                session.setAttribute("Vip", 0);
                allAttribute.setVip(0);
            }
        }
        return "vip";
    }
    public void GetData(HttpServletRequest request,HttpServletResponse response){
        request.setAttribute("topsection", allAttribute.getTopsection());
        request.setAttribute("hotcity", allAttribute.getHotcity());
        request.setAttribute("type",allAttribute.getType());
    }

}


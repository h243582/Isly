package org.example.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.example.dao.OrderNoInterface;
import org.springframework.stereotype.Service;

@Service
public class OrderNompl implements OrderNoInterface {
	@Override
	public String CreatOrderNo() {
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		Random random=new Random();
		int integer=(random.nextInt(1<<20)+10000007)%1000000;
		return formatter.format(date)+Integer.toString(integer);
	}
}

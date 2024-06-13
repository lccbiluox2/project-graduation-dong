package com.neo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neo.dao.RentDao;
import com.neo.service.RentService;

@Service
public class RentServiceImpl implements RentService{

		@Autowired
		private RentDao rentDao;
}

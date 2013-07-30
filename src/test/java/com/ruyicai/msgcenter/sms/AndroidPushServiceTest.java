package com.ruyicai.msgcenter.sms;

import java.util.Random;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.jpush.api.MessageResult;

import com.ruyicai.msgcenter.consts.AndroidPkgType;
import com.ruyicai.msgcenter.service.SendAndroidService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/META-INF/spring/applicationContext.xml",
		"classpath:/META-INF/spring/applicationContext-jms.xml",
		"classpath:/META-INF/spring/applicationContext-memcache.xml",
		"classpath:/META-INF/spring/applicationContext-mail.xml", })
public class AndroidPushServiceTest {

	private Logger logger = LoggerFactory.getLogger(AndroidPushServiceTest.class);

	@Autowired
	private SendAndroidService sendAndroidService;

	@Test
	public void testPush() {
		MessageResult result = sendAndroidService.pushWithAppKey(AndroidPkgType.RuyicaiAndroid168.pkgName, 9999999,
				"hello 付磊磊", "what's the fuck");
		logger.info(result.toString());
	}

	@Test
	public void testPushByAlais() {
		MessageResult result = sendAndroidService.pushWithAlias("RuyicaiAndroid", 1234 + new Random().nextInt(1000),
				"00000042", "测试测试测试", "测试测试测试");
		logger.info(result.toString());
	}
}

package cn.kkl.test;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.HibernateTransactionManager;
import org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.mvc.SimpleControllerHandlerAdapter;
import org.springframework.web.servlet.mvc.annotation.AnnotationMethodHandlerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

public class Test {
	
	public static void main(String[] args) {
		CommonsMultipartResolver upresolver;
		
		ModelMap modelMap;
		
		ModelAndView modelAndView;
		
		ViewResolver resolver2;
		
		AnnotationMethodHandlerAdapter adapter;
		
		SimpleControllerHandlerAdapter adapter2;
		
		InternalResourceViewResolver resolver;
		
		JstlView view;
		
		AnnotationSessionFactoryBean annotationSessionFactoryBean;
		
		HibernateTemplate template;
		
		JdbcTemplate template2;
		
		HibernateTransactionManager transactionManager;
	}

}

package com.ak.backend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.DriverManagerDataSource;

@Controller
@ComponentScan(basePackages= {"com.ak.backend.dto"})
@EnableTransactionManagement
public class HibernateConfig {
	
	public final static String DATABASE_URL="jdbc:mysql://localhost:3306/spgdb"; 
	public final static String DATABASE_DRIVER="com.mysql.jdbc.Driver";
	public final static String DATABASE_USERNAME="root";
	public final static String DATABASE_PASSWORD="root";
	public final static String DATABASE_DIALECT="org.hibernate.dialect.MySQL5Dialect";
 	
	@Bean("dataSource")
	public DataSource getDataSource() throws Exception  {
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClass(DATABASE_DRIVER);
		dataSource.setJdbcUrl(DATABASE_URL);	
		dataSource.setUser(DATABASE_USERNAME);
		dataSource.setPassword(DATABASE_PASSWORD);
		return dataSource;
	}
	
	public Properties getHibernateProperties() {
		Properties properties=new Properties();
		properties.put("hibernate.dialect",DATABASE_DIALECT);
		properties.put("hibernate.show_sql", true);
		properties.put("hhibernate.show_formate", true);
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;		
	}

	@Bean
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder builder=new LocalSessionFactoryBuilder(dataSource);
		builder.addProperties(getHibernateProperties());
		builder.scanPackages("com.ak.backend.dto");
		return builder.buildSessionFactory();
	}	
	@Bean
	public HibernateTransactionManager getTranssactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager=new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}
}

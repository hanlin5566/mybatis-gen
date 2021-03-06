package com.hanson.mybatis;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

public class MybatisGenerator {

    public static void main(String[] args) throws Exception {
    	List<String> warnings = new ArrayList<String>();
		boolean overwrite = true;
//		InputStream is = MybatisGenerator.class.getResourceAsStream("/sql/hhm/table_system_user.xml");
//		InputStream is = MybatisGenerator.class.getResourceAsStream("/tb_syfc_community.xml");
		InputStream is = MybatisGenerator.class.getResourceAsStream("/tb_syfc_building.xml");
//		InputStream is = MybatisGenerator.class.getResourceAsStream("/tb_syfc_sales_no.xml");


		try {
			ConfigurationParser cp = new ConfigurationParser(warnings);
			Configuration config = cp.parseConfiguration(is);
			DefaultShellCallback callback = new DefaultShellCallback(overwrite);
			MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
			myBatisGenerator.generate(null);

			System.out.println(warnings);
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			is.close();
		}
    }
}
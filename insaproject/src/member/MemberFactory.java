package member;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberFactory {
	private static SqlSessionFactory factory;
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
	
	static{
		try {
			Reader reader = Resources.getResourceAsReader("myBatis_config.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

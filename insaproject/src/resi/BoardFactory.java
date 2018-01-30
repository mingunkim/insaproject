package resi;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardFactory {
		private static SqlSessionFactory factory;
		
		static{
			try{
				Reader reader = Resources.getResourceAsReader("myBatis_config.xml");
				factory = new SqlSessionFactoryBuilder().build(reader);
			
			}catch(Exception e){
				e.printStackTrace();
			}
		}

		//static 2~ 여러번 사용해도 초기화되지않는다.
		public static SqlSessionFactory getFactory() {
			return factory;
		}
		
		
}

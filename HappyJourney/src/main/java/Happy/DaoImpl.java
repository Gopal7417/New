package Happy;

import org.springframework.jdbc.core.JdbcTemplate;


public class DaoImpl implements Dao {
JdbcTemplate template;
	

	public void setTemplate(JdbcTemplate t) {
		template=t;
	}
	public JdbcTemplate getTemplate() {
		return template;
	}
	
	//Method to register the user in database
	public int registerUser(UserModel user){
		
		//prepare the insert statement
	    String qry = "insert into bususer values(?,?)";

	    //execute the DML statement
	    int st=template.update(qry, new Object[] { user.getName(), user.getPsd() });
	    
		return st;
	}
	
	public int loginUser(UserModel u)
	{
String qry = "select pswd from bususer where userid=?";
		
		try {
		String pwd = (String)template.queryForObject(qry,new Object[]{u.getName()}, String.class );
		
		//verify the password
		if (pwd != null) {
			if (u.getPsd().equals(pwd)) {
				return 0;	//success
			}else {
				return 1;	//wrong password
			}
		}else {
			return 2;
		}
		
		}catch(Exception ex) {
			return 2;	//user itself wrong
		}
		
	}

	public int loginadmin(UserModel u)
	{
String qry = "select password from admindetails where userid=?";
		
		try {
		String pwd = (String)template.queryForObject(qry,new Object[]{u.getName()}, String.class );
		
		//verify the password
		if (pwd != null) {
			if (u.getPsd().equals(pwd)) {
				return 0;	//success
			}else {
				return 1;	//wrong password
			}
		}else {
			return 2;
		}
		
		}catch(Exception ex) {
			return 2;	//user itself wrong
		}
		
	}
}

package mobiles;

import org.junit.Test;

import com.javanut.gl.api.GreenRuntime;

/**
 * Unit test for simple App.
 */
public class AppTest { 

	
	 @Test
	 public void testApp() {
		    int timeoutMS = 2000;
		    GreenRuntime.testUntilShutdownRequested(new flipkart20(), timeoutMS);
	
	 }
	 
	 
}

package assignment2;

import com.meterware.httpunit.GetMethodWebRequest;
import com.meterware.httpunit.WebRequest;
import com.meterware.servletunit.InvocationContext;
import com.meterware.servletunit.ServletRunner;
import com.meterware.servletunit.ServletUnitClient;
import org.junit.jupiter.api.Test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import static org.junit.jupiter.api.Assertions.assertTrue;

class GreetingGeneratorTest {
  @Test
  public void testingWithServletRunner() throws IOException, ServletException {
    ServletRunner servletRunner = new ServletRunner();
    servletRunner.registerServlet("GreetingGenerator", GreetingGenerator.class.getName());
    ServletUnitClient servletUnitClient = servletRunner.newClient();
    WebRequest request = new GetMethodWebRequest("http://fake.test/GreetingGenerator");
    InvocationContext invocationContext = servletUnitClient.newInvocation(request);
    GreetingGenerator servlet = (GreetingGenerator) invocationContext.getServlet();
    HttpServletRequest httpServletRequest = invocationContext.getRequest();
    HttpServletResponse httpServletResponse = invocationContext.getResponse();
    HttpSession session = httpServletRequest.getSession();

    servlet.doGet(httpServletRequest, httpServletResponse);

    String expectedGreeting = "Hi CSE640 2021 Class";
    String actualGreeting = session.getAttribute("greeting").toString();
    assertTrue(actualGreeting.contains(expectedGreeting));

    String dateString = actualGreeting.replace(expectedGreeting, "").trim();
    assertTrue(isValid(dateString), "No date found in " + dateString);

  }

  private boolean isValid(String dateStr) {
    String dateFormat = "dd-MMMM-yyyy HH:mm:ss.SSS";
    DateFormat sdf = new SimpleDateFormat(dateFormat);
    sdf.setLenient(false);
    try {
      sdf.parse(dateStr);
    } catch (ParseException e) {
      return false;
    }
    return true;
  }
}
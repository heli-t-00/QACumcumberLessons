package stepdefs

import io.cucumber.scala.{EN, PendingException, ScalaDsl}
import org.openqa.selenium.{By, WebDriver, WebElement}
import org.openqa.selenium.chrome.ChromeDriver

class StepDefLogin extends ScalaDsl with EN {
  //     invoke browser - to launch, need to get the PROMPT driver - initiate the webDriver add this under the Class

  val driver: WebDriver = new ChromeDriver()

  Given("""the user is on Login Page$""") { () => // Write code here that turns the phrase above into concrete actions

    driver.get("https://parabank.parasoft.com/parabank/index.html")

  }

  When("""the user enters valid username and password""") { () =>
    val username: WebElement = driver.findElement(By.name("username"))
      username.sendKeys("john")
    val password: WebElement = driver.findElement(By.name("password"))
      password.sendKeys("demo")

  }

  And("""the user clicks the login button""") { () =>
    val submitButton: WebElement = driver.findElement(By.cssSelector("input[type ='submit']"))
    submitButton.click()
Thread.sleep(2000)

  }

  Then("""the user should be logged in successfully""") { () =>
  val loginSuccessful: WebElement = driver.findElement(By.tagName("h1"))
    val actualHeader = loginSuccessful.getText
    val expectedHeader = "Account Overview"
    if (actualHeader == expectedHeader){
      println("Login Successful")
    }
  }


}
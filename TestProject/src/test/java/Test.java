
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author lenovo
 */
public class Test {
    private WebDriver driver;
    
    @BeforeEach
    public void setUp() {
        System.setProperty("webdriver.chrome.driver", "D:\\ResidentManagemnetSystem\\TestProject\\chromedriver-win64\\chromedriver.exe");
        driver = new ChromeDriver();
        driver.navigate().to("http://localhost:3000/login");
    }
    
    @AfterEach
    public void tearDown() {
      if (driver != null) {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            driver.quit();
        }
    }
    
    @org.junit.jupiter.api.Test
    public void testLogin() {
        WebElement username = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[1]/input"));
        WebElement password = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[2]/input"));
        WebElement login = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[3]/button"));
        
        username.sendKeys("user01");
        password.sendKeys("12345");
        login.click();
        
        WebDriverWait wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.urlToBe("http://localhost:3000/")); // Chờ đến khi URL thay đổi
        String actualUrl = "http://localhost:3000/";
        String expectedUrl = driver.getCurrentUrl();
        
        Assertions.assertEquals(actualUrl, expectedUrl);
    }
    
    @org.junit.jupiter.api.Test
    public void testLoginWrongWithPassWord() {
        WebElement username = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[1]/input"));
        WebElement password = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[2]/input"));
        WebElement login = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[3]/button"));
        
        username.sendKeys("user01");
        password.sendKeys("123");
        login.click();
        
        WebDriverWait wait = new WebDriverWait(driver, 10);
        wait.until(ExpectedConditions.urlToBe("http://localhost:3000/")); // Chờ đến khi URL thay đổi
        String actualUrl = "http://localhost:3000/";
        String expectedUrl = driver.getCurrentUrl();
        
        Assertions.assertEquals(actualUrl, expectedUrl);
    }
    
    @org.junit.jupiter.api.Test
    public void testLoginWrongWithUsername() {
        WebElement username = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[1]/input"));
        WebElement password = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[2]/input"));
        WebElement login = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[3]/button"));
        
        username.sendKeys("user01");
        password.sendKeys("123");
        login.click();
        
        WebDriverWait wait = new WebDriverWait(driver, 10);
        wait.until(ExpectedConditions.urlToBe("http://localhost:3000/")); // Chờ đến khi URL thay đổi
        String actualUrl = "http://localhost:3000/";
        String expectedUrl = driver.getCurrentUrl();
        
        Assertions.assertEquals(actualUrl, expectedUrl);
    }
    
     @org.junit.jupiter.api.Test
    public void testLoginWrongBoth() {
        WebElement username = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[1]/input"));
        WebElement password = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[2]/input"));
        WebElement login = driver.findElement(By.xpath("//*[@id=\"root\"]/div/div/div[1]/form[2]/div[3]/button"));
        
        username.sendKeys("user02");
        password.sendKeys("1234");
        login.click();
        
        WebDriverWait wait = new WebDriverWait(driver, 10);
        wait.until(ExpectedConditions.urlToBe("http://localhost:3000/")); // Chờ đến khi URL thay đổi
        String actualUrl = "http://localhost:3000/";
        String expectedUrl = driver.getCurrentUrl();
        Assertions.assertEquals(actualUrl, expectedUrl);
    }
}


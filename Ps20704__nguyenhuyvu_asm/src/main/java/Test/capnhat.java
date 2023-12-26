package Test;

import static org.testng.Assert.assertFalse;

import java.io.File;
import java.io.FileOutputStream;
import java.time.Duration;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;


import org.apache.batik.bridge.UserAgent;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import DAO.UserDao;
import Entity.User;

import org.testng.annotations.DataProvider;
import Utils.ExcelUtils;

public class capnhat {
	WebDriver driver;
	Map<String, Object[]> TestNGResults;
	Map<String, Object[]> TestNGDefects;
	Map<String, Object[]> TestNGResultsTitle;
	Map<String, Object[]> TestNGDefectsTitle;
	HSSFWorkbook workbook;
	HSSFSheet sheet;
	HSSFSheet sheet2;
	public static String driverPath = "D:\\Java4\\a\\chromedriver.exe";
	private int rownum = 0, rownumD = 0;
	private String result;
	private String testU;
	private String testP;
	private String testF;
	private String testE;
	private String testR;
	User user = new User();
	UserDao userDao = new UserDao();
	@BeforeClass(alwaysRun = true)
	public void suiteSetUp() {
		workbook = new HSSFWorkbook();
		sheet = workbook.createSheet("TestNg Result Sumary");
		sheet2 = workbook.createSheet("TestNG Defects");
		TestNGResultsTitle = new LinkedHashMap<String, Object[]>();
		TestNGDefectsTitle = new LinkedHashMap<String, Object[]>();
		TestNGResults = new LinkedHashMap<String, Object[]>();
		TestNGDefects = new LinkedHashMap<String, Object[]>();
		TestNGResultsTitle.put("1", new Object[] { "Test Step No.", "Action", "Expected OutPut", "Actual Output" });
		TestNGDefectsTitle.put("1", new Object[] { "Test Step No.", "Action", "Expected OutPut", "Actual Output" });

		Set<String> keyset = TestNGResultsTitle.keySet();
		for (String key : keyset) {
			Row row = sheet.createRow(rownum++);
			Object[] objArr = TestNGResultsTitle.get(key);
			int cellnum = 0;
			for (Object obj : objArr) {
				Cell cell = row.createCell(cellnum++);
				if (obj instanceof Date)
					cell.setCellValue((Date) obj);
				else if (obj instanceof Boolean)
					cell.setCellValue((Boolean) obj);
				else if (obj instanceof String)
					cell.setCellValue((String) obj);
				else if (obj instanceof Double)
					cell.setCellValue((Double) obj);
			}
		}

		Set<String> keyset2 = TestNGDefectsTitle.keySet();
		for (String key : keyset2) {
			Row row = sheet2.createRow(rownumD++);
			Object[] objArr = TestNGDefectsTitle.get(key);
			int cellnum = 0;
			for (Object obj : objArr) {
				Cell cell = row.createCell(cellnum++);
				if (obj instanceof Date)
					cell.setCellValue((Date) obj);
				else if (obj instanceof Boolean)
					cell.setCellValue((Boolean) obj);
				else if (obj instanceof String)
					cell.setCellValue((String) obj);
				else if (obj instanceof Double)
					cell.setCellValue((Double) obj);
			}
		}
		// Browser
		try {
			System.setProperty("webdriver.chrome.driver", driverPath);
			driver = new ChromeDriver();
			driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
			driver.get("http://localhost:8080/Ps20704__nguyenhuyvu_asm/views/quanlyUser");
			driver.manage().window().maximize();
		} catch (Exception e) {
			// TODO: handle exception
			Assert.assertTrue(false);
		}
		}

	@Test(dataProvider = "Authentication", description = "Test Login")
	public void FillLoginDetails(String sUserName, String sPassword,String Fullname,String Email,String Role) throws Exception {
		try {
			driver.findElement(By.id("id")).sendKeys(sUserName);
			driver.findElement(By.id("password")).sendKeys(sPassword);
			driver.findElement(By.id("fullname")).sendKeys(Fullname);
			driver.findElement(By.id("email")).sendKeys(Email);
			if (Role.equalsIgnoreCase("Admin")) {
				driver.findElement(By.id("admin1")).click();
			} else {
				driver.findElement(By.id("admin")).click();
			}
			if(sUserName.isEmpty() || sPassword.isEmpty() || Fullname.isEmpty() || Email.isEmpty()) {
				testU= sUserName;
				user.setId(null);
				testP = sPassword;
				user.setPassword(null);
				testF = Fullname;
				user.setFullname(null);
				testE = Email;
				user.setEmail(null);
				testR = Role;
				user.setAdmin(Boolean.parseBoolean(Role));
				userDao.update(user);
			}else {
				testU = sUserName;
				user.setId(sUserName);
				testP = sPassword;
				user.setPassword(sPassword);
				testF = Fullname;
				user.setFullname(Fullname);
				testE = Email;
				user.setEmail(Email);
				Role = Role;
				user.setAdmin(Boolean.parseBoolean(Role));
				userDao.update(user);
			}
			testU = sUserName;
			testP = sPassword;
			testF=Fullname;
			testE=Email;
			testR=Role;
			driver.findElement(By.name("update")).click();
//			driver.findElement(By.name("reset")).click();
			Thread.sleep(1000);
//			WebElement nameTest = driver.findElement(By.className("delete1233"));
//			result = nameTest.getText();
//			System.out.println(""+result);
//			String s = "chuc mung1";
		result = user.getFullname();
			User expected = userDao.findbyId(Fullname);
			System.out.println("" + result + "     " + expected.getFullname());
			Assert.assertEquals(result, expected.getFullname());
//			Assert.assertTrue(result.contains(s));
			
		} catch (Exception e) {
			// TODO: handle exception
			Assert.assertTrue(false);
		}
	}

//	@Test(description = "Perform", priority = 3)
//	public void DoLogin() throws Exception {
//		try {
//			
//			Thread.sleep(1000);
//			TestNGResults.put("4",
//					new Object[] { 3d, "Click Login and verify welcome  message", "Login success", "Pass" });
//		} catch (Exception e) {
//			// TODO: handle exception
//			TestNGResults.put("4",
//					new Object[] { 3d, "Click Login and verify welcome  message", "Login success", "Fail" });
//			Assert.assertTrue(false);
//		}
//	}

	@DataProvider
	public Object[][] Authentication() throws Exception {
		Object[][] testObjArray = ExcelUtils.getTableArraycapnhatObjects("D:\\Java4\\Ps20704__nguyenhuyvu_asm\\TestDataLogin.xlsx", "Sheet5");
		return (testObjArray);

	}

	@AfterClass
	public void suiteTearDown() {
		try {
			FileOutputStream out = new FileOutputStream(new File("SaveTestNGResultToExcel.xls"));
			workbook.write(out);
			out.close();
			System.out.println("Successfully saved Selenium WebDriver TestNG result to Excel File !!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		driver.close();
		driver.quit();
	}

	void exportResult(Map<String, Object[]> TestNGResult) {
		Set<String> keyset = TestNGResults.keySet();
		for (String key : keyset) {
			Row row = sheet.createRow(rownum++);
			Object[] objArr = TestNGResults.get(key);
			int cellnum = 0;
			for (Object obj : objArr) {
				Cell cell = row.createCell(cellnum++);
				if (obj instanceof Date)
					cell.setCellValue((Date) obj);
				else if (obj instanceof Boolean)
					cell.setCellValue((Boolean) obj);
				else if (obj instanceof String)
					cell.setCellValue((String) obj);
				else if (obj instanceof Double)
					cell.setCellValue((Double) obj);
			}
		}
	}

	void exportDefect(Map<String, Object[]> TestNGDefects) {
		Set<String> keyset = TestNGDefects.keySet();
		for (String key : keyset) {
			Row row = sheet2.createRow(rownumD++);
			Object[] objArr = TestNGDefects.get(key);
			int cellnum = 0;
			for (Object obj : objArr) {
				Cell cell = row.createCell(cellnum++);
				if (obj instanceof Date)
					cell.setCellValue((Date) obj);
				else if (obj instanceof Boolean)
					cell.setCellValue((Boolean) obj);
				else if (obj instanceof String)
					cell.setCellValue((String) obj);
				else if (obj instanceof Double)
					cell.setCellValue((Double) obj);
			}
		}
	}

	@AfterMethod
	public void afterMethod(ITestResult result) {
		try {
			if (result.getStatus() == ITestResult.SUCCESS) {
				TestNGResults.put("1", new Object[] { String.valueOf(rownum), "Sign Up " + rownum, testU, testP,
						testF, testE, testR, "Pass" });
				exportResult(TestNGResults);
			} else if (result.getStatus() == ITestResult.FAILURE) {
				TestNGResults.put("1", new Object[] { String.valueOf(rownum), "Sign Up " + rownum, testU, testP,
						testF, testE, testR, "Fail" });
				TestNGDefects.put("1", new Object[] { String.valueOf(rownumD), "Sign Up " + rownumD, testU, testP,
						testF, testE, testR, "Fail" });
				exportResult(TestNGResults);
				exportDefect(TestNGDefects);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
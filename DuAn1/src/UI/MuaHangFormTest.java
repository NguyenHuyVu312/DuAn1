package UI;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class MuaHangFormTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}
@Test
public void testTongtien() {
	
}
	@Test(expected = Exception.class)
	public void testDelete1() {
		MuaHangForm mh = new MuaHangForm();
		int index = 0;
		mh.delete1(index);
	}

	@Test(expected = Exception.class)
	public void testInsert() {
		MuaHangForm mh = new MuaHangForm();
		int index = 2;
		mh.insert(index);
	}



	@Test(expected = Exception.class)
	public void testDelete1WithNull() {
		MuaHangForm mh = new MuaHangForm();
		mh.delete1((Integer) null);
	}
	@Test
    public void testTongTien1() {
        double soluong = 1.0;
        double gia = 500000.0;
        double expected = 500000.0;
        
        double actual = tongtien1(soluong, gia);
        
        assertEquals(expected, actual,500000);
    }

	private double tongtien1(double soluong, double gia) {
		// TODO Auto-generated method stub
		return 0;
	}
}

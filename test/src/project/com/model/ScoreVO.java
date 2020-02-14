package project.com.model;

public class ScoreVO {
	private String pname;
	private int total;
	private int taste;
	private int price;
	private int distance;
	private int circul;
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getTaste() {
		return taste;
	}
	public void setTaste(int taste) {
		this.taste = taste;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public int getCircul() {
		return circul;
	}
	public void setCircul(int circul) {
		this.circul = circul;
	}
	@Override
	public String toString() {
		return "ScoreVO [pname=" + pname + ", total=" + total + ", taste=" + taste + ", price=" + price + ", distance="
				+ distance + ", circul=" + circul + "]";
	}
	
	
}

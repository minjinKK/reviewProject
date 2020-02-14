package project.com.model;

import java.util.ArrayList;

public interface ScoreDAO {
	public ArrayList<ScoreVO> rateTotal();
	public ArrayList<ScoreVO> rateTaste();
	public ArrayList<ScoreVO> ratePrice();
	public ArrayList<ScoreVO> rateDistance();
	public ArrayList<ScoreVO> rateCircul();
}

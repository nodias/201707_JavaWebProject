package dto;

public class AdMovieDTO {

	private int mov_no;
	private String title;
	private String trailer;
	private String poster;
	private String release;
	private String rtime;
	private String grade;
	private int attd;
	private String summary;
	private double rating;//영화 별점은 점수가 소숫점단위까지 바뀔수 있음을 고려하여 double형으로 함
	private String reg_date;//날짜를 string으로  우선 처리
	private String mod_date;//마찬가지
	private String country;
	
	public int getMov_no() {
		return mov_no;
	}
	public void setMov_no(int mov_no) {
		this.mov_no = mov_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTrailer() {
		return trailer;
	}
	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getRelease() {
		return release;
	}
	public void setRelease(String release) {
		this.release = release;
	}
	public String getRtime() {
		return rtime;
	}
	public void setRtime(String rtime) {
		this.rtime = rtime;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getAttd() {
		return attd;
	}
	public void setAttd(int attd) {
		this.attd = attd;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMod_date() {
		return mod_date;
	}
	public void setMod_date(String mod_date) {
		this.mod_date = mod_date;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		return "AdMovieDTO [mov_no=" + mov_no + ", title=" + title + ", trailer=" + trailer + ", poster=" + poster
				+ ", release=" + release + ", rtime=" + rtime + ", grade=" + grade + ", attd=" + attd + ", summary="
				+ summary + ", rating=" + rating + ", reg_date=" + reg_date + ", mod_date=" + mod_date + ", country="
				+ country + "]";
	}
	
	
	
}

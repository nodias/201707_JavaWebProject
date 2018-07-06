package dto;

public class MemberDto {
    String id;
    String pw;
    String name;
    String img;
    String reg_date;
    String mod_date;
    String grade;
    String token;
    String likeGenre;

    public String getId() {
	return id;
    }

    public void setId(String id) {
	this.id = id;
    }

    public String getPw() {
	return pw;
    }

    public void setPw(String pw) {
	this.pw = pw;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getImg() {
	return img;
    }

    public void setImg(String img) {
	this.img = img;
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

    public String getGrade() {
	return grade;
    }

    public void setGrade(String grade) {
	this.grade = grade;
    }

    public String getToken() {
	return token;
    }

    public void setToken(String token) {
	this.token = token;
    }

    public String getLikeGenre() {
        return likeGenre;
    }

    public void setLikeGenre(String likeGenre) {
        this.likeGenre = likeGenre;
    }

    public void setLikeGenre(int i) {
    }

    

}

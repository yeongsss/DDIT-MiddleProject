package ddit.vo;

public class SanctionDocumentVO {
    private int san_no;
    private String san_title;
	private String san_nm;
	private String san_write_date;
	private String san_conf_date;
	private String san_content;
	private String san_deadline;
	private String san_status;
	private String mem_nm1;
	private String dept_nm1;
	private String posi_nm1;
	private String mem_nm2;
	private String mem_nm3;
	private int mem_no1;
	private int mem_no2;
	private int mem_no3;
	
	
	public SanctionDocumentVO() {}

	public SanctionDocumentVO(int san_no, String san_title, String san_nm, String san_write_date, String san_conf_date,
			String san_content, String san_deadline, String san_status, String mem_nm, String dept_nm, String posi_nm) {
		this.san_no = san_no;
		this.san_title = san_title;
		this.san_nm = san_nm;
		this.san_write_date = san_write_date;
		this.san_conf_date = san_conf_date;
		this.san_content = san_content;
		this.san_deadline = san_deadline;
		this.san_status = san_status;
		this.mem_nm1 = mem_nm;
		this.dept_nm1 = dept_nm;
		this.posi_nm1 = posi_nm;
	}
	


	public int getMem_no1() {
		return mem_no1;
	}

	public void setMem_no1(int mem_no1) {
		this.mem_no1 = mem_no1;
	}

	public int getMem_no2() {
		return mem_no2;
	}

	public void setMem_no2(int mem_no2) {
		this.mem_no2 = mem_no2;
	}

	public int getMem_no3() {
		return mem_no3;
	}

	public void setMem_no3(int mem_no3) {
		this.mem_no3 = mem_no3;
	}

	public String getMem_nm2() {
		return mem_nm2;
	}

	public void setMem_nm2(String mem_nm2) {
		this.mem_nm2 = mem_nm2;
	}

	public String getMem_nm3() {
		return mem_nm3;
	}

	public void setMem_nm3(String mem_nm3) {
		this.mem_nm3 = mem_nm3;
	}

	public int getSan_no() {
		return san_no;
	}

	public void setSan_no(int san_no) {
		this.san_no = san_no;
	}

	public String getSan_title() {
		return san_title;
	}

	public void setSan_title(String san_title) {
		this.san_title = san_title;
	}

	public String getSan_nm() {
		return san_nm;
	}

	public void setSan_nm(String san_nm) {
		this.san_nm = san_nm;
	}

	public String getSan_write_date() {
		return san_write_date;
	}

	public void setSan_write_date(String san_write_date) {
		this.san_write_date = san_write_date;
	}

	public String getSan_conf_date() {
		return san_conf_date;
	}

	public void setSan_conf_date(String san_conf_date) {
		this.san_conf_date = san_conf_date;
	}

	public String getSan_content() {
		return san_content;
	}

	public void setSan_content(String san_content) {
		this.san_content = san_content;
	}

	public String getSan_deadline() {
		return san_deadline;
	}

	public void setSan_deadline(String san_deadline) {
		this.san_deadline = san_deadline;
	}

	public String getSan_status() {
		return san_status;
	}

	public void setSan_status(String san_status) {
		this.san_status = san_status;
	}

	public String getMem_nm() {
		return mem_nm1;
	}

	public void setMem_nm(String mem_nm) {
		this.mem_nm1 = mem_nm;
	}

	public String getDept_nm() {
		return dept_nm1;
	}

	public void setDept_nm(String dept_nm) {
		this.dept_nm1 = dept_nm;
	}

	public String getPosi_nm() {
		return posi_nm1;
	}

	public void setPosi_nm(String posi_nm) {
		this.posi_nm1 = posi_nm;
	}

	@Override
	public String toString() {
		return "SanctionDocumentVO [san_no=" + san_no + ", san_title=" + san_title + ", san_nm=" + san_nm
				+ ", san_write_date=" + san_write_date + ", san_conf_date=" + san_conf_date + ", san_content="
				+ san_content + ", san_deadline=" + san_deadline + ", san_status=" + san_status + ", mem_nm=" + mem_nm1
				+ ", dept_nm=" + dept_nm1 + ", posi_nm=" + posi_nm1 + "]";
	}

}
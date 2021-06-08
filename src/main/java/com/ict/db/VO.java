package com.ict.db;

public class VO {
	// DB의 컬러명과 변수명이 같아야 한다.
		private String idx, id, pw, name, age, addr, reg;

		public String getIdx() {
			return idx;
		}

		public void setIdx(String idx) {
			this.idx = idx;
		}

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

		public String getAge() {
			return age;
		}

		public void setAge(String age) {
			this.age = age;
		}

		public String getAddr() {
			return addr;
		}

		public void setAddr(String addr) {
			this.addr = addr;
		}

		public String getReg() {
			return reg;
		}

		public void setReg(String reg) {
			this.reg = reg;
		}
		
		//생성자가 필요하면 만들고 필요하지않으면 만들지않아도된다
		
		
}

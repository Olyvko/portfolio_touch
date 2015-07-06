package com.mkyong.cool;

public class ContactOutput {

	public Contact one = new Contact();
	public Contact two = new Contact();
	

	public ContactOutput(Contact o,Contact t) {
		this.one = o;
		this.two = t;
		
	}

	public Contact getOne() {
		return one;
	}



	public void setOne(Contact one) {
		this.one = one;
	}



	public Contact getTwo() {
		return two;
	}



	public void setTwo(Contact two) {
		this.two = two;
	}
	
}

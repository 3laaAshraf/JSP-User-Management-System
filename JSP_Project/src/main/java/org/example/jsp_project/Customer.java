package org.example.jsp_project;

public class Customer {
    private int id;
    private String fullName;
    private String email;
    private String phone;
    private String country;
    private String gender;

    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }
    //=========================================================
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getFullName() {
        return fullName;
    }
    //=========================================================
    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }
    //=========================================================
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getPhone() {
        return phone;
    }
    //=========================================================
    public void setCountry(String country) {
        this.country = country;
    }
    public String getCountry() {
        return country;
    }
    //=========================================================
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getGender() {
        return gender;
    }

}

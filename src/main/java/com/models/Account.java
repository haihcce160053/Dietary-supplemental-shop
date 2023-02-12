package com.models;

/**
 *
 * @author huynh chi hai
 */
public class Account {
    private String Username;
    private String Password;
    private String SecurityAnswer;
    private String Fullname;
    private String PhoneNumber;
    private String Gender;
    private String Email;

    public Account() {
    }

    public Account(String Username, String Password, String SecurityAnswer, String Fullname, String PhoneNumber, String Gender, String Email) {
        this.Username = Username;
        this.Password = Password;
        this.SecurityAnswer = SecurityAnswer;
        this.Fullname = Fullname;
        this.PhoneNumber = PhoneNumber;
        this.Gender = Gender;
        this.Email = Email;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getSecurityAnswer() {
        return SecurityAnswer;
    }

    public void setSecurityAnswer(String SecurityAnswer) {
        this.SecurityAnswer = SecurityAnswer;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
}

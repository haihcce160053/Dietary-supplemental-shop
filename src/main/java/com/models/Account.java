package com.models;

/**
 *
 * @author Huynh Chi Hai
 */
public class Account {
    private String Username;
    private String Password;
    private String SecurityAnswer;
    private String Fullname;
    private String PhoneNumber;
    private String Gender;
    private String Email;
    private String AccountTypeId;

    /**
     *
     */
    public Account() {
    }

    /**
     *
     * @param Username
     * @param Password
     * @param SecurityAnswer
     * @param Fullname
     * @param PhoneNumber
     * @param Gender
     * @param Email
     * @param AccountTypeId
     */
    public Account(String Username, String Password, String SecurityAnswer, String Fullname, String PhoneNumber, String Gender, String Email, String AccountTypeId) {
        this.Username = Username;
        this.Password = Password;
        this.SecurityAnswer = SecurityAnswer;
        this.Fullname = Fullname;
        this.PhoneNumber = PhoneNumber;
        this.Gender = Gender;
        this.Email = Email;
        this.AccountTypeId = AccountTypeId;
    }

    /**
     *
     * @return
     */
    public String getUsername() {
        return Username;
    }

    /**
     *
     * @param Username
     */
    public void setUsername(String Username) {
        this.Username = Username;
    }

    /**
     *
     * @return
     */
    public String getPassword() {
        return Password;
    }

    /**
     *
     * @param Password
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }

    /**
     *
     * @return
     */
    public String getSecurityAnswer() {
        return SecurityAnswer;
    }

    /**
     *
     * @param SecurityAnswer
     */
    public void setSecurityAnswer(String SecurityAnswer) {
        this.SecurityAnswer = SecurityAnswer;
    }

    /**
     *
     * @return
     */
    public String getFullname() {
        return Fullname;
    }

    /**
     *
     * @param Fullname
     */
    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    /**
     *
     * @return
     */
    public String getPhoneNumber() {
        return PhoneNumber;
    }

    /**
     *
     * @param PhoneNumber
     */
    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    /**
     *
     * @return
     */
    public String getGender() {
        return Gender;
    }

    /**
     *
     * @param Gender
     */
    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    /**
     *
     * @return
     */
    public String getEmail() {
        return Email;
    }

    /**
     *
     * @param Email
     */
    public void setEmail(String Email) {
        this.Email = Email;
    }

    /**
     *
     * @return
     */
    public String getAccountTypeId() {
        return AccountTypeId;
    }

    /**
     *
     * @param AccountTypeId
     */
    public void setAccountTypeId(String AccountTypeId) {
        this.AccountTypeId = AccountTypeId;
    }
    
   
    
}

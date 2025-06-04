package com.example.demo.pojo.dto;

import java.time.LocalDate;

public class UserDTO {

    private Integer userid;
    private String nickname;
    private String password;
    private String phoneNumber;
    private LocalDate birthdate;
    private String avatar;

    public LocalDate getBirthdate() {
        return  birthdate;
    }

    public void setBirthdate(LocalDate birthdate) {
        this. birthdate = birthdate;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}

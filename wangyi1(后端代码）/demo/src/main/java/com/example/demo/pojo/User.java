package com.example.demo.pojo;


import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userid;
    private String nickname;
    private String password;
    private String phoneNumber;
    private LocalDate  birthdate;
    private Integer followArtists;
    private Integer follower;
    private String location;
    @Column(name = "is_vip")
    private Boolean vip;
    private String avatar;
    private Integer grade;
    private String registerDate;


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

    public LocalDate getBirthdate() {
        return  birthdate;
    }

    public void setBirthdate(LocalDate birthdate) {
        this. birthdate = birthdate;
    }

    public Integer getFollowArtists() {
        return followArtists;
    }

    public void setFollowArtists(Integer followArtists) {
        this.followArtists = followArtists;
    }

    public Integer getFollower() {
        return follower;
    }

    public void setFollower(Integer follower) {
        this.follower = follower;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Boolean getVip() {
        return vip;
    }

    public void setVip(Boolean vip) {
        this.vip = vip;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(String registerDate) {
        this.registerDate = registerDate;
    }
}
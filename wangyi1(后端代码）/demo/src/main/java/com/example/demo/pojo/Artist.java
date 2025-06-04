package com.example.demo.pojo;

import com.alibaba.druid.sql.visitor.functions.Char;
import jakarta.persistence.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
public class Artist {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer artistid;
    private String artistname;
    private LocalDate birthday;
    private String bio;
    private String artistImg;
    private Integer artistFollow;
    private Integer artistLike;
    private String tags;
    private String gender;
    private String nationality;

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public Integer getArtistid() {
        return artistid;
    }

    public void setArtistid(Integer artistid) {
        this.artistid = artistid;
    }

    public String getArtistname() {
        return artistname;
    }

    public void setArtistname(String artistname) {
        this.artistname = artistname;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getArtistImg() {
        return artistImg;
    }

    public void setArtistImg(String artistImg) {
        this.artistImg = artistImg;
    }

    public Integer getArtistFollow() {
        return artistFollow;
    }

    public void setArtistFollow(Integer artistFollow) {
        this.artistFollow = artistFollow;
    }

    public Integer getArtistLike() {
        return artistLike;
    }

    public void setArtistLike(Integer artistLike) {
        this.artistLike = artistLike;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }


}

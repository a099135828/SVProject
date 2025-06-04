package com.example.demo.pojo;

import com.example.demo.pojo.dto.SongDTO;
import jakarta.persistence.*;

import java.time.LocalDateTime;
@Entity //通常与关系映射（ORM）框架一起使用，告诉ORM框架，这个类代表一个数据库表，并且类的属性映射到表中的列。
@SqlResultSetMapping(
        name = "SongRecommendDTOMapping",
        classes = @ConstructorResult(
                targetClass = SongDTO.class,
                columns = {
                        @ColumnResult(name = "songname", type = String.class),
                        @ColumnResult(name = "songImg", type = String.class),
                        @ColumnResult(name = "artistname", type = String.class),
                        @ColumnResult(name = "albumname", type = String.class)
                }
        )
)
public class Song {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer songid;

    private String songname;

    private Integer artistid;

    private Integer albumid;

    private Integer threeDaysViews;

    private Integer listenTimes;

    private Integer likeNum;

    private String songImg;

    private Integer reviews;

    private String tags;

    @Column(name = "is_original")
    private Boolean original;

    @Column(name = "is_original_singer")
    private Boolean originalSinger;

    @Column(name = "is_vip")
    private Boolean vip;


    private String source;



    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public Integer getSongid() {
        return songid;
    }

    public void setSongid(Integer songid) {
        this.songid = songid;
    }

    public String getSongname() {
        return songname;
    }

    public void setSongname(String songname) {
        this.songname = songname;
    }

    public Integer getArtistid() {
        return artistid;
    }

    public void setArtistid(Integer artistid) {
        this.artistid = artistid;
    }

    public Integer getAlbumid() {
        return albumid;
    }

    public void setAlbumid(Integer albumid) {
        this.albumid = albumid;
    }

    public Integer getThreeDaysViews() {
        return threeDaysViews;
    }

    public void setThreeDaysViews(Integer threeDaysViews) {
        this.threeDaysViews = threeDaysViews;
    }

    public Integer getListenTimes() {
        return listenTimes;
    }

    public void setListenTimes(Integer listenTimes) {
        this.listenTimes = listenTimes;
    }

    public Integer getLikeNum() {
        return likeNum;
    }

    public void setLikeNum(Integer likeNum) {
        this.likeNum = likeNum;
    }

    public String getSongImg() {
        return songImg;
    }

    public void setSongImg(String songImg) {
        this.songImg = songImg;
    }

    public Integer getReviews() {
        return reviews;
    }

    public void setReviews(Integer reviews) {
        this.reviews = reviews;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public Boolean getOriginal() {
        return original;
    }

    public void setOriginal(Boolean original) {
        this.original = original;
    }

    public Boolean getOriginalSinger() {
        return originalSinger;
    }

    public void setOriginalSinger(Boolean originalSinger) {
        this.originalSinger = originalSinger;
    }

    public Boolean getVip() {
        return vip;
    }

    public void setVip(Boolean vip) {
        this.vip = vip;
    }

}

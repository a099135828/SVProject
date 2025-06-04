package com.example.demo.pojo.dto;

import java.beans.ConstructorProperties;

public class PlayListDTO {

    private Integer playlistId;
    private String img;
    private String playlistName;
    private Integer songid;

    private String songname;

    private String songImg;

    private String artistname;

    private String albumname;

    private String source;
    private Integer listenTimes;

    @ConstructorProperties({"playlist_id","img","playlistName","songid","songname", "song_img", "artistname", "albumname","source","listen_times"})
    public PlayListDTO(Integer playlistId,String img,String playlistName,Integer songid,String songname, String song_img, String artistname, String albumname,String source,Integer listenTimes){
        this.playlistId=playlistId;
        this.img=img;
        this.playlistName=playlistName;

        this.songid = songid;
        this.songname = songname;
        this.songImg = song_img;
        this.artistname = artistname;
        this.albumname = albumname;
        this.source = source;
        this.listenTimes=listenTimes;


    }

    public Integer getPlaylistId() {
        return playlistId;
    }

    public void setPlaylistId(Integer playlistId) {
        this.playlistId = playlistId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPlaylistName() {
        return playlistName;
    }

    public void setPlaylistName(String playlistName) {
        this.playlistName = playlistName;
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

    public String getSongImg() {
        return songImg;
    }

    public void setSongImg(String songImg) {
        this.songImg = songImg;
    }

    public String getArtistname() {
        return artistname;
    }

    public void setArtistname(String artistname) {
        this.artistname = artistname;
    }

    public String getAlbumname() {
        return albumname;
    }

    public void setAlbumname(String albumname) {
        this.albumname = albumname;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public Integer getListenTimes() {
        return listenTimes;
    }

    public void setListenTimes(Integer listenTimes) {
        this.listenTimes = listenTimes;
    }
}

package com.example.demo.pojo.dto;

import jakarta.persistence.*;

@Entity
@Table(name = "playlist_song")
public class PlayListSongDTO {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "playlist_song_id")
        private Integer id;

        private Integer playlistId;

        private Integer songid;

    public PlayListSongDTO(Integer id, Integer playlistId, Integer songid) {
        this.id = id;
        this.playlistId = playlistId;
        this.songid = songid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPlaylistId() {
        return playlistId;
    }

    public void setPlaylistId(Integer playlistId) {
        this.playlistId = playlistId;
    }

    public Integer getSongid() {
        return songid;
    }

    public void setSongid(Integer songid) {
        this.songid = songid;
    }
}

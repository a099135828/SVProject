package com.example.demo.service.serviceImp;

import com.example.demo.mapper.PlayListSongMapper;
import com.example.demo.pojo.dto.PlayListSongDTO;
import com.example.demo.service.IPlayListSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlayListSongService implements IPlayListSongService {

    @Autowired
    private PlayListSongMapper playListSongMapper;

    // 往歌单里面添加歌曲
    public PlayListSongDTO addPlayListSong(PlayListSongDTO playListSongDTO) {
        playListSongMapper.insert(playListSongDTO);
        return playListSongDTO;
    }

    public PlayListSongDTO findPlaylistById(Integer songid, Integer playlistId) {
        return playListSongMapper.findBySongidAndPlaylistId(songid, playlistId);
    }

    public void deletePlayListSong(Integer songid, Integer playlistId) {
        PlayListSongDTO playListSongDTO = playListSongMapper.findBySongidAndPlaylistId(songid, playlistId);

        if (playListSongDTO != null) {
            playListSongMapper.deleteBySongidAndPlaylistId(songid, playlistId);
        }
    }
}

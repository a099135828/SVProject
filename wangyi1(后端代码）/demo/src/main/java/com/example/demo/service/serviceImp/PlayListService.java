package com.example.demo.service.serviceImp;


import com.example.demo.mapper.PlayListMapper;
import com.example.demo.pojo.PlayList;
import com.example.demo.service.IPlayListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlayListService implements IPlayListService {
    @Autowired
    private PlayListMapper playListMapper;

    public PlayList addPlayList(PlayList playList) {
        playListMapper.insert(playList);
        return playList;
    }

    public void delete(Integer playlistId) {
        playListMapper.deleteById(playlistId);
    }
}

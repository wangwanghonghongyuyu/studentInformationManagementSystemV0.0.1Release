package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.NoticeEntity;
import com.edu.smsys.dao.mapper.NoticeEntityMapper;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class NoticeService implements BaseService<NoticeEntity> {

    @Autowired
    private NoticeEntityMapper noticeEntityMapper;

    /**
     *查询所有通知
     * @return
     */
    @Override
    public List<NoticeEntity> findAll() {
        return noticeEntityMapper.queryNotices();
    }

    /**
     *查询通知根据通知id
     * @param id
     * @return
     */
    @Override
    public NoticeEntity findEntityById(int id) {
        return noticeEntityMapper.queryNoticeById(id);
    }

    /**
     *查询通知根据通知
     * @param entity
     * @return
     */
    @Override
    public List<NoticeEntity> findEntity(NoticeEntity entity) {
        return noticeEntityMapper.queryNoticeByNotice(entity);
    }

    /**
     *修改通知信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(NoticeEntity entity) {
        return noticeEntityMapper.updateNoticeById(entity);
    }

    /**
     *插入通知信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(NoticeEntity entity) {
        return noticeEntityMapper.insertNotice(entity);
    }

    /**
     * 删除通知根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return noticeEntityMapper.deleteNoticeById(id);
    }
}

package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.NoticeEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 通知映射器
 */
public interface NoticeEntityMapper {
    /**
     * 查询所有通知
     * @return
     */
    public List<NoticeEntity> queryNotices();

    /**
     * 查询通知根据通知id
     * @param id 通知id
     * @return
     */
    public NoticeEntity queryNoticeById(@Param("id") int id);

    /**
     * 查询通知根据通知实体
     * 可多条件查询不过返回的是一个List集合
     * @param noticeEntity 通知实体
     * @return
     */
    public List<NoticeEntity> queryNoticeByNotice(NoticeEntity noticeEntity);

    /**
     * 修改通知信息
     * 修改一个值的时候也可以调用该方法
     * 在执行sql的时候进行了判空操作
     * @param noticeEntity
     * @return
     */
    public  int updateNoticeById(NoticeEntity noticeEntity);

    /**
     * 插入通知信息
     * @param noticeEntity
     * @return
     */
    public int insertNotice(NoticeEntity noticeEntity);

    /**
     * 删除通知根据id
     * @param id
     * @return
     */
    public int deleteNoticeById(@Param("id") int id);
}

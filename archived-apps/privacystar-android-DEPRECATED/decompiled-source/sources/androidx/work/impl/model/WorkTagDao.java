package androidx.work.impl.model;

import android.arch.persistence.room.Dao;
import android.arch.persistence.room.Insert;
import android.arch.persistence.room.Query;
import java.util.List;
@Dao
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkTagDao.class */
public interface WorkTagDao {
    @Query("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=:id")
    List<String> getTagsForWorkSpecId(String str);

    @Query("SELECT work_spec_id FROM worktag WHERE tag=:tag")
    List<String> getWorkSpecIdsWithTag(String str);

    @Insert(onConflict = 5)
    void insert(WorkTag workTag);
}

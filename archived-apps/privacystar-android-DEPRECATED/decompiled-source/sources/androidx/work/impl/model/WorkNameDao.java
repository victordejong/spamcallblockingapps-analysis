package androidx.work.impl.model;

import android.arch.persistence.room.Dao;
import android.arch.persistence.room.Insert;
import android.arch.persistence.room.Query;
import java.util.List;
@Dao
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkNameDao.class */
public interface WorkNameDao {
    @Query("SELECT work_spec_id FROM workname WHERE name=:name")
    List<String> getWorkSpecIdsWithName(String str);

    @Insert(onConflict = 5)
    void insert(WorkName workName);
}

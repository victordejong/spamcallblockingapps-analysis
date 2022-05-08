package androidx.work.impl.model;

import android.arch.persistence.room.ColumnInfo;
import android.arch.persistence.room.Entity;
import android.arch.persistence.room.ForeignKey;
import android.arch.persistence.room.Index;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
@Entity(foreignKeys = {@ForeignKey(childColumns = {"work_spec_id"}, entity = WorkSpec.class, onDelete = 5, onUpdate = 5, parentColumns = {"id"})}, indices = {@Index({"work_spec_id"})}, primaryKeys = {"name", "work_spec_id"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/WorkName.class */
public class WorkName {
    @ColumnInfo(name = "name")
    @NonNull
    public final String name;
    @ColumnInfo(name = "work_spec_id")
    @NonNull
    public final String workSpecId;

    public WorkName(@NonNull String str, @NonNull String str2) {
        this.name = str;
        this.workSpecId = str2;
    }
}

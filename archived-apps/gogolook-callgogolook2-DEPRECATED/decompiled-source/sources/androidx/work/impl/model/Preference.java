package androidx.work.impl.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.Person;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
@Entity
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/Preference.class */
public class Preference {
    @NonNull
    @PrimaryKey
    @ColumnInfo(name = Person.KEY_KEY)
    public String mKey;
    @Nullable
    @ColumnInfo(name = "long_value")
    public Long mValue;

    public Preference(@NonNull String str, long j) {
        this.mKey = str;
        this.mValue = Long.valueOf(j);
    }

    public Preference(@NonNull String str, boolean z) {
        this(str, z ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        if (!this.mKey.equals(preference.mKey)) {
            return false;
        }
        Long l = this.mValue;
        Long l2 = preference.mValue;
        if (l != null) {
            z = l.equals(l2);
        } else if (l2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.mKey.hashCode();
        Long l = this.mValue;
        return (hashCode * 31) + (l != null ? l.hashCode() : 0);
    }
}

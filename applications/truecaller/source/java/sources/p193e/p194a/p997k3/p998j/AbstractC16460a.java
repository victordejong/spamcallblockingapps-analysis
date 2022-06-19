package p193e.p194a.p997k3.p998j;

import android.database.Cursor;
import com.truecaller.data.entity.Entity;
/* renamed from: e.a.k3.j.a */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/a.class */
public abstract class AbstractC16460a<T extends Entity> {
    /* renamed from: a */
    public String m17374a(Cursor cursor, int i) {
        return (i == -1 || cursor.isNull(i)) ? null : cursor.getString(i);
    }

    /* renamed from: b */
    public int m17373b(Cursor cursor, String... strArr) {
        for (String str : strArr) {
            int columnIndex = cursor.getColumnIndex(str);
            if (columnIndex != -1) {
                return columnIndex;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public Integer m17372c(Cursor cursor, int i) {
        return (i == -1 || cursor.isNull(i)) ? null : Integer.valueOf(cursor.getInt(i));
    }

    /* renamed from: d */
    public Long m17371d(Cursor cursor, int i) {
        return (i == -1 || cursor.isNull(i)) ? null : Long.valueOf(cursor.getLong(i));
    }

    /* renamed from: e */
    public int m17370e(Cursor cursor, int i) {
        return (i == -1 || cursor.isNull(i)) ? 0 : cursor.getInt(i);
    }
}

package p131c.p161d.p170b.p188c.p207t0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.database.DatabaseIOException;
/* renamed from: c.d.b.c.t0.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/t0/b.class */
public final class C3008b {
    /* renamed from: a */
    public static int m28167a(SQLiteDatabase sQLiteDatabase, int i, String str) throws DatabaseIOException {
        try {
            if (!m28165a(sQLiteDatabase, "ExoPlayerVersions")) {
                return -1;
            }
            Cursor query = sQLiteDatabase.query("ExoPlayerVersions", new String[]{"version"}, "feature = ? AND instance_uid = ?", m28168a(i, str), null, null, null);
            if (query.getCount() != 0) {
                query.moveToNext();
                int i2 = query.getInt(0);
                if (query != null) {
                    query.close();
                }
                return i2;
            } else if (query == null) {
                return -1;
            } else {
                query.close();
                return -1;
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public static void m28166a(SQLiteDatabase sQLiteDatabase, int i, String str, int i2) throws DatabaseIOException {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))");
            ContentValues contentValues = new ContentValues();
            contentValues.put("feature", Integer.valueOf(i));
            contentValues.put("instance_uid", str);
            contentValues.put("version", Integer.valueOf(i2));
            sQLiteDatabase.replaceOrThrow("ExoPlayerVersions", null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public static boolean m28165a(SQLiteDatabase sQLiteDatabase, String str) {
        boolean z = true;
        if (DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) <= 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static String[] m28168a(int i, String str) {
        return new String[]{Integer.toString(i), str};
    }

    /* renamed from: b */
    public static void m28164b(SQLiteDatabase sQLiteDatabase, int i, String str) throws DatabaseIOException {
        try {
            if (m28165a(sQLiteDatabase, "ExoPlayerVersions")) {
                sQLiteDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", m28168a(i, str));
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}

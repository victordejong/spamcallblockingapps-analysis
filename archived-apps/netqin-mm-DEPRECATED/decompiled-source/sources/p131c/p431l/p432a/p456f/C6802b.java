package p131c.p431l.p432a.p456f;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: c.l.a.f.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/f/b.class */
public class C6802b {

    /* renamed from: d */
    public static final Object f20940d = new Object();

    /* renamed from: a */
    public SQLiteDatabase f20941a;

    /* renamed from: b */
    public String f20942b;

    /* renamed from: c */
    public SQLiteOpenHelper f20943c;

    public C6802b(SQLiteOpenHelper sQLiteOpenHelper, String str) {
        this.f20943c = sQLiteOpenHelper;
        this.f20942b = str;
        if (sQLiteOpenHelper != null) {
            m19757b();
        }
    }

    /* renamed from: a */
    public int m19760a(ContentValues contentValues, String str, String[] strArr) throws SQLException {
        int update;
        m19757b();
        synchronized (f20940d) {
            update = this.f20941a.update(this.f20942b, contentValues, str, strArr);
        }
        return update;
    }

    /* renamed from: a */
    public int m19759a(String str, String[] strArr) throws SQLException {
        int delete;
        m19757b();
        synchronized (f20940d) {
            delete = this.f20941a.delete(this.f20942b, str, strArr);
        }
        return delete;
    }

    /* renamed from: a */
    public long m19761a(ContentValues contentValues) throws SQLException {
        long insert;
        m19757b();
        synchronized (f20940d) {
            DatabaseUtils.InsertHelper insertHelper = new DatabaseUtils.InsertHelper(this.f20941a, this.f20942b);
            insertHelper.prepareForInsert();
            insert = insertHelper.insert(contentValues);
        }
        return insert;
    }

    /* renamed from: a */
    public Cursor m19758a(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4) throws SQLException {
        m19757b();
        return this.f20941a.query(this.f20942b, strArr, str, strArr2, str2, str3, str4);
    }

    /* renamed from: a */
    public void m19762a() {
        SQLiteDatabase sQLiteDatabase = this.f20941a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.beginTransaction();
        }
    }

    /* renamed from: b */
    public final void m19757b() {
        try {
            if ((this.f20941a == null || !this.f20941a.isOpen()) && this.f20943c != null) {
                SQLiteDatabase writableDatabase = this.f20943c.getWritableDatabase();
                this.f20941a = writableDatabase;
                writableDatabase.setLockingEnabled(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m19756c() {
        SQLiteDatabase sQLiteDatabase = this.f20941a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.endTransaction();
        }
    }

    /* renamed from: d */
    public void m19755d() {
        SQLiteDatabase sQLiteDatabase = this.f20941a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.setTransactionSuccessful();
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        this.f20941a.close();
        this.f20941a = null;
        this.f20943c = null;
    }
}

package p131c.p431l.p432a.p456f;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mopub.mobileads.VastIconXmlManager;
/* renamed from: c.l.a.f.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/f/a.class */
public class C6801a extends SQLiteOpenHelper {

    /* renamed from: a */
    public static final String f20936a;

    /* renamed from: b */
    public static final String f20937b;

    /* renamed from: c */
    public static final String f20938c;

    /* renamed from: d */
    public static C6801a f20939d = null;

    static {
        StringBuffer stringBuffer = new StringBuffer("create table if not exists  ");
        stringBuffer.append("nq_black_white");
        stringBuffer.append("(");
        stringBuffer.append("_id");
        stringBuffer.append(" integer primary key autoincrement ");
        stringBuffer.append(",");
        stringBuffer.append("type");
        stringBuffer.append(" integer ");
        stringBuffer.append(",");
        stringBuffer.append("name");
        stringBuffer.append(" text ");
        stringBuffer.append(",");
        stringBuffer.append("reverse");
        stringBuffer.append(" text ");
        stringBuffer.append(",");
        stringBuffer.append("address");
        stringBuffer.append(" text not null ");
        stringBuffer.append(");");
        f20936a = stringBuffer.toString();
        StringBuffer stringBuffer2 = new StringBuffer("create table if not exists  ");
        stringBuffer2.append("nq_calllog");
        stringBuffer2.append("(");
        stringBuffer2.append("_id");
        stringBuffer2.append(" integer primary key autoincrement ");
        stringBuffer2.append(",");
        stringBuffer2.append("type");
        stringBuffer2.append(" integer default 1 ");
        stringBuffer2.append(",");
        stringBuffer2.append(VastIconXmlManager.DURATION);
        stringBuffer2.append(" integer ");
        stringBuffer2.append(",");
        stringBuffer2.append("read");
        stringBuffer2.append(" integer default 0 ");
        stringBuffer2.append(",");
        stringBuffer2.append("date");
        stringBuffer2.append(" integer ");
        stringBuffer2.append(",");
        stringBuffer2.append("name");
        stringBuffer2.append(" text ");
        stringBuffer2.append(",");
        stringBuffer2.append("reverse");
        stringBuffer2.append(" text ");
        stringBuffer2.append(",");
        stringBuffer2.append("address");
        stringBuffer2.append(" text not null ");
        stringBuffer2.append(",");
        stringBuffer2.append("block_mode");
        stringBuffer2.append(" text not null ");
        stringBuffer2.append(",");
        stringBuffer2.append("location");
        stringBuffer2.append(" text ");
        stringBuffer2.append(");");
        f20937b = stringBuffer2.toString();
        StringBuffer stringBuffer3 = new StringBuffer("create table if not exists  ");
        stringBuffer3.append("nq_sms");
        stringBuffer3.append("(");
        stringBuffer3.append("_id");
        stringBuffer3.append(" integer primary key autoincrement ");
        stringBuffer3.append(",");
        stringBuffer3.append("type");
        stringBuffer3.append(" integer default 0 ");
        stringBuffer3.append(",");
        stringBuffer3.append("read");
        stringBuffer3.append(" integer default 0 ");
        stringBuffer3.append(",");
        stringBuffer3.append("date");
        stringBuffer3.append(" integer ");
        stringBuffer3.append(",");
        stringBuffer3.append("threadId");
        stringBuffer3.append(" integer not null");
        stringBuffer3.append(",");
        stringBuffer3.append("name");
        stringBuffer3.append(" text ");
        stringBuffer3.append(",");
        stringBuffer3.append("reverse");
        stringBuffer3.append(" text ");
        stringBuffer3.append(",");
        stringBuffer3.append("body");
        stringBuffer3.append(" text ");
        stringBuffer3.append(",");
        stringBuffer3.append("block_mode");
        stringBuffer3.append(" text not null ");
        stringBuffer3.append(",");
        stringBuffer3.append("address");
        stringBuffer3.append(" text not null ");
        stringBuffer3.append(");");
        f20938c = stringBuffer3.toString();
    }

    public C6801a(Context context) {
        super(context, "nq_antiharass.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    /* renamed from: a */
    public static C6801a m19763a(Context context) {
        C6801a aVar;
        synchronized (C6801a.class) {
            try {
                if (f20939d == null) {
                    f20939d = new C6801a(context);
                }
                aVar = f20939d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            sQLiteDatabase.execSQL(f20936a);
            sQLiteDatabase.execSQL(f20937b);
            sQLiteDatabase.execSQL(f20938c);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (sQLiteDatabase != null && i2 > i) {
            onCreate(sQLiteDatabase);
        }
    }
}

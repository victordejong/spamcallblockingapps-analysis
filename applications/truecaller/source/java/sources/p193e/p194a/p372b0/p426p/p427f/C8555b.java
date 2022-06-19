package p193e.p194a.p372b0.p426p.p427f;

import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8473c;
/* renamed from: e.a.b0.p.f.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/f/b.class */
public class C8555b extends AbstractC8473c {

    /* renamed from: c */
    public static final AbstractC8473c.C8474a[] f26359c = {new AbstractC8473c.C8474a("_id", "INTEGER PRIMARY KEY"), new AbstractC8473c.C8474a("number", "TEXT", true), new AbstractC8473c.C8474a(AnalyticsConstants.NAME, "TEXT"), new AbstractC8473c.C8474a("type", "INTEGER")};

    public C8555b() {
        super("name_suggestions", f26359c);
    }

    @Override // p193e.p194a.p372b0.p413i.p415f.AbstractC8473c
    /* renamed from: b */
    public void mo28391b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 2) {
            m28494a(sQLiteDatabase);
        }
    }
}

package p193e.p194a.p372b0.p426p.p427f;

import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8473c;
/* renamed from: e.a.b0.p.f.e */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/f/e.class */
public class C8558e extends AbstractC8473c {

    /* renamed from: c */
    public static final AbstractC8473c.C8474a[] f26364c = {new AbstractC8473c.C8474a("_id", "INTEGER PRIMARY KEY"), new AbstractC8473c.C8474a("normalized_number", "TEXT", true), new AbstractC8473c.C8474a("tag_id", "INTEGER"), new AbstractC8473c.C8474a("tag_id_2", "INTEGER"), new AbstractC8473c.C8474a(AnalyticsConstants.CONTEXT, "INTEGER"), new AbstractC8473c.C8474a("search_type", "INTEGER"), new AbstractC8473c.C8474a("timestamp", "INTEGER")};

    public C8558e() {
        super("user_tags", f26364c);
    }

    @Override // p193e.p194a.p372b0.p413i.p415f.AbstractC8473c
    /* renamed from: b */
    public void mo28391b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 3) {
            sQLiteDatabase.execSQL("ALTER TABLE user_tags ADD COLUMN tag_id_2 INTEGER");
        }
        if (i < 4) {
            sQLiteDatabase.execSQL("ALTER TABLE user_tags ADD COLUMN context INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE user_tags ADD COLUMN search_type INTEGER");
            sQLiteDatabase.execSQL("ALTER TABLE user_tags ADD COLUMN timestamp INTEGER");
        }
    }
}

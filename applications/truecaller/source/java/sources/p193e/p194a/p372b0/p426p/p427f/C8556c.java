package p193e.p194a.p372b0.p426p.p427f;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8473c;
/* renamed from: e.a.b0.p.f.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/f/c.class */
public class C8556c extends AbstractC8473c {

    /* renamed from: c */
    public static final AbstractC8473c.C8474a[] f26360c = {new AbstractC8473c.C8474a("_id", "INTEGER PRIMARY KEY"), new AbstractC8473c.C8474a("term", "TEXT"), new AbstractC8473c.C8474a("tag_id", "INTEGER"), new AbstractC8473c.C8474a("relevance", "REAL")};

    public C8556c() {
        super("tag_keywords", f26360c);
    }

    @Override // p193e.p194a.p372b0.p413i.p415f.AbstractC8473c
    /* renamed from: b */
    public void mo28391b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 5) {
            m28494a(sQLiteDatabase);
        }
    }
}

package p459j.p460a.p474c0.p475c;

import android.database.sqlite.SQLiteDatabase;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.k */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/k.class */
public class C11533k {
    /* renamed from: a */
    public final void m9230a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE messages ADD COLUMN message_filter_type INT DEFAULT 0;");
    }

    /* renamed from: a */
    public void m9229a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C12151d.m6999b(i2 >= i);
        if (i != i2) {
            C12153d0.m6985c("MessagingAppDb", "Database upgrade started from version " + i + " to " + i2);
            if (i < 3) {
                C11532j.m9231f(sQLiteDatabase);
            } else if (i < 4) {
                m9230a(sQLiteDatabase);
            }
        }
    }

    /* renamed from: b */
    public void m9228b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C11532j.m9231f(sQLiteDatabase);
        C12153d0.m6987b("MessagingAppDb", "Database downgrade requested for version " + i + " version " + i2 + ", forcing db rebuild!");
    }
}

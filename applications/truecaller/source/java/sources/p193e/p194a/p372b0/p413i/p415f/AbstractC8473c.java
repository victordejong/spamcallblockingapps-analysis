package p193e.p194a.p372b0.p413i.p415f;

import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.b0.i.f.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/f/c.class */
public abstract class AbstractC8473c {

    /* renamed from: a */
    public final String f26216a;

    /* renamed from: b */
    public final C8474a[] f26217b;

    /* renamed from: e.a.b0.i.f.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/f/c$a.class */
    public static class C8474a {

        /* renamed from: a */
        public final String f26218a;

        /* renamed from: b */
        public final String f26219b;

        /* renamed from: c */
        public final boolean f26220c;

        public C8474a(String str, String str2) {
            this.f26218a = str;
            this.f26219b = str2;
            this.f26220c = false;
        }

        public C8474a(String str, String str2, boolean z) {
            this.f26218a = str;
            this.f26219b = str2;
            this.f26220c = z;
        }
    }

    public AbstractC8473c(String str, C8474a[] c8474aArr) {
        this.f26216a = str;
        this.f26217b = c8474aArr;
    }

    /* renamed from: a */
    public void m28494a(SQLiteDatabase sQLiteDatabase) {
        boolean z = true;
        if (this.f26217b.length < 1) {
            z = false;
        }
        AssertionUtil.AlwaysFatal.isTrue(z, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(this.f26217b[0].f26218a.equals("_id"), new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(this.f26217b[0].f26219b.equals("INTEGER PRIMARY KEY"), new String[0]);
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        StringBuilder m8728C = C22128a.m8728C("CREATE TABLE '");
        m8728C.append(this.f26216a);
        m8728C.append("' (");
        sb.append(m8728C.toString());
        for (int i = 0; i < this.f26217b.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            C8474a c8474a = this.f26217b[i];
            if (c8474a.f26220c) {
                arrayList.add(c8474a);
            }
            sb.append("'");
            sb.append(c8474a.f26218a);
            sb.append("' ");
            sb.append(c8474a.f26219b);
        }
        sb.append(");");
        sb.toString();
        sQLiteDatabase.execSQL(sb.toString());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            StringBuilder sb2 = new StringBuilder();
            C8474a c8474a2 = (C8474a) arrayList.get(i2);
            sb2.append("CREATE INDEX ");
            sb2.append(this.f26216a + AnalyticsConstants.DELIMITER_MAIN + c8474a2.f26218a + "_idx");
            sb2.append(" ON ");
            sb2.append(this.f26216a);
            sb2.append(" (");
            sb2.append(c8474a2.f26218a);
            sb2.append(");");
            sb2.toString();
            sQLiteDatabase.execSQL(sb2.toString());
        }
    }

    /* renamed from: b */
    public abstract void mo28391b(SQLiteDatabase sQLiteDatabase, int i, int i2);
}

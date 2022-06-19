package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25655d;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p437c.p531c0.C10020g;
import p193e.p194a.p437c.p580r.p582e.p583a.C10531a;
import p193e.p194a.p437c.p580r.p582e.p583a.C10533c;
import q3.a.x2.f;
/* renamed from: e.a.c.c.d.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d.class */
public final class C9796d implements AbstractC9793c {

    /* renamed from: a */
    public final AbstractC25677q f29434a;

    /* renamed from: b */
    public final AbstractC25663k<C10533c> f29435b;

    /* renamed from: c */
    public final C10020g f29436c = new C10020g();

    /* renamed from: e.a.c.c.d.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d$a.class */
    public class C9797a extends AbstractC25663k<C10533c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9797a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9796d.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C10533c c10533c) {
            C10533c c10533c2 = c10533c;
            abstractC26154f.mo2650l0(1, c10533c2.f31432a);
            Long m26909a = C9796d.this.f29436c.m26909a(c10533c2.f31433b);
            if (m26909a == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2650l0(2, m26909a.longValue());
            }
            String str = c10533c2.f31434c;
            if (str == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str);
            }
            String str2 = c10533c2.f31435d;
            if (str2 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str2);
            }
            String str3 = c10533c2.f31436e;
            if (str3 == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, str3);
            }
            abstractC26154f.mo2652T0(6, c10533c2.f31437f);
            abstractC26154f.mo2650l0(7, c10533c2.f31438g ? 1L : 0L);
            abstractC26154f.mo2650l0(8, c10533c2.f31439h);
            Long m26909a2 = C9796d.this.f29436c.m26909a(c10533c2.f31440i);
            if (m26909a2 == null) {
                abstractC26154f.mo2648y0(9);
            } else {
                abstractC26154f.mo2650l0(9, m26909a2.longValue());
            }
            abstractC26154f.mo2650l0(10, c10533c2.f31441j ? 1L : 0L);
            String str4 = c10533c2.f31442k;
            if (str4 == null) {
                abstractC26154f.mo2648y0(11);
            } else {
                abstractC26154f.mo2651f0(11, str4);
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `account_model_table` (`id`,`created_at`,`address`,`account_type`,`account_number`,`balance`,`active`,`record_count`,`update_stamp`,`root_account`,`normalized_name`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.c.c.d.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d$b.class */
    public class C9798b extends AbstractC25646c0 {
        public C9798b(C9796d c9796d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM account_model_table";
        }
    }

    /* renamed from: e.a.c.c.d.d$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/d$c.class */
    public class CallableC9799c implements Callable<List<C10531a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f29438a;

        public CallableC9799c(C25686y c25686y) {
            C9796d.this = r4;
            this.f29438a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C10531a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C9796d.this.f29434a, this.f29438a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "address");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "account_type");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    arrayList.add(new C10531a(m3090b.isNull(m43237g0) ? null : m3090b.getString(m43237g0), m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02)));
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f29438a.m3057l();
        }
    }

    public C9796d(AbstractC25677q abstractC25677q) {
        this.f29434a = abstractC25677q;
        this.f29435b = new C9797a(abstractC25677q);
        new C9798b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9793c
    /* renamed from: a */
    public void mo27159a(List<Long> list) {
        this.f29434a.assertNotSuspendingTransaction();
        StringBuilder sb = new StringBuilder();
        sb.append(StringConstant.NEW_LINE);
        sb.append("        UPDATE account_model_table SET active = 0 ");
        sb.append(StringConstant.NEW_LINE);
        sb.append("        WHERE id in (");
        C25655d.m3086a(sb, list.size());
        sb.append(")");
        sb.append(StringConstant.NEW_LINE);
        sb.append("    ");
        AbstractC26154f compileStatement = this.f29434a.compileStatement(sb.toString());
        int i = 1;
        for (Long l : list) {
            if (l == null) {
                compileStatement.mo2648y0(i);
            } else {
                compileStatement.mo2650l0(i, l.longValue());
            }
            i++;
        }
        this.f29434a.beginTransaction();
        try {
            compileStatement.m2673A();
            this.f29434a.setTransactionSuccessful();
        } finally {
            this.f29434a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9793c
    /* renamed from: b */
    public List<C10533c> mo27158b() {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT * FROM account_model_table", 0);
        this.f29434a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29434a, m3059j, false, null);
        C25686y c25686y = m3059j;
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "address");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "account_type");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "account_number");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "balance");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "active");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "record_count");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "update_stamp");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "root_account");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "normalized_name");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (true) {
                c25686y = m3059j;
                if (!m3090b.moveToNext()) {
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                }
                C10533c c10533c = new C10533c();
                try {
                    c10533c.f31432a = m3090b.getLong(m43237g0);
                    c10533c.m25798t(this.f29436c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02))));
                    c10533c.f31434c = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    c10533c.f31435d = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                    c10533c.f31436e = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                    c10533c.f31437f = m3090b.getFloat(m43237g06);
                    c10533c.f31438g = m3090b.getInt(m43237g07) != 0;
                    c10533c.f31439h = m3090b.getLong(m43237g08);
                    c10533c.f31440i = this.f29436c.m26907c(m3090b.isNull(m43237g09) ? null : Long.valueOf(m3090b.getLong(m43237g09)));
                    c10533c.f31441j = m3090b.getInt(m43237g010) != 0;
                    c10533c.f31442k = m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011);
                    arrayList.add(c10533c);
                } catch (Throwable th2) {
                    th = th2;
                    c25686y = m3059j;
                    m3090b.close();
                    c25686y.m3057l();
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9793c
    /* renamed from: c */
    public List<C10533c> mo27157c(String str, String str2) {
        C25686y c25686y;
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT * FROM account_model_table WHERE account_number=? AND address=?", 2);
        m3059j.mo2651f0(1, str);
        m3059j.mo2651f0(2, str2);
        this.f29434a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29434a, m3059j, false, null);
        C25686y c25686y2 = m3059j;
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "address");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "account_type");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "account_number");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "balance");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "active");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "record_count");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "update_stamp");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "root_account");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "normalized_name");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (true) {
                c25686y2 = m3059j;
                if (!m3090b.moveToNext()) {
                    m3090b.close();
                    m3059j.m3057l();
                    return arrayList;
                }
                C10533c c10533c = new C10533c();
                try {
                    c10533c.f31432a = m3090b.getLong(m43237g0);
                    c10533c.m25798t(this.f29436c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02))));
                    c10533c.f31434c = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    c10533c.f31435d = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                    c10533c.f31436e = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                    c10533c.f31437f = m3090b.getFloat(m43237g06);
                    c10533c.f31438g = m3090b.getInt(m43237g07) != 0;
                    c10533c.f31439h = m3090b.getLong(m43237g08);
                    c10533c.f31440i = this.f29436c.m26907c(m3090b.isNull(m43237g09) ? null : Long.valueOf(m3090b.getLong(m43237g09)));
                    c10533c.f31441j = m3090b.getInt(m43237g010) != 0;
                    c10533c.f31442k = m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011);
                    arrayList.add(c10533c);
                } catch (Throwable th2) {
                    th = th2;
                    c25686y = m3059j;
                    m3090b.close();
                    c25686y.m3057l();
                    throw th;
                }
            }
        } catch (Throwable th3) {
            c25686y = c25686y2;
            th = th3;
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9793c
    /* renamed from: d */
    public f<List<C10531a>> mo27156d() {
        return C25650g.m3096a(this.f29434a, false, new String[]{"account_model_table"}, new CallableC9799c(C25686y.m3059j("\n        SELECT address, MIN(account_type) AS account_type \n        FROM account_model_table \n        WHERE active = 1\n        GROUP BY address\n        ", 0)));
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9793c
    /* renamed from: e */
    public long mo27155e(C10533c c10533c) {
        this.f29434a.assertNotSuspendingTransaction();
        this.f29434a.beginTransaction();
        try {
            long insertAndReturnId = this.f29435b.insertAndReturnId(c10533c);
            this.f29434a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f29434a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9793c
    /* renamed from: f */
    public long[] mo27154f(List<C10533c> list) {
        this.f29434a.assertNotSuspendingTransaction();
        this.f29434a.beginTransaction();
        try {
            long[] insertAndReturnIdsArray = this.f29435b.insertAndReturnIdsArray(list);
            this.f29434a.setTransactionSuccessful();
            return insertAndReturnIdsArray;
        } finally {
            this.f29434a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9793c
    /* renamed from: g */
    public C10533c mo27153g(long j) {
        Throwable th;
        C25686y m3059j = C25686y.m3059j("SELECT * FROM account_model_table WHERE id = ?", 1);
        m3059j.mo2650l0(1, j);
        this.f29434a.assertNotSuspendingTransaction();
        C10533c c10533c = null;
        Cursor m3090b = C25653b.m3090b(this.f29434a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "address");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "account_type");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "account_number");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "balance");
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "active");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "record_count");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "update_stamp");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "root_account");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "normalized_name");
            if (m3090b.moveToFirst()) {
                C10533c c10533c2 = new C10533c();
                try {
                    c10533c2.f31432a = m3090b.getLong(m43237g0);
                    c10533c2.m25798t(this.f29436c.m26907c(m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02))));
                    c10533c2.f31434c = m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03);
                    c10533c2.f31435d = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                    c10533c2.f31436e = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                    c10533c2.f31437f = m3090b.getFloat(m43237g06);
                    c10533c2.f31438g = m3090b.getInt(m43237g07) != 0;
                    c10533c2.f31439h = m3090b.getLong(m43237g08);
                    c10533c2.f31440i = this.f29436c.m26907c(m3090b.isNull(m43237g09) ? null : Long.valueOf(m3090b.getLong(m43237g09)));
                    c10533c2.f31441j = m3090b.getInt(m43237g010) != 0;
                    c10533c2.f31442k = m3090b.isNull(m43237g011) ? null : m3090b.getString(m43237g011);
                    c10533c = c10533c2;
                } catch (Throwable th2) {
                    th = th2;
                    m3090b.close();
                    m3059j.m3057l();
                    throw th;
                }
            }
            m3090b.close();
            m3059j.m3057l();
            return c10533c;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

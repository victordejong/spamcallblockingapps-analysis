package p193e.p194a.p437c.p526c.p528d;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p437c.p531c0.C10020g;
import p193e.p194a.p437c.p580r.p582e.p583a.C10532b;
import s1.z.c.l;
/* renamed from: e.a.c.c.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/d/b.class */
public final class C9790b implements AbstractC9788a {

    /* renamed from: a */
    public final AbstractC25677q f29425a;

    /* renamed from: b */
    public final AbstractC25663k<C10532b> f29426b;

    /* renamed from: c */
    public final C10020g f29427c = new C10020g();

    /* renamed from: e.a.c.c.d.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/d/b$a.class */
    public class C9791a extends AbstractC25663k<C10532b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9791a(AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
            C9790b.this = r4;
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C10532b c10532b) {
            C10532b c10532b2 = c10532b;
            abstractC26154f.mo2650l0(1, c10532b2.f31426a);
            Long l = c10532b2.f31427b;
            if (l == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2650l0(2, l.longValue());
            }
            Long l2 = c10532b2.f31428c;
            if (l2 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2650l0(3, l2.longValue());
            }
            String str = c10532b2.f31429d;
            if (str == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str);
            }
            String str2 = c10532b2.f31430e;
            if (str2 == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, str2);
            }
            Long m26909a = C9790b.this.f29427c.m26909a(c10532b2.m25820a());
            if (m26909a == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2650l0(6, m26909a.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `account_mapping_rule_model` (`id`,`to_account`,`from_account`,`from_address`,`to_address`,`created_at`) VALUES (nullif(?, 0),?,?,?,?,?)";
        }
    }

    public C9790b(AbstractC25677q abstractC25677q) {
        this.f29425a = abstractC25677q;
        this.f29426b = new C9791a(abstractC25677q);
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9788a
    /* renamed from: a */
    public void mo27163a(C10532b c10532b) {
        this.f29425a.assertNotSuspendingTransaction();
        this.f29425a.beginTransaction();
        try {
            this.f29426b.insert((AbstractC25663k<C10532b>) c10532b);
            this.f29425a.setTransactionSuccessful();
        } finally {
            this.f29425a.endTransaction();
        }
    }

    @Override // p193e.p194a.p437c.p526c.p528d.AbstractC9788a
    /* renamed from: b */
    public List<C10532b> mo27162b(long j) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM account_mapping_rule_model WHERE from_account=?", 1);
        m3059j.mo2650l0(1, j);
        this.f29425a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f29425a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, "to_account");
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "from_account");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "from_address");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "to_address");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, "created_at");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C10532b c10532b = new C10532b();
                c10532b.f31426a = m3090b.getLong(m43237g0);
                c10532b.f31427b = m3090b.isNull(m43237g02) ? null : Long.valueOf(m3090b.getLong(m43237g02));
                c10532b.f31428c = m3090b.isNull(m43237g03) ? null : Long.valueOf(m3090b.getLong(m43237g03));
                c10532b.f31429d = m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04);
                c10532b.f31430e = m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05);
                Date m26907c = this.f29427c.m26907c(m3090b.isNull(m43237g06) ? null : Long.valueOf(m3090b.getLong(m43237g06)));
                l.e(m26907c, "createdAt");
                c10532b.f31431f = m26907c;
                arrayList.add(c10532b);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }
}

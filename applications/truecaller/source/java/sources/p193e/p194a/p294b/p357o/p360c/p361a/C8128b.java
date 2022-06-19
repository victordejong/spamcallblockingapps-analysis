package p193e.p194a.p294b.p357o.p360c.p361a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p294b.p357o.p360c.p362b.C8144b;
/* renamed from: e.a.b.o.c.a.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/b.class */
public final class C8128b implements AbstractC8127a {

    /* renamed from: a */
    public final AbstractC25677q f25206a;

    /* renamed from: b */
    public final AbstractC25663k<C8144b> f25207b;

    /* renamed from: c */
    public final AbstractC25646c0 f25208c;

    /* renamed from: e.a.b.o.c.a.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/b$a.class */
    public class C8129a extends AbstractC25663k<C8144b> {
        public C8129a(C8128b c8128b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C8144b c8144b) {
            C8144b c8144b2 = c8144b;
            abstractC26154f.mo2650l0(1, c8144b2.f25225a);
            String str = c8144b2.f25226b;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            String str2 = c8144b2.f25227c;
            if (str2 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str2);
            }
            String str3 = c8144b2.f25228d;
            if (str3 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str3);
            }
            String str4 = c8144b2.f25229e;
            if (str4 == null) {
                abstractC26154f.mo2648y0(5);
            } else {
                abstractC26154f.mo2651f0(5, str4);
            }
            String str5 = c8144b2.f25230f;
            if (str5 == null) {
                abstractC26154f.mo2648y0(6);
            } else {
                abstractC26154f.mo2651f0(6, str5);
            }
            String str6 = c8144b2.f25231g;
            if (str6 == null) {
                abstractC26154f.mo2648y0(7);
            } else {
                abstractC26154f.mo2651f0(7, str6);
            }
            String str7 = c8144b2.f25232h;
            if (str7 == null) {
                abstractC26154f.mo2648y0(8);
            } else {
                abstractC26154f.mo2651f0(8, str7);
            }
            String str8 = c8144b2.f25233i;
            if (str8 == null) {
                abstractC26154f.mo2648y0(9);
            } else {
                abstractC26154f.mo2651f0(9, str8);
            }
            String str9 = c8144b2.f25234j;
            if (str9 == null) {
                abstractC26154f.mo2648y0(10);
            } else {
                abstractC26154f.mo2651f0(10, str9);
            }
            Long l = c8144b2.f25235k;
            if (l == null) {
                abstractC26154f.mo2648y0(11);
            } else {
                abstractC26154f.mo2650l0(11, l.longValue());
            }
            Long l2 = c8144b2.f25236l;
            if (l2 == null) {
                abstractC26154f.mo2648y0(12);
            } else {
                abstractC26154f.mo2650l0(12, l2.longValue());
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `contact` (`id`,`name`,`phone_number`,`designation`,`department_name`,`email`,`fax`,`address`,`ministry`,`res`,`district_id`,`state_id`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: e.a.b.o.c.a.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/b$b.class */
    public class C8130b extends AbstractC25646c0 {
        public C8130b(C8128b c8128b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM contact";
        }
    }

    public C8128b(AbstractC25677q abstractC25677q) {
        this.f25206a = abstractC25677q;
        this.f25207b = new C8129a(this, abstractC25677q);
        this.f25208c = new C8130b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8127a
    /* renamed from: a */
    public void mo28890a() {
        this.f25206a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f25208c.acquire();
        this.f25206a.beginTransaction();
        try {
            acquire.m2673A();
            this.f25206a.setTransactionSuccessful();
        } finally {
            this.f25206a.endTransaction();
            this.f25208c.release(acquire);
        }
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8127a
    /* renamed from: b */
    public long mo28889b(C8144b c8144b) {
        this.f25206a.assertNotSuspendingTransaction();
        this.f25206a.beginTransaction();
        try {
            long insertAndReturnId = this.f25207b.insertAndReturnId(c8144b);
            this.f25206a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f25206a.endTransaction();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8127a
    /* renamed from: c */
    public List<C8144b> mo28888c(long j, long j2) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM contact WHERE district_id = ? AND state_id = ?", 2);
        m3059j.mo2650l0(1, j);
        m3059j.mo2650l0(2, j2);
        this.f25206a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f25206a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.NAME);
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "designation");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "department_name");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.EMAIL);
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "fax");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "address");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "ministry");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "res");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "district_id");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "state_id");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C8144b c8144b = new C8144b(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010), m3090b.isNull(m43237g011) ? null : Long.valueOf(m3090b.getLong(m43237g011)), m3090b.isNull(m43237g012) ? null : Long.valueOf(m3090b.getLong(m43237g012)));
                c8144b.f25225a = m3090b.getLong(m43237g0);
                arrayList.add(c8144b);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8127a
    /* renamed from: d */
    public List<C8144b> mo28887d(long j) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM contact WHERE district_id IS NULL  AND state_id = ?", 1);
        m3059j.mo2650l0(1, j);
        this.f25206a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f25206a, m3059j, false, null);
        try {
            int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
            int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.NAME);
            int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "phone_number");
            int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "designation");
            int m43237g05 = MediaSessionCompat.m43237g0(m3090b, "department_name");
            int m43237g06 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.EMAIL);
            int m43237g07 = MediaSessionCompat.m43237g0(m3090b, "fax");
            int m43237g08 = MediaSessionCompat.m43237g0(m3090b, "address");
            int m43237g09 = MediaSessionCompat.m43237g0(m3090b, "ministry");
            int m43237g010 = MediaSessionCompat.m43237g0(m3090b, "res");
            int m43237g011 = MediaSessionCompat.m43237g0(m3090b, "district_id");
            int m43237g012 = MediaSessionCompat.m43237g0(m3090b, "state_id");
            ArrayList arrayList = new ArrayList(m3090b.getCount());
            while (m3090b.moveToNext()) {
                C8144b c8144b = new C8144b(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.isNull(m43237g03) ? null : m3090b.getString(m43237g03), m3090b.isNull(m43237g04) ? null : m3090b.getString(m43237g04), m3090b.isNull(m43237g05) ? null : m3090b.getString(m43237g05), m3090b.isNull(m43237g06) ? null : m3090b.getString(m43237g06), m3090b.isNull(m43237g07) ? null : m3090b.getString(m43237g07), m3090b.isNull(m43237g08) ? null : m3090b.getString(m43237g08), m3090b.isNull(m43237g09) ? null : m3090b.getString(m43237g09), m3090b.isNull(m43237g010) ? null : m3090b.getString(m43237g010), m3090b.isNull(m43237g011) ? null : Long.valueOf(m3090b.getLong(m43237g011)), m3090b.isNull(m43237g012) ? null : Long.valueOf(m3090b.getLong(m43237g012)));
                c8144b.f25225a = m3090b.getLong(m43237g0);
                arrayList.add(c8144b);
            }
            return arrayList;
        } finally {
            m3090b.close();
            m3059j.m3057l();
        }
    }
}

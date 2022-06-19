package p193e.p194a.p294b.p357o.p360c.p361a;

import android.database.Cursor;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p294b.p357o.p360c.p362b.C8143a;
import q3.a.x2.f;
/* renamed from: e.a.b.o.c.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/d.class */
public final class C8132d implements AbstractC8131c {

    /* renamed from: a */
    public final AbstractC25677q f25209a;

    /* renamed from: b */
    public final AbstractC25663k<C8143a> f25210b;

    /* renamed from: c */
    public final AbstractC25646c0 f25211c;

    /* renamed from: d */
    public final AbstractC25646c0 f25212d;

    /* renamed from: e.a.b.o.c.a.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/d$a.class */
    public class C8133a extends AbstractC25663k<C8143a> {
        public C8133a(C8132d c8132d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C8143a c8143a) {
            C8143a c8143a2 = c8143a;
            abstractC26154f.mo2650l0(1, c8143a2.f25221a);
            String str = c8143a2.f25222b;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            abstractC26154f.mo2650l0(3, c8143a2.f25223c);
            abstractC26154f.mo2650l0(4, c8143a2.f25224d);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `district` (`id`,`name`,`contacts_count`,`state_id`) VALUES (nullif(?, 0),?,?,?)";
        }
    }

    /* renamed from: e.a.b.o.c.a.d$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/d$b.class */
    public class C8134b extends AbstractC25646c0 {
        public C8134b(C8132d c8132d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM district";
        }
    }

    /* renamed from: e.a.b.o.c.a.d$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/d$c.class */
    public class C8135c extends AbstractC25646c0 {
        public C8135c(C8132d c8132d, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE district SET contacts_count = contacts_count + ? WHERE id = ?";
        }
    }

    /* renamed from: e.a.b.o.c.a.d$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/d$d.class */
    public class CallableC8136d implements Callable<List<C8143a>> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f25213a;

        public CallableC8136d(C25686y c25686y) {
            C8132d.this = r4;
            this.f25213a = c25686y;
        }

        @Override // java.util.concurrent.Callable
        public List<C8143a> call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C8132d.this.f25209a, this.f25213a, false, null);
            try {
                int m43237g0 = MediaSessionCompat.m43237g0(m3090b, "id");
                int m43237g02 = MediaSessionCompat.m43237g0(m3090b, AnalyticsConstants.NAME);
                int m43237g03 = MediaSessionCompat.m43237g0(m3090b, "contacts_count");
                int m43237g04 = MediaSessionCompat.m43237g0(m3090b, "state_id");
                ArrayList arrayList = new ArrayList(m3090b.getCount());
                while (m3090b.moveToNext()) {
                    C8143a c8143a = new C8143a(m3090b.isNull(m43237g02) ? null : m3090b.getString(m43237g02), m3090b.getInt(m43237g03), m3090b.getLong(m43237g04));
                    c8143a.f25221a = m3090b.getLong(m43237g0);
                    arrayList.add(c8143a);
                }
                return arrayList;
            } finally {
                m3090b.close();
            }
        }

        public void finalize() {
            this.f25213a.m3057l();
        }
    }

    public C8132d(AbstractC25677q abstractC25677q) {
        this.f25209a = abstractC25677q;
        this.f25210b = new C8133a(this, abstractC25677q);
        this.f25211c = new C8134b(this, abstractC25677q);
        this.f25212d = new C8135c(this, abstractC25677q);
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c
    /* renamed from: a */
    public void mo28886a(long j, int i) {
        this.f25209a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f25212d.acquire();
        acquire.mo2650l0(1, i);
        acquire.mo2650l0(2, j);
        this.f25209a.beginTransaction();
        try {
            acquire.m2673A();
            this.f25209a.setTransactionSuccessful();
        } finally {
            this.f25209a.endTransaction();
            this.f25212d.release(acquire);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c
    /* renamed from: b */
    public boolean mo28885b(String str, long j) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM district WHERE name = ? AND state_id = ?", 2);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        this.f25209a.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor m3090b = C25653b.m3090b(this.f25209a, m3059j, false, null);
        try {
            if (m3090b.moveToFirst()) {
                z = m3090b.getInt(0) != 0;
            }
            m3090b.close();
            m3059j.m3057l();
            return z;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c
    /* renamed from: c */
    public void mo28884c() {
        this.f25209a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f25211c.acquire();
        this.f25209a.beginTransaction();
        try {
            acquire.m2673A();
            this.f25209a.setTransactionSuccessful();
        } finally {
            this.f25209a.endTransaction();
            this.f25211c.release(acquire);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c
    /* renamed from: d */
    public long mo28883d(String str, long j) {
        C25686y m3059j = C25686y.m3059j("SELECT id FROM district WHERE name = ? AND state_id = ?", 2);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        m3059j.mo2650l0(2, j);
        this.f25209a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f25209a, m3059j, false, null);
        try {
            char c = m3090b.moveToFirst() ? m3090b.getLong(0) : (char) 0;
            m3090b.close();
            m3059j.m3057l();
            return c;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c
    /* renamed from: e */
    public f<List<C8143a>> mo28882e(long j) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM district WHERE state_id = ?", 1);
        m3059j.mo2650l0(1, j);
        return C25650g.m3096a(this.f25209a, false, new String[]{"district"}, new CallableC8136d(m3059j));
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c
    /* renamed from: f */
    public long mo28881f(C8143a c8143a) {
        this.f25209a.assertNotSuspendingTransaction();
        this.f25209a.beginTransaction();
        try {
            long insertAndReturnId = this.f25210b.insertAndReturnId(c8143a);
            this.f25209a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f25209a.endTransaction();
        }
    }
}

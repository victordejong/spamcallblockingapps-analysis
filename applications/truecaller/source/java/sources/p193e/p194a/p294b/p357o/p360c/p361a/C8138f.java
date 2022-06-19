package p193e.p194a.p294b.p357o.p360c.p361a;

import android.database.Cursor;
import java.util.Objects;
import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1751c0.C25686y;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p294b.p357o.p360c.p362b.C8145c;
import q3.a.x2.f;
/* renamed from: e.a.b.o.c.a.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/f.class */
public final class C8138f implements AbstractC8137e {

    /* renamed from: a */
    public final AbstractC25677q f25215a;

    /* renamed from: b */
    public final AbstractC25663k<C8145c> f25216b;

    /* renamed from: c */
    public final AbstractC25646c0 f25217c;

    /* renamed from: d */
    public final AbstractC25646c0 f25218d;

    /* renamed from: e.a.b.o.c.a.f$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/f$a.class */
    public class C8139a extends AbstractC25663k<C8145c> {
        public C8139a(C8138f c8138f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C8145c c8145c) {
            C8145c c8145c2 = c8145c;
            Objects.requireNonNull(c8145c2);
            abstractC26154f.mo2650l0(1, 0L);
            String str = c8145c2.f25237a;
            if (str == null) {
                abstractC26154f.mo2648y0(2);
            } else {
                abstractC26154f.mo2651f0(2, str);
            }
            abstractC26154f.mo2650l0(3, c8145c2.f25238b);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `state` (`id`,`name`,`general_services_count`) VALUES (nullif(?, 0),?,?)";
        }
    }

    /* renamed from: e.a.b.o.c.a.f$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/f$b.class */
    public class C8140b extends AbstractC25646c0 {
        public C8140b(C8138f c8138f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM state";
        }
    }

    /* renamed from: e.a.b.o.c.a.f$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/f$c.class */
    public class C8141c extends AbstractC25646c0 {
        public C8141c(C8138f c8138f, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "UPDATE state SET general_services_count = general_services_count + ? WHERE name = ?";
        }
    }

    /* renamed from: e.a.b.o.c.a.f$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/c/a/f$d.class */
    public class CallableC8142d implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ C25686y f25219a;

        public CallableC8142d(C25686y c25686y) {
            C8138f.this = r4;
            this.f25219a = c25686y;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            Cursor m3090b = C25653b.m3090b(C8138f.this.f25215a, this.f25219a, false, null);
            Integer num = null;
            try {
                if (m3090b.moveToFirst()) {
                    num = m3090b.isNull(0) ? null : Integer.valueOf(m3090b.getInt(0));
                }
                m3090b.close();
                return num;
            } catch (Throwable th) {
                m3090b.close();
                throw th;
            }
        }

        public void finalize() {
            this.f25219a.m3057l();
        }
    }

    public C8138f(AbstractC25677q abstractC25677q) {
        this.f25215a = abstractC25677q;
        this.f25216b = new C8139a(this, abstractC25677q);
        this.f25217c = new C8140b(this, abstractC25677q);
        this.f25218d = new C8141c(this, abstractC25677q);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e
    /* renamed from: a */
    public boolean mo28880a(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT * FROM state WHERE name = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f25215a.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor m3090b = C25653b.m3090b(this.f25215a, m3059j, false, null);
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

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e
    /* renamed from: b */
    public long mo28879b(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT  id  FROM state WHERE name = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        this.f25215a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f25215a, m3059j, false, null);
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

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e
    /* renamed from: c */
    public void mo28878c() {
        this.f25215a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f25217c.acquire();
        this.f25215a.beginTransaction();
        try {
            acquire.m2673A();
            this.f25215a.setTransactionSuccessful();
        } finally {
            this.f25215a.endTransaction();
            this.f25217c.release(acquire);
        }
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e
    /* renamed from: d */
    public long mo28877d(C8145c c8145c) {
        this.f25215a.assertNotSuspendingTransaction();
        this.f25215a.beginTransaction();
        try {
            long insertAndReturnId = this.f25216b.insertAndReturnId(c8145c);
            this.f25215a.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.f25215a.endTransaction();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e
    /* renamed from: e */
    public f<Integer> mo28876e(String str) {
        C25686y m3059j = C25686y.m3059j("SELECT  general_services_count  FROM state WHERE name = ?", 1);
        if (str == null) {
            m3059j.mo2648y0(1);
        } else {
            m3059j.mo2651f0(1, str);
        }
        return C25650g.m3096a(this.f25215a, false, new String[]{"state"}, new CallableC8142d(m3059j));
    }

    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e
    /* renamed from: f */
    public void mo28875f(String str, int i) {
        this.f25215a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f25218d.acquire();
        acquire.mo2650l0(1, i);
        if (str == null) {
            acquire.mo2648y0(2);
        } else {
            acquire.mo2651f0(2, str);
        }
        this.f25215a.beginTransaction();
        try {
            acquire.m2673A();
            this.f25215a.setTransactionSuccessful();
        } finally {
            this.f25215a.endTransaction();
            this.f25218d.release(acquire);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e
    /* renamed from: g */
    public String mo28874g(long j) {
        C25686y m3059j = C25686y.m3059j("SELECT  name  FROM state WHERE id = ?", 1);
        m3059j.mo2650l0(1, j);
        this.f25215a.assertNotSuspendingTransaction();
        Cursor m3090b = C25653b.m3090b(this.f25215a, m3059j, false, null);
        String str = null;
        try {
            if (m3090b.moveToFirst()) {
                str = m3090b.isNull(0) ? null : m3090b.getString(0);
            }
            m3090b.close();
            m3059j.m3057l();
            return str;
        } catch (Throwable th) {
            m3090b.close();
            m3059j.m3057l();
            throw th;
        }
    }
}

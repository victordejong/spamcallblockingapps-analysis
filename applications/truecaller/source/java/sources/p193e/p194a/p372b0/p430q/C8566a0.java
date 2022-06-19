package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import e.m.f.a.p;
import java.util.Collection;
import java.util.Locale;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.a.a.a.v0.f.d;
import s1.e0.h;
import s1.e0.x;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
import s1.z.c.m;
import w3.c.a.a.a.h;
/* renamed from: e.a.b0.q.a0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/a0.class */
public final class C8566a0 implements AbstractC8621z {

    /* renamed from: a */
    public final j f26377a;

    /* renamed from: b */
    public final p f26378b;

    /* renamed from: c */
    public final AbstractC13497p f26379c;

    /* renamed from: d */
    public final AbstractC8432l f26380d;

    /* renamed from: e.a.b0.q.a0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/a0$a.class */
    public static final class C8567a {

        /* renamed from: a */
        public final o f26381a;

        /* renamed from: b */
        public final boolean f26382b;

        public C8567a(o oVar, boolean z) {
            l.e(oVar, "phoneNumber");
            this.f26381a = oVar;
            this.f26382b = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8567a)) {
                    return false;
                }
                C8567a c8567a = (C8567a) obj;
                return l.a(this.f26381a, c8567a.f26381a) && this.f26382b == c8567a.f26382b;
            }
            return true;
        }

        public int hashCode() {
            o oVar = this.f26381a;
            int hashCode = oVar != null ? oVar.hashCode() : 0;
            boolean z = this.f26382b;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return (hashCode * 31) + (z2 ? 1 : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Result(phoneNumber=");
            m8728C.append(this.f26381a);
            m8728C.append(", isValidNumber=");
            return C22128a.m8590o(m8728C, this.f26382b, ")");
        }
    }

    /* renamed from: e.a.b0.q.a0$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/a0$b.class */
    public static final /* synthetic */ class C8568b extends s1.z.c.j implements s1.z.b.l<CharSequence, Boolean> {

        /* renamed from: j */
        public static final C8568b f26383j = new C8568b();

        public C8568b() {
            super(1, s1.f0.l.class, "isNotBlank", "isNotBlank(Ljava/lang/CharSequence;)Z", 1);
        }

        /* renamed from: d */
        public Object m28381d(Object obj) {
            String str = (String) obj;
            l.e(str, "p1");
            return Boolean.valueOf(!r.p(str));
        }
    }

    /* renamed from: e.a.b0.q.a0$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/a0$c.class */
    public static final /* synthetic */ class C8569c extends s1.z.c.j implements s1.z.b.l<CharSequence, Boolean> {

        /* renamed from: j */
        public static final C8569c f26384j = new C8569c();

        public C8569c() {
            super(1, s1.f0.l.class, "isNotEmpty", "isNotEmpty(Ljava/lang/CharSequence;)Z", 1);
        }

        /* renamed from: d */
        public Object m28380d(Object obj) {
            String str = (String) obj;
            l.e(str, "p1");
            return Boolean.valueOf(str.length() > 0);
        }
    }

    /* renamed from: e.a.b0.q.a0$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/a0$d.class */
    public static final class C8570d extends m implements s1.z.b.l<String, o> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8570d() {
            super(1);
            C8566a0.this = r4;
        }

        /* renamed from: d */
        public Object m28379d(Object obj) {
            String str = (String) obj;
            l.e(str, "it");
            o oVar = null;
            C8567a m28383q = C8566a0.this.m28383q(str, null, null);
            if (m28383q != null) {
                oVar = m28383q.f26381a;
            }
            return oVar;
        }
    }

    @Inject
    public C8566a0(j jVar, p pVar, AbstractC13497p abstractC13497p, AbstractC8432l abstractC8432l) {
        l.e(jVar, "phoneNumberUtil");
        l.e(pVar, "shortNumberInfo");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC8432l, "accountManager");
        this.f26377a = jVar;
        this.f26378b = pVar;
        this.f26379c = abstractC13497p;
        this.f26380d = abstractC8432l;
    }

    /* renamed from: r */
    public static String m28382r(C8566a0 c8566a0, String str, j.c cVar, String str2, String str3, boolean z, int i) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            z = false;
        }
        C8567a m28383q = c8566a0.m28383q(str, str2, str3);
        String str4 = null;
        if (m28383q != null) {
            str4 = (!z || m28383q.f26382b) ? c8566a0.f26377a.i(m28383q.f26381a, cVar) : null;
        }
        return str4;
    }

    /* renamed from: a */
    public final C8567a m28384a(String str, String str2) {
        C8567a c8567a;
        try {
            o R = this.f26377a.R(str, h.z(str2, Locale.ENGLISH));
            j jVar = this.f26377a;
            c8567a = new C8567a(R, jVar.H(R, jVar.z(R)));
        } catch (e e) {
            c8567a = null;
        }
        return c8567a;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: b */
    public String mo28189b() {
        String mo21743b = this.f26379c.mo21743b();
        l.d(mo21743b, "multiSimManager.defaultSimToken");
        return mo21743b;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: c */
    public String mo28188c(String str, String str2) {
        String str3;
        l.e(str, "number");
        l.e(str2, "countryIso");
        C8567a m28384a = m28384a(str, str2);
        if (m28384a != null) {
            j.c cVar = j.c.b;
            if (m28384a.f26382b) {
                str3 = this.f26377a.i(m28384a.f26381a, cVar);
                return str3;
            }
        }
        str3 = null;
        return str3;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: d */
    public String mo28187d(String str, String str2) {
        l.e(str, "number");
        l.e(str2, "simToken");
        return m28382r(this, str, j.c.a, null, str2, false, 10);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: e */
    public String mo28186e(String str, String str2, boolean z) {
        l.e(str, "number");
        l.e(str2, "simToken");
        return m28382r(this, str, j.c.a, null, str2, z, 2);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: f */
    public o mo28185f(String str) {
        o oVar;
        l.e(str, "number");
        if (r.p(str)) {
            oVar = null;
        } else {
            C8567a m28383q = m28383q(str, null, null);
            oVar = null;
            if (m28383q != null) {
                oVar = m28383q.f26381a;
            }
        }
        return oVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r3.f26378b.b(r0) != false) goto L8;
     */
    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo28184g(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "number"
            s1.z.c.l.e(r0, r1)
            r0 = r3
            r1 = r4
            e.m.f.a.o r0 = r0.mo28185f(r1)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L2e
            r0 = r3
            e.m.f.a.j r0 = r0.f26377a
            r1 = r4
            boolean r0 = r0.G(r1)
            if (r0 != 0) goto L2c
            r0 = r5
            r6 = r0
            r0 = r3
            e.m.f.a.p r0 = r0.f26378b
            r1 = r4
            boolean r0 = r0.b(r1)
            if (r0 == 0) goto L2e
        L2c:
            r0 = 1
            r6 = r0
        L2e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p430q.C8566a0.mo28184g(java.lang.String):boolean");
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: h */
    public Collection<o> mo28183h(Collection<String> collection) {
        l.e(collection, "numbers");
        return x.r(x.l(x.f(i.h(collection), C8569c.f26384j), new C8570d()));
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: i */
    public int mo28182i(String str) {
        l.e(str, "numberStr");
        j.d dVar = j.d.l;
        String mo28176o = mo28176o();
        j.d dVar2 = dVar;
        if (!TextUtils.isEmpty(mo28176o)) {
            if (this.f26378b.a(str, mo28176o)) {
                dVar2 = j.d.c;
            } else {
                try {
                    dVar2 = this.f26377a.w(this.f26377a.R(str, mo28176o));
                    l.d(dVar2, "phoneNumberUtil.getNumberType(parsedNumber)");
                } catch (e e) {
                    e.getMessage();
                    dVar2 = dVar;
                }
            }
        }
        return C8574c0.m28355d(dVar2);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: j */
    public String mo28181j(String str) {
        l.e(str, "number");
        return m28382r(this, str, j.c.a, null, null, false, 14);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: k */
    public String mo28180k(String str) {
        String str2;
        l.e(str, "phoneNumber");
        try {
            j jVar = this.f26377a;
            str2 = jVar.z(jVar.R(str, (String) null));
        } catch (e e) {
            str2 = null;
        }
        return str2;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: l */
    public boolean mo28179l(Intent intent, Context context) {
        boolean z;
        l.e(intent, "intent");
        l.e(context, AnalyticsConstants.CONTEXT);
        if (C8574c0.m28356c(intent, context.getApplicationContext()) != null) {
            z = true;
            return z;
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: m */
    public String mo28178m(String str, String str2) {
        l.e(str, "number");
        return m28382r(this, str, j.c.c, str2, null, false, 12);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: n */
    public String mo28177n(String str, String str2, String str3) {
        l.e(str, "number");
        l.e(str2, "simToken");
        return m28382r(this, str, j.c.a, str3, str2, false, 8);
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: o */
    public String mo28176o() {
        return this.f26380d.mo28578f();
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8621z
    /* renamed from: p */
    public String mo28175p(String str) {
        l.e(str, "simToken");
        String mo28570n = this.f26380d.mo28570n();
        return mo28570n != null ? m28382r(this, mo28570n, j.c.a, mo28176o(), str, false, 8) : null;
    }

    /* renamed from: q */
    public final C8567a m28383q(String str, String str2, String str3) {
        if (str3 == null) {
            str3 = mo28189b();
        }
        h.a aVar = new h.a(x.f(x.h(d.k3(new String[]{str2, this.f26379c.mo21734u(str3), this.f26379c.mo21735r(str3), mo28176o()})), C8568b.f26383j));
        C8567a c8567a = null;
        while (aVar.hasNext()) {
            String str4 = (String) aVar.next();
            if (!C12864a2.m22540r(c8567a != null ? Boolean.valueOf(c8567a.f26382b) : null)) {
                C8567a m28384a = m28384a(str, str4);
                if (m28384a != null) {
                    if (!(m28384a.f26382b || c8567a == null)) {
                        m28384a = null;
                    }
                    if (m28384a != null) {
                        c8567a = m28384a;
                    }
                }
            }
        }
        return c8567a;
    }
}

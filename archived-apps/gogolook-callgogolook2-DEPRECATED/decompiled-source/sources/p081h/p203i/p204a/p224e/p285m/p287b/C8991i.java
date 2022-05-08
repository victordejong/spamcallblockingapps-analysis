package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.android.gms.measurement.internal.zzh;
/* renamed from: h.i.a.e.m.b.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/i.class */
public final class C8991i extends AbstractC9055s3 {

    /* renamed from: c */
    public String f20418c;

    /* renamed from: d */
    public String f20419d;

    /* renamed from: e */
    public int f20420e;

    /* renamed from: f */
    public String f20421f;

    /* renamed from: g */
    public long f20422g;

    /* renamed from: h */
    public long f20423h;

    /* renamed from: i */
    public int f20424i;

    /* renamed from: j */
    public String f20425j;

    /* renamed from: k */
    public String f20426k;

    public C8991i(C9052s0 s0Var) {
        super(s0Var);
    }

    /* renamed from: A */
    public final String m16569A() {
        m16226v();
        return this.f20425j;
    }

    /* renamed from: B */
    public final String m16568B() {
        m16226v();
        return this.f20418c;
    }

    /* renamed from: C */
    public final String m16567C() {
        m16226v();
        return this.f20426k;
    }

    @WorkerThread
    /* renamed from: D */
    public final String m16566D() {
        try {
            Class<?> loadClass = getContext().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (loadClass == null) {
                return null;
            }
            try {
                Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, getContext());
                if (invoke == null) {
                    return null;
                }
                try {
                    return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                } catch (Exception e) {
                    mo16178c().m16370x().m16338a("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception e2) {
                mo16178c().m16371w().m16338a("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException e3) {
            return null;
        }
    }

    /* renamed from: E */
    public final int m16565E() {
        m16226v();
        return this.f20420e;
    }

    /* renamed from: F */
    public final int m16564F() {
        m16226v();
        return this.f20424i;
    }

    @WorkerThread
    /* renamed from: a */
    public final zzh m16563a(String str) {
        mo16328d();
        mo16327f();
        String B = m16568B();
        String A = m16569A();
        m16226v();
        String str2 = this.f20419d;
        long E = m16565E();
        m16226v();
        String str3 = this.f20421f;
        long n = m16349l().m16490n();
        m16226v();
        mo16328d();
        if (this.f20422g == 0) {
            this.f20422g = this.f20541a.m16274s().m16740a(getContext(), getContext().getPackageName());
        }
        long j = this.f20422g;
        boolean d = this.f20541a.m16288d();
        boolean z = m16350k().f20217v;
        mo16328d();
        mo16327f();
        String D = (!m16349l().m16497h(this.f20418c) || this.f20541a.m16288d()) ? m16566D() : null;
        m16226v();
        long j2 = this.f20423h;
        long F = this.f20541a.m16301F();
        int F2 = m16564F();
        C9008k4 l = m16349l();
        l.mo16327f();
        Boolean b = l.m16506b("google_analytics_adid_collection_enabled");
        boolean booleanValue = Boolean.valueOf(b == null || b.booleanValue()).booleanValue();
        C9008k4 l2 = m16349l();
        l2.mo16327f();
        Boolean b2 = l2.m16506b("google_analytics_ssaid_collection_enabled");
        return new zzh(B, A, str2, E, str3, n, j, str, d, !z, D, j2, F, F2, booleanValue, Boolean.valueOf(b2 == null || b2.booleanValue()).booleanValue(), m16350k().m16747y(), m16567C());
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9055s3
    /* renamed from: x */
    public final boolean mo16224x() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:2|(1:4)(8:98|5|8|(1:10)(2:11|(1:13))|92|14|15|(7:17|(1:19)(1:20)|96|21|22|23|24))|28|(1:33)(1:32)|34|(1:39)(1:38)|40|(2:42|(1:44)(1:45))|46|(2:48|(2:50|(1:52))(2:53|(2:60|(12:65|67|(1:71)|94|72|(2:74|75)(1:76)|77|(1:79)|80|(1:82)|85|(2:87|88)(2:89|90))(1:64))(2:57|(1:59))))|66|67|(2:69|71)|94|72|(0)(0)|77|(0)|80|(0)|85|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02c2, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02c4, code lost:
        mo16178c().m16375s().m16336a("getGoogleAppId or isMeasurementEnabled failed with exception. appId", p081h.p203i.p204a.p224e.p285m.p287b.C9027o.m16380a(r0), r14);
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x028b A[Catch: IllegalStateException -> 0x02c2, TryCatch #1 {IllegalStateException -> 0x02c2, blocks: (B:72:0x0269, B:77:0x027e, B:79:0x028b, B:82:0x02aa), top: B:94:0x0269 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02aa A[Catch: IllegalStateException -> 0x02c2, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IllegalStateException -> 0x02c2, blocks: (B:72:0x0269, B:77:0x027e, B:79:0x028b, B:82:0x02aa), top: B:94:0x0269 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02eb  */
    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9055s3
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo16223y() {
        /*
            Method dump skipped, instructions count: 758
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C8991i.mo16223y():void");
    }
}

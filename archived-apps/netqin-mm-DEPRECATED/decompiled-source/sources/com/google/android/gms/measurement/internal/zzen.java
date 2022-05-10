package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zznv;
import com.google.android.gms.internal.measurement.zzpg;
import java.util.List;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4737k3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzen.class */
public final class zzen extends AbstractC4827u3 {

    /* renamed from: c */
    public String f29919c;

    /* renamed from: d */
    public String f29920d;

    /* renamed from: e */
    public int f29921e;

    /* renamed from: f */
    public String f29922f;

    /* renamed from: g */
    public long f29923g;

    /* renamed from: h */
    public long f29924h;

    /* renamed from: i */
    public List<String> f29925i;

    /* renamed from: j */
    public int f29926j;

    /* renamed from: k */
    public String f29927k;

    /* renamed from: l */
    public String f29928l;

    /* renamed from: m */
    public String f29929m;

    public zzen(zzfu zzfuVar, long j) {
        super(zzfuVar);
        this.f29924h = j;
    }

    /* renamed from: A */
    public final String m9183A() {
        m24876t();
        return this.f29927k;
    }

    /* renamed from: C */
    public final String m9182C() {
        m24876t();
        return this.f29928l;
    }

    /* renamed from: D */
    public final String m9181D() {
        m24876t();
        return this.f29929m;
    }

    /* renamed from: E */
    public final int m9180E() {
        m24876t();
        return this.f29921e;
    }

    /* renamed from: F */
    public final int m9179F() {
        m24876t();
        return this.f29926j;
    }

    /* renamed from: G */
    public final List<String> m9178G() {
        return this.f29925i;
    }

    @VisibleForTesting
    /* renamed from: H */
    public final String m9177H() {
        if (!zzpg.m9460a() || !m24897h().m9354a(zzas.f29880l0)) {
            try {
                Class<?> loadClass = mo8846B().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                if (loadClass == null) {
                    return null;
                }
                try {
                    Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, mo8846B());
                    if (invoke == null) {
                        return null;
                    }
                    try {
                        return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                    } catch (Exception e) {
                        mo8789p().m9147v().m9143a("Failed to retrieve Firebase Instance Id");
                        return null;
                    }
                } catch (Exception e2) {
                    mo8789p().m9148u().m9143a("Failed to obtain Firebase Analytics instance");
                    return null;
                }
            } catch (ClassNotFoundException e3) {
                return null;
            }
        } else {
            mo8789p().m9144y().m9143a("Disabled IID for tests.");
            return null;
        }
    }

    /* renamed from: a */
    public final zzn m9176a(String str) {
        mo9085c();
        String y = m9174y();
        String A = m9183A();
        m24876t();
        String str2 = this.f29920d;
        long E = m9180E();
        m24876t();
        String str3 = this.f29922f;
        m24876t();
        mo9085c();
        if (this.f29923g == 0) {
            this.f29923g = this.f17262a.m9044s().m8740a(mo8846B(), mo8846B().getPackageName());
        }
        long j = this.f29923g;
        boolean c = this.f17262a.m9058c();
        boolean z = m24898g().f17228v;
        mo9085c();
        String H = !this.f17262a.m9058c() ? null : m9177H();
        zzfu zzfuVar = this.f17262a;
        Long valueOf = Long.valueOf(zzfuVar.m9050l().f17216j.m9131a());
        long min = valueOf.longValue() == 0 ? zzfuVar.f30007G : Math.min(zzfuVar.f30007G, valueOf.longValue());
        int F = m9179F();
        boolean booleanValue = m24897h().m9332m().booleanValue();
        Boolean f = m24897h().m9341f("google_analytics_ssaid_collection_enabled");
        boolean booleanValue2 = Boolean.valueOf(f == null || f.booleanValue()).booleanValue();
        C4737k3 g = m24898g();
        g.mo9085c();
        boolean z2 = g.m24919q().getBoolean("deferred_analytics_collection", false);
        String C = m9182C();
        Boolean f2 = m24897h().m9341f("google_analytics_default_allow_ad_personalization_signals");
        return new zzn(y, A, str2, E, str3, 33025L, j, str, c, !z, H, 0L, min, F, booleanValue, booleanValue2, z2, C, f2 == null ? null : Boolean.valueOf(true ^ f2.booleanValue()), this.f29924h, this.f29925i, (!zznv.m9491a() || !m24897h().m9354a(zzas.f29876j0)) ? null : m9181D(), (!zzml.m9520a() || !m24897h().m9354a(zzas.f29831H0)) ? "" : m24898g().m24911y().m9322a());
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3
    /* renamed from: w */
    public final boolean mo8854w() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(32:2|(1:4)(8:137|5|8|(1:10)(2:11|(1:13))|139|14|15|(7:17|(1:19)(1:20)|135|21|22|23|24))|30|(1:35)(1:34)|36|(1:41)(1:40)|42|(2:44|(1:46)(1:47))|48|(4:50|51|62|(19:64|66|(1:68)|133|69|(1:74)(1:73)|75|76|(2:78|79)(1:80)|81|(2:96|(1:98))(4:85|(2:87|88)(1:89)|90|(2:94|95))|99|(4:101|(1:103)(1:104)|105|106)|109|(3:111|(1:113)(3:115|(2:116|(1:118)(1:142))|141)|114)|120|(1:122)|123|(2:125|(2:127|128)(2:129|130))(2:131|132)))|65|66|(0)|133|69|(1:71)|74|75|76|(0)(0)|81|(1:83)|96|(0)|99|(0)|109|(0)|120|(0)|123|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x03cf, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x03d1, code lost:
        mo8789p().m9152q().m9141a("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzeq.m9157a(r0), r14);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x039a A[Catch: IllegalStateException -> 0x03cf, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c3), top: B:133:0x02d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02d7 A[Catch: IllegalStateException -> 0x03cf, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c3), top: B:133:0x02d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0319 A[Catch: IllegalStateException -> 0x03cf, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c3), top: B:133:0x02d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x037b A[Catch: IllegalStateException -> 0x03cf, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c3), top: B:133:0x02d1 }] */
    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9175x() {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzen.mo9175x():void");
    }

    /* renamed from: y */
    public final String m9174y() {
        m24876t();
        return this.f29919c;
    }
}

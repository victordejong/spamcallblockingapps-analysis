package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.dy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dy.class */
public final class C2744dy {

    /* renamed from: A */
    private long f16726A;

    /* renamed from: B */
    private long f16727B;

    /* renamed from: C */
    private long f16728C;

    /* renamed from: D */
    private String f16729D;

    /* renamed from: E */
    private boolean f16730E;

    /* renamed from: F */
    private long f16731F;

    /* renamed from: G */
    private long f16732G;

    /* renamed from: a */
    private final zzga f16733a;

    /* renamed from: b */
    private final String f16734b;

    /* renamed from: c */
    private String f16735c;

    /* renamed from: d */
    private String f16736d;

    /* renamed from: e */
    private String f16737e;

    /* renamed from: f */
    private String f16738f;

    /* renamed from: g */
    private long f16739g;

    /* renamed from: h */
    private long f16740h;

    /* renamed from: i */
    private long f16741i;

    /* renamed from: j */
    private String f16742j;

    /* renamed from: k */
    private long f16743k;

    /* renamed from: l */
    private String f16744l;

    /* renamed from: m */
    private long f16745m;

    /* renamed from: n */
    private long f16746n;

    /* renamed from: o */
    private boolean f16747o;

    /* renamed from: p */
    private long f16748p;

    /* renamed from: q */
    private boolean f16749q;

    /* renamed from: r */
    private boolean f16750r;

    /* renamed from: s */
    private String f16751s;

    /* renamed from: t */
    private Boolean f16752t;

    /* renamed from: u */
    private long f16753u;

    /* renamed from: v */
    private List<String> f16754v;

    /* renamed from: w */
    private String f16755w;

    /* renamed from: x */
    private long f16756x;

    /* renamed from: y */
    private long f16757y;

    /* renamed from: z */
    private long f16758z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2744dy(zzga zzgaVar, String str) {
        Preconditions.checkNotNull(zzgaVar);
        Preconditions.checkNotEmpty(str);
        this.f16733a = zzgaVar;
        this.f16734b = str;
        this.f16733a.zzq().zzd();
    }

    /* renamed from: A */
    public final long m2122A() {
        this.f16733a.zzq().zzd();
        return this.f16728C;
    }

    /* renamed from: B */
    public final long m2121B() {
        this.f16733a.zzq().zzd();
        return this.f16727B;
    }

    /* renamed from: C */
    public final String m2120C() {
        this.f16733a.zzq().zzd();
        return this.f16729D;
    }

    /* renamed from: D */
    public final String m2119D() {
        this.f16733a.zzq().zzd();
        String str = this.f16729D;
        m2082i((String) null);
        return str;
    }

    /* renamed from: E */
    public final long m2118E() {
        this.f16733a.zzq().zzd();
        return this.f16748p;
    }

    /* renamed from: F */
    public final boolean m2117F() {
        this.f16733a.zzq().zzd();
        return this.f16749q;
    }

    /* renamed from: G */
    public final boolean m2116G() {
        this.f16733a.zzq().zzd();
        return this.f16750r;
    }

    /* renamed from: H */
    public final Boolean m2115H() {
        this.f16733a.zzq().zzd();
        return this.f16752t;
    }

    /* renamed from: I */
    public final List<String> m2114I() {
        this.f16733a.zzq().zzd();
        return this.f16754v;
    }

    /* renamed from: a */
    public final void m2112a(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16740h != j;
        this.f16740h = j;
    }

    /* renamed from: a */
    public final void m2111a(Boolean bool) {
        this.f16733a.zzq().zzd();
        this.f16730E |= !zzkm.m1633a(this.f16752t, bool);
        this.f16752t = bool;
    }

    /* renamed from: a */
    public final void m2110a(String str) {
        this.f16733a.zzq().zzd();
        this.f16730E |= !zzkm.m1609c(this.f16735c, str);
        this.f16735c = str;
    }

    /* renamed from: a */
    public final void m2109a(List<String> list) {
        this.f16733a.zzq().zzd();
        if (!zzkm.m1620a(this.f16754v, list)) {
            this.f16730E = true;
            this.f16754v = list != null ? new ArrayList(list) : null;
        }
    }

    /* renamed from: a */
    public final void m2108a(boolean z) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16747o != z;
        this.f16747o = z;
    }

    /* renamed from: a */
    public final boolean m2113a() {
        this.f16733a.zzq().zzd();
        return this.f16730E;
    }

    /* renamed from: b */
    public final void m2107b() {
        this.f16733a.zzq().zzd();
        this.f16730E = false;
    }

    /* renamed from: b */
    public final void m2106b(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16741i != j;
        this.f16741i = j;
    }

    /* renamed from: b */
    public final void m2105b(String str) {
        this.f16733a.zzq().zzd();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f16730E |= !zzkm.m1609c(this.f16736d, str2);
        this.f16736d = str2;
    }

    /* renamed from: b */
    public final void m2104b(boolean z) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16749q != z;
        this.f16749q = z;
    }

    /* renamed from: c */
    public final String m2103c() {
        this.f16733a.zzq().zzd();
        return this.f16734b;
    }

    /* renamed from: c */
    public final void m2102c(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16743k != j;
        this.f16743k = j;
    }

    /* renamed from: c */
    public final void m2101c(String str) {
        this.f16733a.zzq().zzd();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f16730E |= !zzkm.m1609c(this.f16751s, str2);
        this.f16751s = str2;
    }

    /* renamed from: c */
    public final void m2100c(boolean z) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16750r != z;
        this.f16750r = z;
    }

    /* renamed from: d */
    public final String m2099d() {
        this.f16733a.zzq().zzd();
        return this.f16735c;
    }

    /* renamed from: d */
    public final void m2098d(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16745m != j;
        this.f16745m = j;
    }

    /* renamed from: d */
    public final void m2097d(String str) {
        this.f16733a.zzq().zzd();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f16730E |= !zzkm.m1609c(this.f16755w, str2);
        this.f16755w = str2;
    }

    /* renamed from: e */
    public final String m2096e() {
        this.f16733a.zzq().zzd();
        return this.f16736d;
    }

    /* renamed from: e */
    public final void m2095e(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16746n != j;
        this.f16746n = j;
    }

    /* renamed from: e */
    public final void m2094e(String str) {
        this.f16733a.zzq().zzd();
        this.f16730E |= !zzkm.m1609c(this.f16737e, str);
        this.f16737e = str;
    }

    /* renamed from: f */
    public final String m2093f() {
        this.f16733a.zzq().zzd();
        return this.f16751s;
    }

    /* renamed from: f */
    public final void m2092f(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16753u != j;
        this.f16753u = j;
    }

    /* renamed from: f */
    public final void m2091f(String str) {
        this.f16733a.zzq().zzd();
        this.f16730E |= !zzkm.m1609c(this.f16738f, str);
        this.f16738f = str;
    }

    /* renamed from: g */
    public final String m2090g() {
        this.f16733a.zzq().zzd();
        return this.f16755w;
    }

    /* renamed from: g */
    public final void m2089g(long j) {
        boolean z = true;
        Preconditions.checkArgument(j >= 0);
        this.f16733a.zzq().zzd();
        boolean z2 = this.f16730E;
        if (this.f16739g == j) {
            z = false;
        }
        this.f16730E = z2 | z;
        this.f16739g = j;
    }

    /* renamed from: g */
    public final void m2088g(String str) {
        this.f16733a.zzq().zzd();
        this.f16730E |= !zzkm.m1609c(this.f16742j, str);
        this.f16742j = str;
    }

    /* renamed from: h */
    public final String m2087h() {
        this.f16733a.zzq().zzd();
        return this.f16737e;
    }

    /* renamed from: h */
    public final void m2086h(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16731F != j;
        this.f16731F = j;
    }

    /* renamed from: h */
    public final void m2085h(String str) {
        this.f16733a.zzq().zzd();
        this.f16730E |= !zzkm.m1609c(this.f16744l, str);
        this.f16744l = str;
    }

    /* renamed from: i */
    public final String m2084i() {
        this.f16733a.zzq().zzd();
        return this.f16738f;
    }

    /* renamed from: i */
    public final void m2083i(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16732G != j;
        this.f16732G = j;
    }

    /* renamed from: i */
    public final void m2082i(String str) {
        this.f16733a.zzq().zzd();
        this.f16730E |= !zzkm.m1609c(this.f16729D, str);
        this.f16729D = str;
    }

    /* renamed from: j */
    public final long m2081j() {
        this.f16733a.zzq().zzd();
        return this.f16740h;
    }

    /* renamed from: j */
    public final void m2080j(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16756x != j;
        this.f16756x = j;
    }

    /* renamed from: k */
    public final long m2079k() {
        this.f16733a.zzq().zzd();
        return this.f16741i;
    }

    /* renamed from: k */
    public final void m2078k(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16757y != j;
        this.f16757y = j;
    }

    /* renamed from: l */
    public final String m2077l() {
        this.f16733a.zzq().zzd();
        return this.f16742j;
    }

    /* renamed from: l */
    public final void m2076l(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16758z != j;
        this.f16758z = j;
    }

    /* renamed from: m */
    public final long m2075m() {
        this.f16733a.zzq().zzd();
        return this.f16743k;
    }

    /* renamed from: m */
    public final void m2074m(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16726A != j;
        this.f16726A = j;
    }

    /* renamed from: n */
    public final String m2073n() {
        this.f16733a.zzq().zzd();
        return this.f16744l;
    }

    /* renamed from: n */
    public final void m2072n(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16728C != j;
        this.f16728C = j;
    }

    /* renamed from: o */
    public final long m2071o() {
        this.f16733a.zzq().zzd();
        return this.f16745m;
    }

    /* renamed from: o */
    public final void m2070o(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16727B != j;
        this.f16727B = j;
    }

    /* renamed from: p */
    public final long m2069p() {
        this.f16733a.zzq().zzd();
        return this.f16746n;
    }

    /* renamed from: p */
    public final void m2068p(long j) {
        this.f16733a.zzq().zzd();
        this.f16730E |= this.f16748p != j;
        this.f16748p = j;
    }

    /* renamed from: q */
    public final long m2067q() {
        this.f16733a.zzq().zzd();
        return this.f16753u;
    }

    /* renamed from: r */
    public final boolean m2066r() {
        this.f16733a.zzq().zzd();
        return this.f16747o;
    }

    /* renamed from: s */
    public final long m2065s() {
        this.f16733a.zzq().zzd();
        return this.f16739g;
    }

    /* renamed from: t */
    public final long m2064t() {
        this.f16733a.zzq().zzd();
        return this.f16731F;
    }

    /* renamed from: u */
    public final long m2063u() {
        this.f16733a.zzq().zzd();
        return this.f16732G;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2062v() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzga r0 = r0.f16733a
            com.google.android.gms.measurement.internal.zzft r0 = r0.zzq()
            r0.zzd()
            r0 = r5
            long r0 = r0.f16739g
            r1 = 1
            long r0 = r0 + r1
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0033
            r0 = r5
            com.google.android.gms.measurement.internal.zzga r0 = r0.f16733a
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzi()
            java.lang.String r1 = "Bundle index overflow. appId"
            r2 = r5
            java.lang.String r2 = r2.f16734b
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzew.m1855a(r2)
            r0.zza(r1, r2)
            r0 = 0
            r8 = r0
        L_0x0033:
            r0 = r5
            r1 = 1
            r0.f16730E = r1
            r0 = r5
            r1 = r8
            r0.f16739g = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2744dy.m2062v():void");
    }

    /* renamed from: w */
    public final long m2061w() {
        this.f16733a.zzq().zzd();
        return this.f16756x;
    }

    /* renamed from: x */
    public final long m2060x() {
        this.f16733a.zzq().zzd();
        return this.f16757y;
    }

    /* renamed from: y */
    public final long m2059y() {
        this.f16733a.zzq().zzd();
        return this.f16758z;
    }

    /* renamed from: z */
    public final long m2058z() {
        this.f16733a.zzq().zzd();
        return this.f16726A;
    }
}

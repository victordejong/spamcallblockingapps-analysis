package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzf.class */
public final class zzf {

    /* renamed from: A */
    private long f9142A;

    /* renamed from: B */
    private long f9143B;

    /* renamed from: C */
    private long f9144C;

    /* renamed from: D */
    private String f9145D;

    /* renamed from: E */
    private boolean f9146E;

    /* renamed from: F */
    private long f9147F;

    /* renamed from: G */
    private long f9148G;

    /* renamed from: a */
    private final zzfv f9149a;

    /* renamed from: b */
    private final String f9150b;

    /* renamed from: c */
    private String f9151c;

    /* renamed from: d */
    private String f9152d;

    /* renamed from: e */
    private String f9153e;

    /* renamed from: f */
    private String f9154f;

    /* renamed from: g */
    private long f9155g;

    /* renamed from: h */
    private long f9156h;

    /* renamed from: i */
    private long f9157i;

    /* renamed from: j */
    private String f9158j;

    /* renamed from: k */
    private long f9159k;

    /* renamed from: l */
    private String f9160l;

    /* renamed from: m */
    private long f9161m;

    /* renamed from: n */
    private long f9162n;

    /* renamed from: o */
    private boolean f9163o;

    /* renamed from: p */
    private long f9164p;

    /* renamed from: q */
    private boolean f9165q;

    /* renamed from: r */
    private boolean f9166r;

    /* renamed from: s */
    private String f9167s;

    /* renamed from: t */
    private Boolean f9168t;

    /* renamed from: u */
    private long f9169u;

    /* renamed from: v */
    private List<String> f9170v;

    /* renamed from: w */
    private String f9171w;

    /* renamed from: x */
    private long f9172x;

    /* renamed from: y */
    private long f9173y;

    /* renamed from: z */
    private long f9174z;

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public zzf(zzfv zzfvVar, String str) {
        Preconditions.m14523k(zzfvVar);
        Preconditions.m14527g(str);
        this.f9149a = zzfvVar;
        this.f9150b = str;
        zzfvVar.mo11083b().mo11316e();
    }

    @WorkerThread
    /* renamed from: A */
    public final String m11530A() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9152d;
    }

    @WorkerThread
    /* renamed from: B */
    public final void m11529B(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9162n != j;
        this.f9162n = j;
    }

    @WorkerThread
    /* renamed from: C */
    public final void m11528C(String str) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= !zzkw.m10930z0(this.f9153e, str);
        this.f9153e = str;
    }

    @WorkerThread
    /* renamed from: D */
    public final String m11527D() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9167s;
    }

    @WorkerThread
    /* renamed from: E */
    public final void m11526E(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9169u != j;
        this.f9169u = j;
    }

    @WorkerThread
    /* renamed from: F */
    public final void m11525F(String str) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= !zzkw.m10930z0(this.f9154f, str);
        this.f9154f = str;
    }

    @WorkerThread
    /* renamed from: G */
    public final String m11524G() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9171w;
    }

    @WorkerThread
    /* renamed from: H */
    public final void m11523H(long j) {
        boolean z = true;
        Preconditions.m14533a(j >= 0);
        this.f9149a.mo11083b().mo11316e();
        boolean z2 = this.f9146E;
        if (this.f9155g == j) {
            z = false;
        }
        this.f9146E = z | z2;
        this.f9155g = j;
    }

    @WorkerThread
    /* renamed from: I */
    public final void m11522I(String str) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= !zzkw.m10930z0(this.f9158j, str);
        this.f9158j = str;
    }

    @WorkerThread
    /* renamed from: J */
    public final String m11521J() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9153e;
    }

    @WorkerThread
    /* renamed from: K */
    public final void m11520K(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9147F != j;
        this.f9147F = j;
    }

    @WorkerThread
    /* renamed from: L */
    public final void m11519L(String str) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= !zzkw.m10930z0(this.f9160l, str);
        this.f9160l = str;
    }

    @WorkerThread
    /* renamed from: M */
    public final String m11518M() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9154f;
    }

    @WorkerThread
    /* renamed from: N */
    public final void m11517N(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9148G != j;
        this.f9148G = j;
    }

    @WorkerThread
    /* renamed from: O */
    public final void m11516O(String str) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= !zzkw.m10930z0(this.f9145D, str);
        this.f9145D = str;
    }

    @WorkerThread
    /* renamed from: P */
    public final long m11515P() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9156h;
    }

    @WorkerThread
    /* renamed from: Q */
    public final void m11514Q(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9172x != j;
        this.f9172x = j;
    }

    @WorkerThread
    /* renamed from: R */
    public final long m11513R() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9157i;
    }

    @WorkerThread
    /* renamed from: S */
    public final void m11512S(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9173y != j;
        this.f9173y = j;
    }

    @WorkerThread
    /* renamed from: T */
    public final String m11511T() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9158j;
    }

    @WorkerThread
    /* renamed from: U */
    public final void m11510U(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9174z != j;
        this.f9174z = j;
    }

    @WorkerThread
    /* renamed from: V */
    public final long m11509V() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9159k;
    }

    @WorkerThread
    /* renamed from: W */
    public final void m11508W(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9142A != j;
        this.f9142A = j;
    }

    @WorkerThread
    /* renamed from: X */
    public final String m11507X() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9160l;
    }

    @WorkerThread
    /* renamed from: Y */
    public final void m11506Y(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9144C != j;
        this.f9144C = j;
    }

    @WorkerThread
    /* renamed from: Z */
    public final long m11505Z() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9161m;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m11504a(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9156h != j;
        this.f9156h = j;
    }

    @WorkerThread
    /* renamed from: a0 */
    public final void m11503a0(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9143B != j;
        this.f9143B = j;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m11502b(Boolean bool) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= !zzkw.m10965a0(this.f9168t, bool);
        this.f9168t = bool;
    }

    @WorkerThread
    /* renamed from: b0 */
    public final long m11501b0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9162n;
    }

    @WorkerThread
    /* renamed from: c */
    public final void m11500c(String str) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= !zzkw.m10930z0(this.f9151c, str);
        this.f9151c = str;
    }

    @WorkerThread
    /* renamed from: c0 */
    public final void m11499c0(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9164p != j;
        this.f9164p = j;
    }

    @WorkerThread
    /* renamed from: d */
    public final void m11498d(@Nullable List<String> list) {
        this.f9149a.mo11083b().mo11316e();
        if (!zzkw.m10952m0(this.f9170v, list)) {
            this.f9146E = true;
            this.f9170v = list != null ? new ArrayList(list) : null;
        }
    }

    @WorkerThread
    /* renamed from: d0 */
    public final long m11497d0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9169u;
    }

    @WorkerThread
    /* renamed from: e */
    public final void m11496e(boolean z) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9163o != z;
        this.f9163o = z;
    }

    @WorkerThread
    /* renamed from: e0 */
    public final boolean m11495e0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9163o;
    }

    @WorkerThread
    /* renamed from: f */
    public final boolean m11494f() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9146E;
    }

    @WorkerThread
    /* renamed from: f0 */
    public final long m11493f0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9155g;
    }

    @WorkerThread
    /* renamed from: g */
    public final long m11492g() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9144C;
    }

    @WorkerThread
    /* renamed from: g0 */
    public final long m11491g0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9147F;
    }

    @WorkerThread
    /* renamed from: h */
    public final long m11490h() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9143B;
    }

    @WorkerThread
    /* renamed from: h0 */
    public final long m11489h0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9148G;
    }

    @WorkerThread
    /* renamed from: i */
    public final String m11488i() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9145D;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.WorkerThread
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11487i0() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9149a
            com.google.android.gms.measurement.internal.zzfo r0 = r0.mo11083b()
            r0.mo11316e()
            r0 = r5
            long r0 = r0.f9155g
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
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9149a
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11557G()
            java.lang.String r1 = "Bundle index overflow. appId"
            r2 = r5
            java.lang.String r2 = r2.f9150b
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzer.m11546v(r2)
            r0.m11539b(r1, r2)
            r0 = 0
            r8 = r0
        L_0x0033:
            r0 = r5
            r1 = 1
            r0.f9146E = r1
            r0 = r5
            r1 = r8
            r0.f9155g = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzf.m11487i0():void");
    }

    @WorkerThread
    /* renamed from: j */
    public final String m11486j() {
        this.f9149a.mo11083b().mo11316e();
        String str = this.f9145D;
        m11516O(null);
        return str;
    }

    @WorkerThread
    /* renamed from: j0 */
    public final long m11485j0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9172x;
    }

    @WorkerThread
    /* renamed from: k */
    public final long m11484k() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9164p;
    }

    @WorkerThread
    /* renamed from: k0 */
    public final long m11483k0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9173y;
    }

    @WorkerThread
    /* renamed from: l */
    public final boolean m11482l() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9165q;
    }

    @WorkerThread
    /* renamed from: l0 */
    public final long m11481l0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9174z;
    }

    @WorkerThread
    /* renamed from: m */
    public final boolean m11480m() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9166r;
    }

    @WorkerThread
    /* renamed from: m0 */
    public final long m11479m0() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9142A;
    }

    @WorkerThread
    /* renamed from: n */
    public final Boolean m11478n() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9168t;
    }

    @Nullable
    @WorkerThread
    /* renamed from: o */
    public final List<String> m11477o() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9170v;
    }

    @WorkerThread
    /* renamed from: p */
    public final void m11476p() {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E = false;
    }

    @WorkerThread
    /* renamed from: q */
    public final void m11475q(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9157i != j;
        this.f9157i = j;
    }

    @WorkerThread
    /* renamed from: r */
    public final void m11474r(String str) {
        this.f9149a.mo11083b().mo11316e();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f9146E |= !zzkw.m10930z0(this.f9152d, str2);
        this.f9152d = str2;
    }

    @WorkerThread
    /* renamed from: s */
    public final void m11473s(boolean z) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9165q != z;
        this.f9165q = z;
    }

    @WorkerThread
    /* renamed from: t */
    public final String m11472t() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9150b;
    }

    @WorkerThread
    /* renamed from: u */
    public final void m11471u(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9159k != j;
        this.f9159k = j;
    }

    @WorkerThread
    /* renamed from: v */
    public final void m11470v(String str) {
        this.f9149a.mo11083b().mo11316e();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f9146E |= !zzkw.m10930z0(this.f9167s, str2);
        this.f9167s = str2;
    }

    @WorkerThread
    /* renamed from: w */
    public final void m11469w(boolean z) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9166r != z;
        this.f9166r = z;
    }

    @WorkerThread
    /* renamed from: x */
    public final String m11468x() {
        this.f9149a.mo11083b().mo11316e();
        return this.f9151c;
    }

    @WorkerThread
    /* renamed from: y */
    public final void m11467y(long j) {
        this.f9149a.mo11083b().mo11316e();
        this.f9146E |= this.f9161m != j;
        this.f9161m = j;
    }

    @WorkerThread
    /* renamed from: z */
    public final void m11466z(String str) {
        this.f9149a.mo11083b().mo11316e();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f9146E |= !zzkw.m10930z0(this.f9171w, str2);
        this.f9171w = str2;
    }
}

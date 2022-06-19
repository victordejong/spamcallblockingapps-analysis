package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C0931r;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.g5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g5.class */
final class C1513g5 {

    /* renamed from: A */
    private long f4257A;

    /* renamed from: B */
    private long f4258B;

    /* renamed from: C */
    private String f4259C;

    /* renamed from: D */
    private boolean f4260D;

    /* renamed from: E */
    private long f4261E;

    /* renamed from: F */
    private long f4262F;

    /* renamed from: a */
    private final r4 f4263a;

    /* renamed from: b */
    private final String f4264b;

    /* renamed from: c */
    private String f4265c;

    /* renamed from: d */
    private String f4266d;

    /* renamed from: e */
    private String f4267e;

    /* renamed from: f */
    private String f4268f;

    /* renamed from: g */
    private long f4269g;

    /* renamed from: h */
    private long f4270h;

    /* renamed from: i */
    private long f4271i;

    /* renamed from: j */
    private String f4272j;

    /* renamed from: k */
    private long f4273k;

    /* renamed from: l */
    private String f4274l;

    /* renamed from: m */
    private long f4275m;

    /* renamed from: n */
    private long f4276n;

    /* renamed from: o */
    private boolean f4277o;

    /* renamed from: p */
    private long f4278p;

    /* renamed from: q */
    private boolean f4279q;

    /* renamed from: r */
    private String f4280r;

    /* renamed from: s */
    private Boolean f4281s;

    /* renamed from: t */
    private long f4282t;

    /* renamed from: u */
    private List<String> f4283u;

    /* renamed from: v */
    private String f4284v;

    /* renamed from: w */
    private long f4285w;

    /* renamed from: x */
    private long f4286x;

    /* renamed from: y */
    private long f4287y;

    /* renamed from: z */
    private long f4288z;

    C1513g5(r4 r4Var, String str) {
        C0931r.m3308k(r4Var);
        C0931r.m3312g(str);
        this.f4263a = r4Var;
        this.f4264b = str;
        r4Var.e().h();
    }

    /* renamed from: A */
    public final boolean m1651A() {
        this.f4263a.e().h();
        return this.f4260D;
    }

    /* renamed from: B */
    public final String m1650B() {
        this.f4263a.e().h();
        return this.f4259C;
    }

    /* renamed from: C */
    public final String m1649C() {
        this.f4263a.e().h();
        String str = this.f4259C;
        m1648D(null);
        return str;
    }

    /* renamed from: D */
    public final void m1648D(String str) {
        this.f4263a.e().h();
        this.f4260D |= !t9.G(this.f4259C, str);
        this.f4259C = str;
    }

    /* renamed from: E */
    public final long m1647E() {
        this.f4263a.e().h();
        return this.f4278p;
    }

    /* renamed from: F */
    public final void m1646F(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4278p != j;
        this.f4278p = j;
    }

    /* renamed from: G */
    public final boolean m1645G() {
        this.f4263a.e().h();
        return this.f4279q;
    }

    /* renamed from: H */
    public final void m1644H(boolean z) {
        this.f4263a.e().h();
        this.f4260D |= this.f4279q != z;
        this.f4279q = z;
    }

    /* renamed from: I */
    public final Boolean m1643I() {
        this.f4263a.e().h();
        return this.f4281s;
    }

    /* renamed from: J */
    public final void m1642J(Boolean bool) {
        this.f4263a.e().h();
        boolean z = this.f4260D;
        Boolean bool2 = this.f4281s;
        int i = t9.i;
        this.f4260D = z | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.f4281s = bool;
    }

    /* renamed from: K */
    public final List<String> m1641K() {
        this.f4263a.e().h();
        return this.f4283u;
    }

    /* renamed from: L */
    public final void m1640L(List<String> list) {
        this.f4263a.e().h();
        List<String> list2 = this.f4283u;
        int i = t9.i;
        if (list2 == null && list == null) {
            return;
        }
        if (list2 != null && list2.equals(list)) {
            return;
        }
        this.f4260D = true;
        this.f4283u = list != null ? new ArrayList(list) : null;
    }

    /* renamed from: M */
    public final void m1639M() {
        this.f4263a.e().h();
        this.f4260D = false;
    }

    /* renamed from: N */
    public final String m1638N() {
        this.f4263a.e().h();
        return this.f4264b;
    }

    /* renamed from: O */
    public final String m1637O() {
        this.f4263a.e().h();
        return this.f4265c;
    }

    /* renamed from: P */
    public final void m1636P(String str) {
        this.f4263a.e().h();
        this.f4260D |= !t9.G(this.f4265c, str);
        this.f4265c = str;
    }

    /* renamed from: Q */
    public final String m1635Q() {
        this.f4263a.e().h();
        return this.f4266d;
    }

    /* renamed from: R */
    public final void m1634R(String str) {
        this.f4263a.e().h();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f4260D |= true ^ t9.G(this.f4266d, str2);
        this.f4266d = str2;
    }

    /* renamed from: S */
    public final String m1633S() {
        this.f4263a.e().h();
        return this.f4280r;
    }

    /* renamed from: T */
    public final void m1632T(String str) {
        this.f4263a.e().h();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f4260D |= true ^ t9.G(this.f4280r, str2);
        this.f4280r = str2;
    }

    /* renamed from: U */
    public final String m1631U() {
        this.f4263a.e().h();
        return this.f4284v;
    }

    /* renamed from: V */
    public final void m1630V(String str) {
        this.f4263a.e().h();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f4260D |= true ^ t9.G(this.f4284v, str2);
        this.f4284v = str2;
    }

    /* renamed from: W */
    public final String m1629W() {
        this.f4263a.e().h();
        return this.f4267e;
    }

    /* renamed from: X */
    public final void m1628X(String str) {
        this.f4263a.e().h();
        this.f4260D |= !t9.G(this.f4267e, str);
        this.f4267e = str;
    }

    /* renamed from: Y */
    public final String m1627Y() {
        this.f4263a.e().h();
        return this.f4268f;
    }

    /* renamed from: Z */
    public final void m1626Z(String str) {
        this.f4263a.e().h();
        this.f4260D |= !t9.G(this.f4268f, str);
        this.f4268f = str;
    }

    /* renamed from: a */
    public final void m1625a(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4275m != j;
        this.f4275m = j;
    }

    /* renamed from: a0 */
    public final long m1624a0() {
        this.f4263a.e().h();
        return this.f4270h;
    }

    /* renamed from: b */
    public final long m1623b() {
        this.f4263a.e().h();
        return this.f4276n;
    }

    /* renamed from: b0 */
    public final void m1622b0(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4270h != j;
        this.f4270h = j;
    }

    /* renamed from: c */
    public final void m1621c(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4276n != j;
        this.f4276n = j;
    }

    /* renamed from: c0 */
    public final long m1620c0() {
        this.f4263a.e().h();
        return this.f4271i;
    }

    /* renamed from: d */
    public final long m1619d() {
        this.f4263a.e().h();
        return this.f4282t;
    }

    /* renamed from: d0 */
    public final void m1618d0(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4271i != j;
        this.f4271i = j;
    }

    /* renamed from: e */
    public final void m1617e(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4282t != j;
        this.f4282t = j;
    }

    /* renamed from: e0 */
    public final String m1616e0() {
        this.f4263a.e().h();
        return this.f4272j;
    }

    /* renamed from: f */
    public final boolean m1615f() {
        this.f4263a.e().h();
        return this.f4277o;
    }

    /* renamed from: f0 */
    public final void m1614f0(String str) {
        this.f4263a.e().h();
        this.f4260D |= !t9.G(this.f4272j, str);
        this.f4272j = str;
    }

    /* renamed from: g */
    public final void m1613g(boolean z) {
        this.f4263a.e().h();
        this.f4260D |= this.f4277o != z;
        this.f4277o = z;
    }

    /* renamed from: g0 */
    public final long m1612g0() {
        this.f4263a.e().h();
        return this.f4273k;
    }

    /* renamed from: h */
    public final void m1611h(long j) {
        boolean z = true;
        C0931r.m3318a(j >= 0);
        this.f4263a.e().h();
        boolean z2 = this.f4260D;
        if (this.f4269g == j) {
            z = false;
        }
        this.f4260D = z | z2;
        this.f4269g = j;
    }

    /* renamed from: h0 */
    public final void m1610h0(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4273k != j;
        this.f4273k = j;
    }

    /* renamed from: i */
    public final long m1609i() {
        this.f4263a.e().h();
        return this.f4269g;
    }

    /* renamed from: i0 */
    public final String m1608i0() {
        this.f4263a.e().h();
        return this.f4274l;
    }

    /* renamed from: j */
    public final long m1607j() {
        this.f4263a.e().h();
        return this.f4261E;
    }

    /* renamed from: j0 */
    public final void m1606j0(String str) {
        this.f4263a.e().h();
        this.f4260D |= !t9.G(this.f4274l, str);
        this.f4274l = str;
    }

    /* renamed from: k */
    public final void m1605k(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4261E != j;
        this.f4261E = j;
    }

    /* renamed from: k0 */
    public final long m1604k0() {
        this.f4263a.e().h();
        return this.f4275m;
    }

    /* renamed from: l */
    public final long m1603l() {
        this.f4263a.e().h();
        return this.f4262F;
    }

    /* renamed from: m */
    public final void m1602m(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4262F != j;
        this.f4262F = j;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: n */
    public final void m1601n() {
        this.f4263a.e().h();
        ?? r0 = this.f4269g + 1;
        char c = r0;
        if (r0 > 2147483647L) {
            this.f4263a.c().r().m1569b("Bundle index overflow. appId", n3.x(this.f4264b));
            c = 0;
        }
        this.f4260D = true;
        this.f4269g = c;
    }

    /* renamed from: o */
    public final long m1600o() {
        this.f4263a.e().h();
        return this.f4285w;
    }

    /* renamed from: p */
    public final void m1599p(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4285w != j;
        this.f4285w = j;
    }

    /* renamed from: q */
    public final long m1598q() {
        this.f4263a.e().h();
        return this.f4286x;
    }

    /* renamed from: r */
    public final void m1597r(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4286x != j;
        this.f4286x = j;
    }

    /* renamed from: s */
    public final long m1596s() {
        this.f4263a.e().h();
        return this.f4287y;
    }

    /* renamed from: t */
    public final void m1595t(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4287y != j;
        this.f4287y = j;
    }

    /* renamed from: u */
    public final long m1594u() {
        this.f4263a.e().h();
        return this.f4288z;
    }

    /* renamed from: v */
    public final void m1593v(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4288z != j;
        this.f4288z = j;
    }

    /* renamed from: w */
    public final long m1592w() {
        this.f4263a.e().h();
        return this.f4258B;
    }

    /* renamed from: x */
    public final void m1591x(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4258B != j;
        this.f4258B = j;
    }

    /* renamed from: y */
    public final long m1590y() {
        this.f4263a.e().h();
        return this.f4257A;
    }

    /* renamed from: z */
    public final void m1589z(long j) {
        this.f4263a.e().h();
        this.f4260D |= this.f4257A != j;
        this.f4257A = j;
    }
}

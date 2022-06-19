package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g.class */
public final class C1510g {

    /* renamed from: c */
    public static final C1510g f4252c = new C1510g(null, null);

    /* renamed from: a */
    private final Boolean f4253a;

    /* renamed from: b */
    private final Boolean f4254b;

    public C1510g(Boolean bool, Boolean bool2) {
        this.f4253a = bool;
        this.f4254b = bool2;
    }

    /* renamed from: a */
    public static String m1670a(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string == null || m1656o(string) != null) {
            String string2 = bundle.getString("analytics_storage");
            if (string2 != null && m1656o(string2) == null) {
                return string2;
            }
            return null;
        }
        return string;
    }

    /* renamed from: b */
    public static C1510g m1669b(Bundle bundle) {
        return bundle == null ? f4252c : new C1510g(m1656o(bundle.getString("ad_storage")), m1656o(bundle.getString("analytics_storage")));
    }

    /* renamed from: c */
    public static C1510g m1668c(String str) {
        Boolean bool;
        Boolean bool2 = null;
        if (str != null) {
            Boolean m1655p = str.length() >= 3 ? m1655p(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = m1655p(str.charAt(3));
            }
            bool = m1655p;
        } else {
            bool2 = null;
            bool = null;
        }
        return new C1510g(bool, bool2);
    }

    /* renamed from: j */
    static Boolean m1661j(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        boolean z = false;
        if (bool.booleanValue()) {
            z = false;
            if (bool2.booleanValue()) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: m */
    public static boolean m1658m(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: n */
    static final int m1657n(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: o */
    private static Boolean m1656o(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (!str.equals("denied")) {
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: p */
    private static Boolean m1655p(char c) {
        if (c != '0') {
            if (c == '1') {
                return Boolean.TRUE;
            }
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: q */
    private static final char m1654q(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    /* renamed from: d */
    public final String m1667d() {
        return "G1" + m1654q(this.f4253a) + m1654q(this.f4254b);
    }

    /* renamed from: e */
    public final Boolean m1666e() {
        return this.f4253a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1510g)) {
            return false;
        }
        C1510g c1510g = (C1510g) obj;
        return m1657n(this.f4253a) == m1657n(c1510g.f4253a) && m1657n(this.f4254b) == m1657n(c1510g.f4254b);
    }

    /* renamed from: f */
    public final boolean m1665f() {
        Boolean bool = this.f4253a;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: g */
    public final Boolean m1664g() {
        return this.f4254b;
    }

    /* renamed from: h */
    public final boolean m1663h() {
        Boolean bool = this.f4254b;
        return bool == null || bool.booleanValue();
    }

    public final int hashCode() {
        return ((m1657n(this.f4253a) + 527) * 31) + m1657n(this.f4254b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r4.f4253a == r0) goto L6;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1662i(com.google.android.gms.measurement.internal.C1510g r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Boolean r0 = r0.f4253a
            r5 = r0
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L1d
            r0 = r7
            r8 = r0
            r0 = r4
            java.lang.Boolean r0 = r0.f4253a
            r1 = r6
            if (r0 != r1) goto L39
        L1d:
            r0 = r3
            java.lang.Boolean r0 = r0.f4254b
            r1 = r6
            if (r0 != r1) goto L36
            r0 = r4
            java.lang.Boolean r0 = r0.f4254b
            r1 = r6
            if (r0 == r1) goto L34
            r0 = r7
            r8 = r0
            goto L39
        L34:
            r0 = 0
            return r0
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C1510g.m1662i(com.google.android.gms.measurement.internal.g):boolean");
    }

    /* renamed from: k */
    public final C1510g m1660k(C1510g c1510g) {
        return new C1510g(m1661j(this.f4253a, c1510g.f4253a), m1661j(this.f4254b, c1510g.f4254b));
    }

    /* renamed from: l */
    public final C1510g m1659l(C1510g c1510g) {
        Boolean bool = this.f4253a;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = c1510g.f4253a;
        }
        Boolean bool3 = this.f4254b;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = c1510g.f4254b;
        }
        return new C1510g(bool2, bool4);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f4253a;
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool.booleanValue() ? "denied" : "granted");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f4254b;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool2.booleanValue() ? "denied" : "granted");
        }
        return sb.toString();
    }
}

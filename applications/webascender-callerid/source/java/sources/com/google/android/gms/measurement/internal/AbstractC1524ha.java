package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.a1;
import com.google.android.gms.internal.measurement.b1;
import com.google.android.gms.internal.measurement.t0;
import com.google.android.gms.internal.measurement.u0;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* renamed from: com.google.android.gms.measurement.internal.ha */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ha.class */
abstract class AbstractC1524ha {

    /* renamed from: a */
    final String f4317a;

    /* renamed from: b */
    final int f4318b;

    /* renamed from: c */
    Boolean f4319c;

    /* renamed from: d */
    Boolean f4320d;

    /* renamed from: e */
    Long f4321e;

    /* renamed from: f */
    Long f4322f;

    AbstractC1524ha(String str, int i) {
        this.f4317a = str;
        this.f4318b = i;
    }

    /* renamed from: d */
    private static Boolean m1584d(String str, a1 a1Var, boolean z, String str2, List<String> list, String str3, n3 n3Var) {
        if (a1Var == a1.zzg) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = str;
            if (a1Var != a1.zzb) {
                str4 = str.toUpperCase(Locale.ENGLISH);
            }
        }
        t0 t0Var = t0.zza;
        switch (a1Var.ordinal()) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z ? 66 : 0).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (n3Var == null) {
                        return null;
                    }
                    n3Var.r().m1569b("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                return Boolean.valueOf(str4.startsWith(str2));
            case 3:
                return Boolean.valueOf(str4.endsWith(str2));
            case 4:
                return Boolean.valueOf(str4.contains(str2));
            case 5:
                return Boolean.valueOf(str4.equals(str2));
            case 6:
                if (list != null) {
                    return Boolean.valueOf(list.contains(str4));
                }
                return null;
            default:
                return null;
        }
    }

    /* renamed from: e */
    static Boolean m1583e(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: f */
    static Boolean m1582f(String str, b1 b1Var, n3 n3Var) {
        List list;
        C0931r.m3308k(b1Var);
        if (str == null || !b1Var.w() || b1Var.x() == a1.zza) {
            return null;
        }
        a1 x = b1Var.x();
        a1 a1Var = a1.zzg;
        if (x == a1Var) {
            if (b1Var.D() == 0) {
                return null;
            }
        } else if (!b1Var.y()) {
            return null;
        }
        a1 x2 = b1Var.x();
        boolean B = b1Var.B();
        String z = (B || x2 == a1.zzb || x2 == a1Var) ? b1Var.z() : b1Var.z().toUpperCase(Locale.ENGLISH);
        if (b1Var.D() == 0) {
            list = null;
        } else {
            List<String> C = b1Var.C();
            list = C;
            if (!B) {
                ArrayList arrayList = new ArrayList(C.size());
                for (String str2 : C) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return m1584d(str, x2, B, z, list, x2 == a1.zzb ? z : null, n3Var);
    }

    /* renamed from: g */
    static Boolean m1581g(long j, u0 u0Var) {
        try {
            return m1578j(new BigDecimal(j), u0Var, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: h */
    static Boolean m1580h(double d, u0 u0Var) {
        try {
            return m1578j(new BigDecimal(d), u0Var, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: i */
    static Boolean m1579i(String str, u0 u0Var) {
        if (!o9.B(str)) {
            return null;
        }
        try {
            return m1578j(new BigDecimal(str), u0Var, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c3, code lost:
        if (r16 != null) goto L37;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.Boolean m1578j(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.u0 r8, double r9) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AbstractC1524ha.m1578j(java.math.BigDecimal, com.google.android.gms.internal.measurement.u0, double):java.lang.Boolean");
    }

    /* renamed from: a */
    public abstract int m1587a();

    /* renamed from: b */
    public abstract boolean m1586b();

    /* renamed from: c */
    public abstract boolean m1585c();
}

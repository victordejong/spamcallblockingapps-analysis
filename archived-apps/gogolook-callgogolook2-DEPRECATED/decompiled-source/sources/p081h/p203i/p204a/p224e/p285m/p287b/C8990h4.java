package p081h.p203i.p204a.p224e.p285m.p287b;

import android.text.TextUtils;
import androidx.collection.ArrayMap;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p276q.C8579d1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8679n0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8688o0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8698p0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8707q0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8716r0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8761w0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8783y0;
/* renamed from: h.i.a.e.m.b.h4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/h4.class */
public final class C8990h4 extends AbstractC9049r3 {
    public C8990h4(C9061t3 t3Var) {
        super(t3Var);
    }

    /* renamed from: a */
    public static Boolean m16578a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    /* renamed from: a */
    public static Boolean m16573a(BigDecimal bigDecimal, C8698p0 p0Var, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        C7021t.m21290a(p0Var);
        Integer num = p0Var.f19918c;
        if (num == null || num.intValue() == 0) {
            return null;
        }
        if (p0Var.f19918c.intValue() == 4) {
            if (p0Var.f19921f == null || p0Var.f19922g == null) {
                return null;
            }
        } else if (p0Var.f19920e == null) {
            return null;
        }
        int intValue = p0Var.f19918c.intValue();
        if (p0Var.f19918c.intValue() == 4) {
            if (!C9096z3.m16099a(p0Var.f19921f) || !C9096z3.m16099a(p0Var.f19922g)) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(p0Var.f19921f);
                bigDecimal3 = new BigDecimal(p0Var.f19922g);
                bigDecimal4 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else if (!C9096z3.m16099a(p0Var.f19920e)) {
            return null;
        } else {
            try {
                bigDecimal4 = new BigDecimal(p0Var.f19920e);
                bigDecimal2 = null;
                bigDecimal3 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (intValue == 4) {
            if (bigDecimal2 == null) {
                return null;
            }
        } else if (bigDecimal4 == null) {
            return null;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        if (intValue == 1) {
            if (bigDecimal.compareTo(bigDecimal4) == -1) {
                z3 = true;
            }
            return Boolean.valueOf(z3);
        } else if (intValue == 2) {
            if (bigDecimal.compareTo(bigDecimal4) == 1) {
                z2 = true;
            }
            return Boolean.valueOf(z2);
        } else if (intValue != 3) {
            if (intValue != 4) {
                return null;
            }
            boolean z4 = false;
            if (bigDecimal.compareTo(bigDecimal2) != -1) {
                z4 = false;
                if (bigDecimal.compareTo(bigDecimal3) != 1) {
                    z4 = true;
                }
            }
            return Boolean.valueOf(z4);
        } else if (d != 0.0d) {
            boolean z5 = false;
            if (bigDecimal.compareTo(bigDecimal4.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1) {
                z5 = false;
                if (bigDecimal.compareTo(bigDecimal4.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                    z5 = true;
                }
            }
            return Boolean.valueOf(z5);
        } else {
            if (bigDecimal.compareTo(bigDecimal4) == 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: a */
    public static void m16571a(Map<Integer, Long> map, int i, long j) {
        Long l = map.get(Integer.valueOf(i));
        long j2 = j / 1000;
        if (l == null || j2 > l.longValue()) {
            map.put(Integer.valueOf(i), Long.valueOf(j2));
        }
    }

    /* renamed from: a */
    public static C8761w0[] m16572a(Map<Integer, Long> map) {
        if (map == null) {
            return null;
        }
        int i = 0;
        C8761w0[] w0VarArr = new C8761w0[map.size()];
        for (Integer num : map.keySet()) {
            C8761w0 w0Var = new C8761w0();
            w0Var.f20031c = num;
            w0Var.f20032d = map.get(num);
            w0VarArr[i] = w0Var;
            i++;
        }
        return w0VarArr;
    }

    /* renamed from: b */
    public static void m16570b(Map<Integer, List<Long>> map, int i, long j) {
        List<Long> list = map.get(Integer.valueOf(i));
        List<Long> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            map.put(Integer.valueOf(i), list2);
        }
        list2.add(Long.valueOf(j / 1000));
    }

    /* renamed from: a */
    public final Boolean m16582a(double d, C8698p0 p0Var) {
        try {
            return m16573a(new BigDecimal(d), p0Var, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final Boolean m16581a(long j, C8698p0 p0Var) {
        try {
            return m16573a(new BigDecimal(j), p0Var, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final Boolean m16580a(C8679n0 n0Var, String str, C8783y0[] y0VarArr, long j) {
        C8688o0[] o0VarArr;
        C8688o0[] o0VarArr2;
        Boolean bool;
        C8698p0 p0Var = n0Var.f19857g;
        if (p0Var != null) {
            Boolean a = m16581a(j, p0Var);
            if (a == null) {
                return null;
            }
            if (!a.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (C8688o0 o0Var : n0Var.f19855e) {
            if (TextUtils.isEmpty(o0Var.f19899f)) {
                mo16178c().m16372v().m16337a("null or empty param name in filter. event", m16352i().m16473a(str));
                return null;
            }
            hashSet.add(o0Var.f19899f);
        }
        ArrayMap arrayMap = new ArrayMap();
        for (C8783y0 y0Var : y0VarArr) {
            if (hashSet.contains(y0Var.f20135c)) {
                Long l = y0Var.f20137e;
                if (l != null) {
                    arrayMap.put(y0Var.f20135c, l);
                } else {
                    Double d = y0Var.f20139g;
                    if (d != null) {
                        arrayMap.put(y0Var.f20135c, d);
                    } else {
                        String str2 = y0Var.f20136d;
                        if (str2 != null) {
                            arrayMap.put(y0Var.f20135c, str2);
                        } else {
                            mo16178c().m16372v().m16336a("Unknown value for param. event, param", m16352i().m16473a(str), m16352i().m16471b(y0Var.f20135c));
                            return null;
                        }
                    }
                }
            }
        }
        for (C8688o0 o0Var2 : n0Var.f19855e) {
            boolean equals = Boolean.TRUE.equals(o0Var2.f19898e);
            String str3 = o0Var2.f19899f;
            if (TextUtils.isEmpty(str3)) {
                mo16178c().m16372v().m16337a("Event has empty param name. event", m16352i().m16473a(str));
                return null;
            }
            V v = arrayMap.get(str3);
            if (v instanceof Long) {
                if (o0Var2.f19897d == null) {
                    mo16178c().m16372v().m16336a("No number filter for long param. event, param", m16352i().m16473a(str), m16352i().m16471b(str3));
                    return null;
                }
                Boolean a2 = m16581a(((Long) v).longValue(), o0Var2.f19897d);
                if (a2 == null) {
                    return null;
                }
                if ((true ^ a2.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (v instanceof Double) {
                if (o0Var2.f19897d == null) {
                    mo16178c().m16372v().m16336a("No number filter for double param. event, param", m16352i().m16473a(str), m16352i().m16471b(str3));
                    return null;
                }
                Boolean a3 = m16582a(((Double) v).doubleValue(), o0Var2.f19897d);
                if (a3 == null) {
                    return null;
                }
                if ((true ^ a3.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (v instanceof String) {
                C8716r0 r0Var = o0Var2.f19896c;
                if (r0Var != null) {
                    bool = m16575a((String) v, r0Var);
                } else if (o0Var2.f19897d != null) {
                    String str4 = (String) v;
                    if (C9096z3.m16099a(str4)) {
                        bool = m16576a(str4, o0Var2.f19897d);
                    } else {
                        mo16178c().m16372v().m16336a("Invalid param value for number filter. event, param", m16352i().m16473a(str), m16352i().m16471b(str3));
                        return null;
                    }
                } else {
                    mo16178c().m16372v().m16336a("No filter for String param. event, param", m16352i().m16473a(str), m16352i().m16471b(str3));
                    return null;
                }
                if (bool == null) {
                    return null;
                }
                if ((true ^ bool.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (v == 0) {
                mo16178c().m16389A().m16336a("Missing param for filter. event, param", m16352i().m16473a(str), m16352i().m16471b(str3));
                return false;
            } else {
                mo16178c().m16372v().m16336a("Unknown param type. event, param", m16352i().m16473a(str), m16352i().m16471b(str3));
                return null;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final Boolean m16579a(C8707q0 q0Var, C8579d1 d1Var) {
        C8688o0 o0Var = q0Var.f19931e;
        if (o0Var == null) {
            mo16178c().m16372v().m16337a("Missing property filter. property", m16352i().m16470c(d1Var.f19651d));
            return null;
        }
        boolean equals = Boolean.TRUE.equals(o0Var.f19898e);
        Long l = d1Var.f19653f;
        if (l == null) {
            Double d = d1Var.f19655h;
            if (d == null) {
                String str = d1Var.f19652e;
                if (str != null) {
                    C8716r0 r0Var = o0Var.f19896c;
                    if (r0Var != null) {
                        return m16578a(m16575a(str, r0Var), equals);
                    }
                    if (o0Var.f19897d == null) {
                        mo16178c().m16372v().m16337a("No string or number filter defined. property", m16352i().m16470c(d1Var.f19651d));
                        return null;
                    } else if (C9096z3.m16099a(str)) {
                        return m16578a(m16576a(d1Var.f19652e, o0Var.f19897d), equals);
                    } else {
                        mo16178c().m16372v().m16336a("Invalid user property value for Numeric number filter. property, value", m16352i().m16470c(d1Var.f19651d), d1Var.f19652e);
                        return null;
                    }
                } else {
                    mo16178c().m16372v().m16337a("User property has no value, property", m16352i().m16470c(d1Var.f19651d));
                    return null;
                }
            } else if (o0Var.f19897d != null) {
                return m16578a(m16582a(d.doubleValue(), o0Var.f19897d), equals);
            } else {
                mo16178c().m16372v().m16337a("No number filter for double property. property", m16352i().m16470c(d1Var.f19651d));
                return null;
            }
        } else if (o0Var.f19897d != null) {
            return m16578a(m16581a(l.longValue(), o0Var.f19897d), equals);
        } else {
            mo16178c().m16372v().m16337a("No number filter for long property. property", m16352i().m16470c(d1Var.f19651d));
            return null;
        }
    }

    /* renamed from: a */
    public final Boolean m16577a(String str, int i, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = i == 1 ? str : str.toUpperCase(Locale.ENGLISH);
        }
        switch (i) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    mo16178c().m16372v().m16337a("Invalid regular expression in REGEXP audience filter. expression", str3);
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
                return Boolean.valueOf(list.contains(str4));
            default:
                return null;
        }
    }

    /* renamed from: a */
    public final Boolean m16576a(String str, C8698p0 p0Var) {
        if (!C9096z3.m16099a(str)) {
            return null;
        }
        try {
            return m16573a(new BigDecimal(str), p0Var, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final Boolean m16575a(String str, C8716r0 r0Var) {
        Integer num;
        List<String> list;
        C7021t.m21290a(r0Var);
        if (str == null || (num = r0Var.f19939c) == null || num.intValue() == 0) {
            return null;
        }
        if (r0Var.f19939c.intValue() == 6) {
            String[] strArr = r0Var.f19942f;
            if (strArr == null || strArr.length == 0) {
                return null;
            }
        } else if (r0Var.f19940d == null) {
            return null;
        }
        int intValue = r0Var.f19939c.intValue();
        Boolean bool = r0Var.f19941e;
        boolean z = bool != null && bool.booleanValue();
        String upperCase = (z || intValue == 1 || intValue == 6) ? r0Var.f19940d : r0Var.f19940d.toUpperCase(Locale.ENGLISH);
        String[] strArr2 = r0Var.f19942f;
        if (strArr2 == null) {
            list = null;
        } else if (z) {
            list = Arrays.asList(strArr2);
        } else {
            list = new ArrayList<>();
            for (String str2 : strArr2) {
                list.add(str2.toUpperCase(Locale.ENGLISH));
            }
        }
        return m16577a(str, intValue, z, upperCase, list, intValue == 1 ? upperCase : null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:296:0x0f4d, code lost:
        if (r49 != false) goto L_0x0f50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x03bc, code lost:
        if (r0.longValue() != r35.longValue()) goto L_0x03c9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0698  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0703  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04e9  */
    /* JADX WARN: Type inference failed for: r0v687, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r47v0 */
    /* JADX WARN: Type inference failed for: r47v1 */
    /* JADX WARN: Type inference failed for: r47v14 */
    /* JADX WARN: Type inference failed for: r47v15 */
    /* JADX WARN: Type inference failed for: r47v2 */
    /* JADX WARN: Type inference failed for: r47v3 */
    /* JADX WARN: Type inference failed for: r47v8 */
    /* JADX WARN: Type inference failed for: r50v2, types: [long] */
    /* JADX WARN: Type inference failed for: r50v3 */
    /* JADX WARN: Type inference failed for: r50v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p203i.p204a.p224e.p259j.p276q.C8752v0[] m16574a(java.lang.String r18, p081h.p203i.p204a.p224e.p259j.p276q.C8770x0[] r19, p081h.p203i.p204a.p224e.p259j.p276q.C8579d1[] r20) {
        /*
            Method dump skipped, instructions count: 4980
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C8990h4.m16574a(java.lang.String, h.i.a.e.j.q.x0[], h.i.a.e.j.q.d1[]):h.i.a.e.j.q.v0[]");
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9049r3
    /* renamed from: r */
    public final boolean mo16085r() {
        return false;
    }
}

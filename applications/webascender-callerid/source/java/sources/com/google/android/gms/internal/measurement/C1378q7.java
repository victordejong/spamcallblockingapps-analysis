package com.google.android.gms.internal.measurement;

import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKt;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.google.android.gms.internal.measurement.q7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q7.class */
public final class C1378q7 {
    /* renamed from: a */
    static String m1996a(o7 o7Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m1994c(o7Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m1995b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m1995b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m1995b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C1353m8.m2032a(AbstractC1351m5.m2038p((String) obj)));
                sb.append('\"');
            } else if (obj instanceof AbstractC1351m5) {
                sb.append(": \"");
                sb.append(C1353m8.m2032a((AbstractC1351m5) obj));
                sb.append('\"');
            } else if (obj instanceof l6) {
                sb.append(" {");
                m1994c((l6) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj.toString());
            } else {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m1995b(sb, i4, SubscriberAttributeKt.JSON_NAME_KEY, entry2.getKey());
                m1995b(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    /* renamed from: c */
    private static void m1994c(o7 o7Var, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : o7Var.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    m1995b(sb, i, m1993d(concat), l6.k(method2, o7Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m1995b(sb, i, m1993d(concat2), l6.k(method3, o7Var, new Object[0]));
                }
            }
            String valueOf5 = String.valueOf(substring);
            if (((Method) hashMap2.get(valueOf5.length() != 0 ? "set".concat(valueOf5) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf6 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf6.length() != 0 ? "get".concat(valueOf6) : new String("get"))) {
                    }
                }
                String valueOf7 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf8 = String.valueOf(substring.substring(1));
                String concat3 = valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7);
                String valueOf9 = String.valueOf(substring);
                Method method4 = (Method) hashMap.get(valueOf9.length() != 0 ? "get".concat(valueOf9) : new String("get"));
                String valueOf10 = String.valueOf(substring);
                Method method5 = (Method) hashMap.get(valueOf10.length() != 0 ? "has".concat(valueOf10) : new String("has"));
                if (method4 != null) {
                    Object k = l6.k(method4, o7Var, new Object[0]);
                    if (method5 == null) {
                        if (k instanceof Boolean) {
                            if (((Boolean) k).booleanValue()) {
                                m1995b(sb, i, m1993d(concat3), k);
                            }
                        } else if (k instanceof Integer) {
                            if (((Integer) k).intValue() != 0) {
                                m1995b(sb, i, m1993d(concat3), k);
                            }
                        } else if (k instanceof Float) {
                            if (((Float) k).floatValue() != 0.0f) {
                                m1995b(sb, i, m1993d(concat3), k);
                            }
                        } else if (!(k instanceof Double)) {
                            if (k instanceof String) {
                                equals = k.equals("");
                            } else if (k instanceof AbstractC1351m5) {
                                equals = k.equals(AbstractC1351m5.f3935g);
                            } else if (!(k instanceof o7)) {
                                if ((k instanceof Enum) && ((Enum) k).ordinal() == 0) {
                                }
                                m1995b(sb, i, m1993d(concat3), k);
                            } else if (k != ((o7) k).m2005g()) {
                                m1995b(sb, i, m1993d(concat3), k);
                            }
                            if (!equals) {
                                m1995b(sb, i, m1993d(concat3), k);
                            }
                        } else if (((Double) k).doubleValue() != 0.0d) {
                            m1995b(sb, i, m1993d(concat3), k);
                        }
                    } else if (((Boolean) l6.k(method5, o7Var, new Object[0])).booleanValue()) {
                        m1995b(sb, i, m1993d(concat3), k);
                    }
                }
            }
        }
        if (o7Var instanceof j6) {
            C1306d6 c1306d6 = ((j6) o7Var).zza;
            throw null;
        }
        C1365o8 c1365o8 = ((l6) o7Var).zzc;
        if (c1365o8 == null) {
            return;
        }
        c1365o8.m2014g(sb, i);
    }

    /* renamed from: d */
    private static final String m1993d(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}

package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.f0;
import com.google.android.gms.internal.firebase-auth-api.fq;
import com.google.android.gms.internal.firebase-auth-api.g1;
import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKt;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/h0.class */
public final class C1084h0 {
    /* renamed from: a */
    static String m2840a(f0 f0Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m2838c(f0Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m2839b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m2839b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m2839b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C1040e1.m2948a(AbstractC1151mp.m2720u((String) obj)));
                sb.append('\"');
            } else if (obj instanceof AbstractC1151mp) {
                sb.append(": \"");
                sb.append(C1040e1.m2948a((AbstractC1151mp) obj));
                sb.append('\"');
            } else if (obj instanceof e) {
                sb.append(" {");
                m2838c((e) obj, sb, i + 2);
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
                m2839b(sb, i4, SubscriberAttributeKt.JSON_NAME_KEY, entry2.getKey());
                m2839b(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    /* renamed from: c */
    private static void m2838c(f0 f0Var, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : f0Var.getClass().getDeclaredMethods()) {
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
                    m2839b(sb, i, m2837d(concat), e.e(method2, f0Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m2839b(sb, i, m2837d(concat2), e.e(method3, f0Var, new Object[0]));
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
                    Object e = e.e(method4, f0Var, new Object[0]);
                    if (method5 == null) {
                        if (e instanceof Boolean) {
                            if (((Boolean) e).booleanValue()) {
                                m2839b(sb, i, m2837d(concat3), e);
                            }
                        } else if (e instanceof Integer) {
                            if (((Integer) e).intValue() != 0) {
                                m2839b(sb, i, m2837d(concat3), e);
                            }
                        } else if (e instanceof Float) {
                            if (((Float) e).floatValue() != 0.0f) {
                                m2839b(sb, i, m2837d(concat3), e);
                            }
                        } else if (!(e instanceof Double)) {
                            if (e instanceof String) {
                                equals = e.equals("");
                            } else if (e instanceof AbstractC1151mp) {
                                equals = e.equals(AbstractC1151mp.f3756g);
                            } else if (!(e instanceof f0)) {
                                if ((e instanceof Enum) && ((Enum) e).ordinal() == 0) {
                                }
                                m2839b(sb, i, m2837d(concat3), e);
                            } else if (e != ((f0) e).m2862q()) {
                                m2839b(sb, i, m2837d(concat3), e);
                            }
                            if (!equals) {
                                m2839b(sb, i, m2837d(concat3), e);
                            }
                        } else if (((Double) e).doubleValue() != 0.0d) {
                            m2839b(sb, i, m2837d(concat3), e);
                        }
                    } else if (((Boolean) e.e(method5, f0Var, new Object[0])).booleanValue()) {
                        m2839b(sb, i, m2837d(concat3), e);
                    }
                }
            }
        }
        if (f0Var instanceof c) {
            fq fqVar = ((c) f0Var).zzb;
            throw null;
        }
        g1 g1Var = ((e) f0Var).zzc;
        if (g1Var == null) {
            return;
        }
        g1Var.m2855g(sb, i);
    }

    /* renamed from: d */
    private static final String m2837d(String str) {
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

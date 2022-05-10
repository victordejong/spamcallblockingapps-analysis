package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: c.d.h.p0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/p0.class */
public final class C6360p0 {
    /* renamed from: a */
    public static String m21171a(AbstractC6354n0 n0Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m21170a(n0Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    public static final String m21168a(String str) {
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

    /* renamed from: a */
    public static void m21170a(AbstractC6354n0 n0Var, StringBuilder sb, int i) {
        Method[] declaredMethods;
        Map.Entry<GeneratedMessageLite.C7950e, Object> next;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : n0Var.getClass().getDeclaredMethods()) {
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
            boolean z = true;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String str2 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 4);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    m21167a(sb, i, m21168a(str2), GeneratedMessageLite.m6948a(method2, n0Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String str3 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m21167a(sb, i, m21168a(str3), GeneratedMessageLite.m6948a(method3, n0Var, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set" + substring)) != null) {
                if (substring.endsWith("Bytes")) {
                    if (hashMap.containsKey("get" + substring.substring(0, substring.length() - 5))) {
                    }
                }
                String str4 = substring.substring(0, 1).toLowerCase() + substring.substring(1);
                Method method4 = (Method) hashMap.get("get" + substring);
                Method method5 = (Method) hashMap.get("has" + substring);
                if (method4 != null) {
                    Object a = GeneratedMessageLite.m6948a(method4, n0Var, new Object[0]);
                    if (method5 != null) {
                        z = ((Boolean) GeneratedMessageLite.m6948a(method5, n0Var, new Object[0])).booleanValue();
                    } else if (m21169a(a)) {
                        z = false;
                    }
                    if (z) {
                        m21167a(sb, i, m21168a(str4), a);
                    }
                }
            }
        }
        if (n0Var instanceof GeneratedMessageLite.AbstractC7948c) {
            Iterator<Map.Entry<GeneratedMessageLite.C7950e, Object>> g = ((GeneratedMessageLite.AbstractC7948c) n0Var).extensions.m21046g();
            while (g.hasNext()) {
                m21167a(sb, i, "[" + next.getKey().getNumber() + "]", g.next().getValue());
            }
        }
        C6334j1 j1Var = ((GeneratedMessageLite) n0Var).unknownFields;
        if (j1Var != null) {
            j1Var.m21372a(sb, i);
        }
    }

    /* renamed from: a */
    public static final void m21167a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m21167a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m21167a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C6321h1.m21473a((String) obj));
                sb.append('\"');
            } else if (obj instanceof ByteString) {
                sb.append(": \"");
                sb.append(C6321h1.m21474a((ByteString) obj));
                sb.append('\"');
            } else if (obj instanceof GeneratedMessageLite) {
                sb.append(" {");
                m21170a((GeneratedMessageLite) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m21167a(sb, i4, "key", entry2.getKey());
                m21167a(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }

    /* renamed from: a */
    public static boolean m21169a(Object obj) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() != 0) {
                z5 = false;
            }
            return z5;
        } else if (obj instanceof Float) {
            if (((Float) obj).floatValue() != 0.0f) {
                z = false;
            }
            return z;
        } else if (obj instanceof Double) {
            if (((Double) obj).doubleValue() != 0.0d) {
                z2 = false;
            }
            return z2;
        } else if (obj instanceof String) {
            return obj.equals("");
        } else {
            if (obj instanceof ByteString) {
                return obj.equals(ByteString.EMPTY);
            }
            if (obj instanceof AbstractC6354n0) {
                if (obj != ((AbstractC6354n0) obj).mo6927g()) {
                    z3 = false;
                }
                return z3;
            } else if (!(obj instanceof Enum)) {
                return false;
            } else {
                if (((Enum) obj).ordinal() != 0) {
                    z4 = false;
                }
                return z4;
            }
        }
    }
}

package p016g.p030k.p034d;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: g.k.d.f */
/* loaded from: classes2-dex2jar.jar:g/k/d/f.class */
public class C0341f {

    /* renamed from: a */
    private static Map<Character, String> f956a;

    /* renamed from: b */
    public static final String f957b = System.getProperty("line.separator");

    static {
        HashMap hashMap = new HashMap();
        f956a = hashMap;
        hashMap.put('\'', "\\'");
        f956a.put('\"', "\\\"");
        f956a.put('\\', "\\\\");
        f956a.put('/', "\\/");
        f956a.put('\b', "\\b");
        f956a.put('\n', "\\n");
        f956a.put('\t', "\\t");
        f956a.put('\f', "\\f");
        f956a.put('\r', "\\r");
    }

    /* renamed from: a */
    public static List<String> m391a(String str) {
        if (!m390b(str)) {
            return C0336a.m403l(new ArrayList(0));
        }
        String[] split = str.split(",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (m390b(str2)) {
                arrayList.add(str2);
            }
        }
        return C0336a.m403l(arrayList);
    }

    /* renamed from: b */
    public static boolean m390b(String str) {
        return str != null && str.trim().length() > 0;
    }

    /* renamed from: c */
    public static boolean m389c(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        for (String str : strArr) {
            if (m388d(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m388d(String str) {
        return !m390b(str);
    }

    /* renamed from: e */
    public static boolean m387e(String str) {
        if (m388d(str)) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public static String m386f(List<String> list) {
        String str;
        if (list != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                if (m390b(list.get(i))) {
                    sb.append(list.get(i));
                    if (i < list.size() - 1) {
                        sb.append(",");
                    }
                }
            }
            str = sb.toString();
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: g */
    public static String m385g(String... strArr) {
        return m386f(strArr == null ? null : Arrays.asList(strArr));
    }

    /* renamed from: h */
    public static String m384h(List<? extends Number> list) {
        ArrayList arrayList;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<? extends Number> it = list.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                Number number = (Number) it.next();
                if (number != null) {
                    arrayList2.add(number.toString());
                }
            }
        } else {
            arrayList = null;
        }
        return m386f(arrayList);
    }
}

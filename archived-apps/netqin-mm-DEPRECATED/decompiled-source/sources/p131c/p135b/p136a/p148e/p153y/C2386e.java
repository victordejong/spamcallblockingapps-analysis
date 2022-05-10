package p131c.p135b.p136a.p148e.p153y;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: c.b.a.e.y.e */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/e.class */
public class C2386e {
    /* renamed from: a */
    public static String m29980a(Collection<String> collection, int i) {
        return m29979a(collection, ",", i);
    }

    /* renamed from: a */
    public static String m29979a(Collection<String> collection, String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("No glue specified");
        } else if (collection == null || collection.size() < 1) {
            return "";
        } else {
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            for (String str2 : collection) {
                if (i2 >= i) {
                    break;
                }
                i2++;
                sb.append(str2);
                sb.append(str);
            }
            if (sb.length() > str.length()) {
                sb.setLength(sb.length() - str.length());
            }
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static <T> List<T> m29985a() {
        return m29984a(-1);
    }

    /* renamed from: a */
    public static <T> List<T> m29984a(int i) {
        return i >= 0 ? Collections.synchronizedList(new ArrayList(i)) : Collections.synchronizedList(new ArrayList());
    }

    /* renamed from: a */
    public static List<String> m29982a(String str) {
        return m29981a(str, ",\\s*");
    }

    /* renamed from: a */
    public static List<String> m29981a(String str, String str2) {
        return TextUtils.isEmpty(str) ? Collections.emptyList() : Arrays.asList(str.split(str2));
    }

    /* renamed from: a */
    public static List<String> m29978a(List<String> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            String trim = str.trim();
            if (!TextUtils.isEmpty(trim)) {
                arrayList.add(trim);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static <K, V> Map<K, V> m29983a(K k, V v) {
        HashMap hashMap = new HashMap(1);
        hashMap.put(k, v);
        return hashMap;
    }
}

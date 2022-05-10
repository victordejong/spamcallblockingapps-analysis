package p131c.p161d.p170b.p188c.p201f1.p202u;

import com.android.volley.Request;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: c.d.b.c.f1.u.o */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/o.class */
public final class C2860o implements AbstractC2858m {

    /* renamed from: c */
    public static final C2860o f10401c = new C2860o(Collections.emptyMap());

    /* renamed from: a */
    public int f10402a;

    /* renamed from: b */
    public final Map<String, byte[]> f10403b;

    public C2860o() {
        this(Collections.emptyMap());
    }

    public C2860o(Map<String, byte[]> map) {
        this.f10403b = Collections.unmodifiableMap(map);
    }

    /* renamed from: a */
    public static Map<String, byte[]> m28789a(Map<String, byte[]> map, C2859n nVar) {
        HashMap hashMap = new HashMap(map);
        m28791a(hashMap, nVar.m28797b());
        m28790a(hashMap, nVar.m28804a());
        return hashMap;
    }

    /* renamed from: a */
    public static void m28791a(HashMap<String, byte[]> hashMap, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            hashMap.remove(list.get(i));
        }
    }

    /* renamed from: a */
    public static void m28790a(HashMap<String, byte[]> hashMap, Map<String, Object> map) {
        for (String str : map.keySet()) {
            hashMap.put(str, m28794a(map.get(str)));
        }
    }

    /* renamed from: a */
    public static boolean m28788a(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static byte[] m28794a(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.p202u.AbstractC2858m
    /* renamed from: a */
    public final long mo28793a(String str, long j) {
        return this.f10403b.containsKey(str) ? ByteBuffer.wrap(this.f10403b.get(str)).getLong() : j;
    }

    /* renamed from: a */
    public C2860o m28795a(C2859n nVar) {
        Map<String, byte[]> a = m28789a(this.f10403b, nVar);
        return m28788a(this.f10403b, a) ? this : new C2860o(a);
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.p202u.AbstractC2858m
    /* renamed from: a */
    public final String mo28792a(String str, String str2) {
        if (this.f10403b.containsKey(str)) {
            str2 = new String(this.f10403b.get(str), Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
        }
        return str2;
    }

    /* renamed from: a */
    public Set<Map.Entry<String, byte[]>> m28796a() {
        return this.f10403b.entrySet();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2860o.class != obj.getClass()) {
            return false;
        }
        return m28788a(this.f10403b, ((C2860o) obj).f10403b);
    }

    public int hashCode() {
        if (this.f10402a == 0) {
            int i = 0;
            for (Map.Entry<String, byte[]> entry : this.f10403b.entrySet()) {
                i += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.f10402a = i;
        }
        return this.f10402a;
    }
}

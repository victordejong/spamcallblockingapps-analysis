package p131c.p161d.p282e.p289l.p290d.p293h;

import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: c.d.e.l.d.h.f0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/f0.class */
public class C5221f0 {

    /* renamed from: a */
    public String f17909a = null;

    /* renamed from: b */
    public final ConcurrentHashMap<String, String> f17910b = new ConcurrentHashMap<>();

    /* renamed from: b */
    public static String m24247b(String str) {
        String str2 = str;
        if (str != null) {
            String trim = str.trim();
            str2 = trim;
            if (trim.length() > 1024) {
                str2 = trim.substring(0, 1024);
            }
        }
        return str2;
    }

    /* renamed from: a */
    public Map<String, String> m24250a() {
        return Collections.unmodifiableMap(this.f17910b);
    }

    /* renamed from: a */
    public void m24249a(String str) {
        this.f17909a = m24247b(str);
    }

    /* renamed from: b */
    public String m24248b() {
        return this.f17909a;
    }
}

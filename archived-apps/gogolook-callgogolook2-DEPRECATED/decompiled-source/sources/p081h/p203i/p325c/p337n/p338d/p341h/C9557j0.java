package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p325c.p337n.p338d.C9513b;
/* renamed from: h.i.c.n.d.h.j0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/j0.class */
public class C9557j0 {

    /* renamed from: a */
    public String f21754a = null;

    /* renamed from: b */
    public final ConcurrentHashMap<String, String> f21755b = new ConcurrentHashMap<>();

    /* renamed from: b */
    public static String m14877b(String str) {
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

    @NonNull
    /* renamed from: a */
    public Map<String, String> m14881a() {
        return Collections.unmodifiableMap(this.f21755b);
    }

    /* renamed from: a */
    public void m14880a(String str) {
        this.f21754a = m14877b(str);
    }

    /* renamed from: a */
    public void m14879a(String str, String str2) {
        if (str != null) {
            String b = m14877b(str);
            if (this.f21755b.size() < 64 || this.f21755b.containsKey(b)) {
                this.f21755b.put(b, str2 == null ? "" : m14877b(str2));
            } else {
                C9513b.m15015a().m15013a("Exceeded maximum number of custom attributes (64)");
            }
        } else {
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
    }

    @Nullable
    /* renamed from: b */
    public String m14878b() {
        return this.f21754a;
    }
}

package p081h.p203i.p401g;

import java.util.Collections;
import java.util.Map;
import java.util.logging.Logger;
import p081h.p203i.p401g.C10418l;
/* renamed from: h.i.g.c1 */
/* loaded from: classes2-dex2jar.jar:h/i/g/c1.class */
public class C10237c1 {

    /* renamed from: a */
    public final Map<String, C10418l.C10420b> f23067a;

    /* renamed from: h.i.g.c1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/c1$a.class */
    public static class C10238a {

        /* renamed from: a */
        public static final C10237c1 f23068a = new C10237c1(Collections.emptyMap());
    }

    static {
        Logger.getLogger(C10237c1.class.getName());
    }

    public C10237c1(Map<String, C10418l.C10420b> map) {
        this.f23067a = map;
    }

    /* renamed from: a */
    public static C10237c1 m13043a() {
        return C10238a.f23068a;
    }

    /* renamed from: c */
    public static String m13040c(String str) throws C10222a0 {
        String[] split = str.split("/");
        if (split.length != 1) {
            return split[split.length - 1];
        }
        throw new C10222a0("Invalid type url found: " + str);
    }

    /* renamed from: a */
    public C10418l.C10420b m13042a(String str) {
        return this.f23067a.get(str);
    }

    /* renamed from: b */
    public final C10418l.C10420b m13041b(String str) throws C10222a0 {
        return m13042a(m13040c(str));
    }
}

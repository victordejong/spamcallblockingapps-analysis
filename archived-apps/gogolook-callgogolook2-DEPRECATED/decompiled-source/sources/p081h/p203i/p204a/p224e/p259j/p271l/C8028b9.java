package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Collections;
import java.util.HashMap;
/* renamed from: h.i.a.e.j.l.b9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b9.class */
public class C8028b9 {

    /* renamed from: a */
    public static volatile C8028b9 f18757a;

    /* renamed from: b */
    public static final C8028b9 f18758b = new C8028b9(true);

    public C8028b9() {
        new HashMap();
    }

    public C8028b9(boolean z) {
        Collections.emptyMap();
    }

    /* renamed from: a */
    public static C8028b9 m18676a() {
        C8028b9 b9Var = f18757a;
        C8028b9 b9Var2 = b9Var;
        if (b9Var == null) {
            synchronized (C8028b9.class) {
                try {
                    C8028b9 b9Var3 = f18757a;
                    b9Var2 = b9Var3;
                    if (b9Var3 == null) {
                        b9Var2 = f18758b;
                        f18757a = b9Var2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b9Var2;
    }
}

package p067i.p068a.p076b;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.logging.Logger;
/* renamed from: i.a.b.k */
/* loaded from: classes2-dex2jar.jar:i/a/b/k.class */
final class C2065k {

    /* renamed from: a */
    private static final List<Function<? super AbstractC2063i, ? extends AbstractC2063i>> f5649a = new ArrayList();

    /* renamed from: b */
    private static final Object f5650b = new Object();

    static {
        Logger.getLogger(C2065k.class.getName());
    }

    private C2065k() {
    }

    /* renamed from: a */
    public static List<Function<? super AbstractC2063i, ? extends AbstractC2063i>> m282a() {
        List<Function<? super AbstractC2063i, ? extends AbstractC2063i>> list;
        synchronized (f5650b) {
            list = f5649a;
        }
        return list;
    }

    /* renamed from: b */
    public static void m281b() {
        synchronized (f5650b) {
        }
    }
}

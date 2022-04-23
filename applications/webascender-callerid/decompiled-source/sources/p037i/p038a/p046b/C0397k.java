package p037i.p038a.p046b;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.logging.Logger;
/* renamed from: i.a.b.k */
/* loaded from: classes2-dex2jar.jar:i/a/b/k.class */
final class C0397k {

    /* renamed from: a */
    private static final List<Function<? super AbstractC0395i, ? extends AbstractC0395i>> f970a = new ArrayList();

    /* renamed from: b */
    private static final Object f971b = new Object();

    static {
        Logger.getLogger(C0397k.class.getName());
    }

    private C0397k() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static List<Function<? super AbstractC0395i, ? extends AbstractC0395i>> m282a() {
        List<Function<? super AbstractC0395i, ? extends AbstractC0395i>> list;
        synchronized (f971b) {
            list = f970a;
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m281b() {
        synchronized (f971b) {
        }
    }
}

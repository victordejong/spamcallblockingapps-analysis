package p067i.p068a.p069a.p072e;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: i.a.a.e.e */
/* loaded from: classes2-dex2jar.jar:i/a/a/e/e.class */
public final class C2028e {

    /* renamed from: a */
    private static final Object f5641a = new Object();

    /* renamed from: b */
    private static final AtomicReference<AbstractC2035l> f5642b = new AtomicReference<>();

    /* renamed from: a */
    public static AbstractC2035l m346a() {
        AtomicReference<AbstractC2035l> atomicReference = f5642b;
        AbstractC2035l abstractC2035l = atomicReference.get();
        if (abstractC2035l == null) {
            synchronized (f5641a) {
                if (atomicReference.get() == null) {
                    return C2034k.m334a();
                }
            }
        }
        return abstractC2035l;
    }

    /* renamed from: b */
    public static AbstractC2033j m345b(String str) {
        return m346a().get(str);
    }
}

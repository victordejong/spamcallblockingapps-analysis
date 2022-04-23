package p037i.p038a.p039a.p042e;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: i.a.a.e.e */
/* loaded from: classes2-dex2jar.jar:i/a/a/e/e.class */
public final class C0360e {

    /* renamed from: a */
    private static final Object f962a = new Object();

    /* renamed from: b */
    private static final AtomicReference<AbstractC0367l> f963b = new AtomicReference<>();

    /* renamed from: a */
    public static AbstractC0367l m346a() {
        AtomicReference<AbstractC0367l> atomicReference = f963b;
        AbstractC0367l lVar = atomicReference.get();
        if (lVar == null) {
            synchronized (f962a) {
                if (atomicReference.get() == null) {
                    return C0366k.m334a();
                }
            }
        }
        return lVar;
    }

    /* renamed from: b */
    public static AbstractC0365j m345b(String str) {
        return m346a().get(str);
    }
}

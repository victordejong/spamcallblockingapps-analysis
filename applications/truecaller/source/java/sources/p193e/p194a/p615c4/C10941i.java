package p193e.p194a.p615c4;

import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.c4.i */
/* loaded from: classes10-dex2jar.jar:e/a/c4/i.class */
public final class C10941i extends AbstractC10935c {

    /* renamed from: a */
    public static final C10941i f32454a = new C10941i();

    @Override // p193e.p194a.p615c4.AbstractC10935c
    /* renamed from: d */
    public boolean mo25485d(Throwable th) {
        l.e(th, "e");
        return false;
    }

    @Override // p193e.p194a.p615c4.AbstractC10935c
    /* renamed from: e */
    public boolean mo11316e(Throwable th) {
        boolean z;
        boolean z2;
        l.e(th, "e");
        if (AbstractC10935c.m25490a(this, th, OutOfMemoryError.class)) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            l.d(stackTrace, "e.stackTrace");
            int length = stackTrace.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = false;
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i];
                l.d(stackTraceElement, "it");
                String className = stackTraceElement.getClassName();
                if (className != null ? v.z(className, "lottie", true) : false) {
                    z2 = true;
                    break;
                }
                i++;
            }
            if (z2) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}

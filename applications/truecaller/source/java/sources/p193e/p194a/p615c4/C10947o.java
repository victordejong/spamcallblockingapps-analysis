package p193e.p194a.p615c4;

import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.c4.o */
/* loaded from: classes10-dex2jar.jar:e/a/c4/o.class */
public final class C10947o extends AbstractC10935c {

    /* renamed from: a */
    public static final C10947o f32460a = new C10947o();

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
        l.e(th, "e");
        StackTraceElement[] stackTrace = th.getStackTrace();
        l.d(stackTrace, "e.stackTrace");
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            l.d(stackTraceElement, "it");
            String className = stackTraceElement.getClassName();
            l.d(className, "it.className");
            if (v.B(className, "org.chromium.android_webview", false, 2)) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }
}

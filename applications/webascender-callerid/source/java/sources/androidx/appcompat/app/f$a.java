package androidx.appcompat.app;

import android.content.res.Resources;
import java.lang.Thread;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$a.class */
class f$a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    final /* synthetic */ Thread.UncaughtExceptionHandler f214a;

    f$a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f214a = uncaughtExceptionHandler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        if (r0.contains("Drawable") != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m6839a(java.lang.Throwable r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof android.content.res.Resources.NotFoundException
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L32
            r0 = r4
            java.lang.String r0 = r0.getMessage()
            r4 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L32
            r0 = r4
            java.lang.String r1 = "drawable"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L2f
            r0 = r6
            r7 = r0
            r0 = r4
            java.lang.String r1 = "Drawable"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L32
        L2f:
            r0 = 1
            r7 = r0
        L32:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.f$a.m6839a(java.lang.Throwable):boolean");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (!m6839a(th)) {
            this.f214a.uncaughtException(thread, th);
            return;
        }
        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
        notFoundException.initCause(th.getCause());
        notFoundException.setStackTrace(th.getStackTrace());
        this.f214a.uncaughtException(thread, notFoundException);
    }
}

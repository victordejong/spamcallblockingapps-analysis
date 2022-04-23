package androidx.appcompat.app;

import java.lang.Thread;
/* renamed from: androidx.appcompat.app.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/p.class */
final class C0312p implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    final /* synthetic */ Thread.UncaughtExceptionHandler f1335a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0312p(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f1335a = uncaughtExceptionHandler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (r0.contains("Drawable") != false) goto L_0x0037;
     */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void uncaughtException(java.lang.Thread r5, java.lang.Throwable r6) {
        /*
            r4 = this;
            r0 = r6
            boolean r0 = r0 instanceof android.content.res.Resources.NotFoundException
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x003a
            r0 = r6
            java.lang.String r0 = r0.getMessage()
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            if (r0 == 0) goto L_0x003a
            r0 = r10
            java.lang.String r1 = "drawable"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0037
            r0 = r8
            r9 = r0
            r0 = r10
            java.lang.String r1 = "Drawable"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x003a
        L_0x0037:
            r0 = 1
            r9 = r0
        L_0x003a:
            r0 = r9
            if (r0 == 0) goto L_0x0088
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r6
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."
            java.lang.StringBuilder r0 = r0.append(r1)
            android.content.res.Resources$NotFoundException r0 = new android.content.res.Resources$NotFoundException
            r1 = r0
            r2 = r10
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            r1 = r6
            java.lang.Throwable r1 = r1.getCause()
            java.lang.Throwable r0 = r0.initCause(r1)
            r0 = r10
            r1 = r6
            java.lang.StackTraceElement[] r1 = r1.getStackTrace()
            r0.setStackTrace(r1)
            r0 = r4
            java.lang.Thread$UncaughtExceptionHandler r0 = r0.f1335a
            r1 = r5
            r2 = r10
            r0.uncaughtException(r1, r2)
            return
        L_0x0088:
            r0 = r4
            java.lang.Thread$UncaughtExceptionHandler r0 = r0.f1335a
            r1 = r5
            r2 = r6
            r0.uncaughtException(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0312p.uncaughtException(java.lang.Thread, java.lang.Throwable):void");
    }
}

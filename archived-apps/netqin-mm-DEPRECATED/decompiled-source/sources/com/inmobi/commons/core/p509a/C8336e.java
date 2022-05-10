package com.inmobi.commons.core.p509a;

import java.lang.Thread;
/* renamed from: com.inmobi.commons.core.a.e */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/a/e.class */
public class C8336e implements Thread.UncaughtExceptionHandler {

    /* renamed from: b */
    public static final String f32420b = C8336e.class.getSimpleName();

    /* renamed from: a */
    public Thread.UncaughtExceptionHandler f32421a;

    public C8336e(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f32421a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (stackTrace[i].getClassName().contains("com.inmobi.")) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            try {
                C8328a.m5878a().m5876a(new C8335d(thread, th));
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                sb.append(th.getMessage());
                sb.append(")");
            }
        }
        this.f32421a.uncaughtException(thread, th);
    }
}

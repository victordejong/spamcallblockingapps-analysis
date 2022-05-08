package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.C3438kv;
import java.lang.Thread;
/* renamed from: com.flurry.sdk.lh */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lh.class */
public class C3455lh implements AbstractC3360ju, C3438kv.AbstractC3439a, Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public static final String f5945a = C3455lh.class.getSimpleName();

    /* renamed from: b */
    public boolean f5946b;

    @Override // com.flurry.sdk.AbstractC3360ju
    /* renamed from: a */
    public final void mo32356a(Context context) {
        C3437ku a = C3437ku.m32494a();
        this.f5946b = ((Boolean) a.m32493a("CaptureUncaughtExceptions")).booleanValue();
        a.m32492a("CaptureUncaughtExceptions", (C3438kv.AbstractC3439a) this);
        String str = f5945a;
        C3356jq.m32615a(4, str, "initSettings, CrashReportingEnabled = " + this.f5946b);
        C3456li a2 = C3456li.m32422a();
        synchronized (a2.f5949b) {
            a2.f5949b.put(this, null);
        }
    }

    @Override // com.flurry.sdk.C3438kv.AbstractC3439a
    /* renamed from: a */
    public final void mo32423a(String str, Object obj) {
        if (str.equals("CaptureUncaughtExceptions")) {
            this.f5946b = ((Boolean) obj).booleanValue();
            String str2 = f5945a;
            C3356jq.m32615a(4, str2, "onSettingUpdate, CrashReportingEnabled = " + this.f5946b);
            return;
        }
        C3356jq.m32615a(6, f5945a, "onSettingUpdate internal error!");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String str;
        th.printStackTrace();
        if (this.f5946b) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace == null || stackTrace.length <= 0) {
                str = th.getMessage() != null ? th.getMessage() : "";
            } else {
                StringBuilder sb = new StringBuilder();
                if (th.getMessage() != null) {
                    sb.append(" (");
                    sb.append(th.getMessage());
                    sb.append(")\n");
                }
                str = sb.toString();
            }
            C3180gq.m32933a().m32930a("uncaught", str, th);
        }
        C3427kr.m32517a().m32512b();
        C3306ip.m32731a().m32719f();
    }
}

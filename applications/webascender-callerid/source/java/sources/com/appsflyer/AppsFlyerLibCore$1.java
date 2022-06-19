package com.appsflyer;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$1.class */
final class AppsFlyerLibCore$1 implements Runnable {

    /* renamed from: ı */
    private /* synthetic */ AppsFlyerLibCore f2902;

    AppsFlyerLibCore$1(AppsFlyerLibCore appsFlyerLibCore) {
        this.f2902 = appsFlyerLibCore;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AFLogger.afDebugLog("Install Referrer collected locally");
            AppsFlyerLibCore.ι(this.f2902);
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
        }
    }
}

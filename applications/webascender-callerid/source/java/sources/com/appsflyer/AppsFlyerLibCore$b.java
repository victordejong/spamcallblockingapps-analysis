package com.appsflyer;

import android.content.Context;
import com.appsflyer.internal.C0670f;
import com.appsflyer.internal.C0697z;
import com.appsflyer.internal.model.event.CachedEvent;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$b.class */
final class AppsFlyerLibCore$b implements Runnable {

    /* renamed from: ǃ */
    private /* synthetic */ AppsFlyerLibCore f2918;

    /* renamed from: ɩ */
    private WeakReference<Context> f2919;

    public AppsFlyerLibCore$b(AppsFlyerLibCore appsFlyerLibCore, Context context) {
        this.f2918 = appsFlyerLibCore;
        this.f2919 = null;
        this.f2919 = new WeakReference<>(context);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public final void run() {
        if (AppsFlyerLibCore.ɨ(this.f2918)) {
            return;
        }
        this.f2918.Ɩ = System.currentTimeMillis();
        if (this.f2919 == null) {
            return;
        }
        AppsFlyerLibCore.ǃ(this.f2918, true);
        try {
            try {
                String str = AppsFlyerLibCore.ı(AppsFlyerProperties.AF_KEY);
                synchronized (this.f2919) {
                    C0697z.m4010();
                    for (C0670f c0670f : C0697z.m4008(this.f2919.get())) {
                        StringBuilder sb = new StringBuilder("resending request: ");
                        sb.append(c0670f.f3036);
                        AFLogger.afInfoLog(sb.toString());
                        try {
                            long currentTimeMillis = System.currentTimeMillis();
                            long parseLong = Long.parseLong(c0670f.f3039, 10);
                            AppsFlyerLibCore appsFlyerLibCore = this.f2918;
                            CachedEvent cachedEvent = new CachedEvent();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(c0670f.f3036);
                            sb2.append("&isCachedRequest=true&timeincache=");
                            sb2.append((currentTimeMillis - parseLong) / 1000);
                            AFEvent key = cachedEvent.urlString(sb2.toString()).post(c0670f.m4038()).key(str);
                            key.f2838 = this.f2919;
                            key.f2847 = c0670f.f3039;
                            key.f2842 = false;
                            AppsFlyerLibCore.Ι(appsFlyerLibCore, key);
                        } catch (Exception e) {
                            AFLogger.afErrorLog("Failed to resend cached request", e);
                        }
                    }
                }
            } catch (Exception e2) {
                AFLogger.afErrorLog("failed to check cache. ", e2);
            }
            AppsFlyerLibCore.ǃ(this.f2918, false);
            AppsFlyerLibCore.ӏ(this.f2918).shutdown();
            AppsFlyerLibCore.ɪ(this.f2918);
        } catch (Throwable th) {
            AppsFlyerLibCore.ǃ(this.f2918, false);
            throw th;
        }
    }
}

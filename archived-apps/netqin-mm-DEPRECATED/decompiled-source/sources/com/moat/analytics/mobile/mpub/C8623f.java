package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.mpub.C8667w;
import com.moat.analytics.mobile.mpub.p522a.p524b.C8615a;
import java.lang.ref.WeakReference;
/* renamed from: com.moat.analytics.mobile.mpub.f */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/f.class */
public class C8623f {

    /* renamed from: a */
    public static WebAdTracker f33456a;

    /* renamed from: b */
    public static WeakReference<Activity> f33457b = new WeakReference<>(null);

    /* renamed from: a */
    public static void m4956a() {
        if (f33456a != null) {
            C8652p.m4848a(3, "GMAInterstitialHelper", f33457b.get(), "Stopping to track GMA interstitial");
            f33456a.stopTracking();
            f33456a = null;
        }
    }

    /* renamed from: a */
    public static void m4955a(Activity activity) {
        try {
            if (C8667w.m4813a().f33573a != C8667w.EnumC8675d.OFF) {
                if (!m4953b(activity)) {
                    m4956a();
                    f33457b = new WeakReference<>(null);
                } else if (f33457b.get() == null || f33457b.get() != activity) {
                    View decorView = activity.getWindow().getDecorView();
                    if (decorView instanceof ViewGroup) {
                        C8615a<WebView> a = C8617ab.m4981a((ViewGroup) decorView, true);
                        if (a.m4983c()) {
                            f33457b = new WeakReference<>(activity);
                            m4954a(a.m4985b());
                        } else {
                            C8652p.m4848a(3, "GMAInterstitialHelper", activity, "Sorry, no WebView in this activity");
                        }
                    }
                }
            }
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: a */
    public static void m4954a(WebView webView) {
        C8652p.m4848a(3, "GMAInterstitialHelper", f33457b.get(), "Starting to track GMA interstitial");
        WebAdTracker createWebAdTracker = MoatFactory.create().createWebAdTracker(webView);
        f33456a = createWebAdTracker;
        createWebAdTracker.startTracking();
    }

    /* renamed from: b */
    public static boolean m4953b(Activity activity) {
        String name = activity.getClass().getName();
        C8652p.m4848a(3, "GMAInterstitialHelper", activity, "Activity name: " + name);
        return name.contains("com.google.android.gms.ads.AdActivity");
    }
}

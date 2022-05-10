package com.inmobi.ads;

import android.app.Application;
import android.view.View;
import android.webkit.WebView;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.uid.C8416c;
import com.inmobi.p497a.C8003o;
import com.moat.analytics.mobile.inm.MoatAnalytics;
import com.moat.analytics.mobile.inm.MoatFactory;
import com.moat.analytics.mobile.inm.MoatOptions;
import com.moat.analytics.mobile.inm.NativeDisplayTracker;
import com.moat.analytics.mobile.inm.ReactiveVideoTracker;
import com.moat.analytics.mobile.inm.ReactiveVideoTrackerPlugin;
import com.moat.analytics.mobile.inm.WebAdTracker;
import java.util.Map;
/* renamed from: com.inmobi.ads.z */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/z.class */
public class C8320z {

    /* renamed from: a */
    public static final String f32357a = "z";

    /* renamed from: b */
    public static final boolean f32358b = false;

    /* renamed from: c */
    public static boolean f32359c = false;

    /* renamed from: a */
    public static NativeDisplayTracker m5909a(Application application, String str, View view, Map<String, String> map) {
        if (!f32359c) {
            m5912a(application);
        }
        MoatAnalytics.getInstance().prepareNativeDisplayTracking(str);
        return MoatFactory.create().createNativeDisplayTracker(view, map);
    }

    /* renamed from: a */
    public static ReactiveVideoTracker m5910a(Application application, String str) {
        if (!f32359c) {
            m5912a(application);
        }
        return (ReactiveVideoTracker) MoatFactory.create().createCustomTracker(new ReactiveVideoTrackerPlugin(str));
    }

    /* renamed from: a */
    public static WebAdTracker m5911a(Application application, WebView webView) {
        if (!f32359c) {
            m5912a(application);
        }
        return MoatFactory.create().createWebAdTracker(webView);
    }

    /* renamed from: a */
    public static void m5912a(Application application) {
        if (!f32359c) {
            try {
                MoatOptions moatOptions = new MoatOptions();
                moatOptions.loggingEnabled = f32358b;
                moatOptions.disableLocationServices = !C8003o.m6743a().f31245a.f31250a.m6737a();
                C8416c.m5632a();
                Boolean g = C8416c.m5625g();
                if (g == null || g.booleanValue()) {
                    moatOptions.disableAdIdCollection = true;
                }
                MoatAnalytics.getInstance().start(moatOptions, application);
                f32359c = true;
            } catch (Exception e) {
                new StringBuilder("Exception in initializing the Moat library : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }
    }
}

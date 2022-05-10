package com.moat.analytics.mobile.mpub;

import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.mpub.AbstractC8661v;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/MoatFactory.class */
public abstract class MoatFactory {
    public static MoatFactory create() {
        try {
            return new C8644n();
        } catch (Exception e) {
            C8643m.m4879a(e);
            return new AbstractC8661v.C8663b();
        }
    }

    public abstract <T> T createCustomTracker(MoatPlugin<T> moatPlugin);

    public abstract NativeDisplayTracker createNativeDisplayTracker(View view, Map<String, String> map);

    public abstract NativeVideoTracker createNativeVideoTracker(String str);

    public abstract WebAdTracker createWebAdTracker(ViewGroup viewGroup);

    public abstract WebAdTracker createWebAdTracker(WebView webView);
}

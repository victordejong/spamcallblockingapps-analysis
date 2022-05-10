package com.moat.analytics.mobile.inm;

import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.inm.AbstractC8580v;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/MoatFactory.class */
public abstract class MoatFactory {
    public static MoatFactory create() {
        try {
            return new C8563n();
        } catch (Exception e) {
            C8562m.m5135a(e);
            return new AbstractC8580v.C8582b();
        }
    }

    public abstract <T> T createCustomTracker(MoatPlugin<T> moatPlugin);

    public abstract NativeDisplayTracker createNativeDisplayTracker(View view, Map<String, String> map);

    public abstract NativeVideoTracker createNativeVideoTracker(String str);

    public abstract WebAdTracker createWebAdTracker(ViewGroup viewGroup);

    public abstract WebAdTracker createWebAdTracker(WebView webView);
}

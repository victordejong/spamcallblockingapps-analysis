package com.aotter.net.trek.ads.view;

import android.app.Dialog;
import com.aotter.net.trek.ads.view.common.CloseableLayout;
/* renamed from: com.aotter.net.trek.ads.view.f */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/f.class */
public class C1695f implements CloseableLayout.OnCloseListener {

    /* renamed from: a */
    public final /* synthetic */ InterActiveWebView f1382a;

    public C1695f(InterActiveWebView interActiveWebView) {
        this.f1382a = interActiveWebView;
    }

    @Override // com.aotter.net.trek.ads.view.common.CloseableLayout.OnCloseListener
    public void onClose() {
        Dialog dialog;
        Dialog dialog2;
        dialog = this.f1382a.f1268g;
        if (dialog != null) {
            dialog2 = this.f1382a.f1268g;
            dialog2.dismiss();
        }
    }
}

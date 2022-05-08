package com.aotter.net.trek.ads.view;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: com.aotter.net.trek.ads.view.i */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/i.class */
public class ViewTreeObserver$OnPreDrawListenerC1698i implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoView f1386a;

    public ViewTreeObserver$OnPreDrawListenerC1698i(NativeVideoView nativeVideoView) {
        this.f1386a = nativeVideoView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        View view;
        NativeVideoView nativeVideoView = this.f1386a;
        view = this.f1386a.f1285h;
        nativeVideoView.m36480a(nativeVideoView.f1278a.get(), view);
        return true;
    }
}

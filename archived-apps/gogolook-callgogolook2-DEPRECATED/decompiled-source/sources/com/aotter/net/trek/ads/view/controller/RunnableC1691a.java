package com.aotter.net.trek.ads.view.controller;

import android.view.View;
import android.widget.FrameLayout;
import com.aotter.net.trek.ads.view.TrekView;
/* renamed from: com.aotter.net.trek.ads.view.controller.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/controller/a.class */
public class RunnableC1691a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f1376a;

    /* renamed from: b */
    public final /* synthetic */ AdViewController f1377b;

    public RunnableC1691a(AdViewController adViewController, View view) {
        this.f1377b = adViewController;
        this.f1376a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        FrameLayout.LayoutParams b;
        TrekView trekView = this.f1377b.getTrekView();
        if (trekView != null) {
            trekView.removeAllViews();
            View view = this.f1376a;
            b = this.f1377b.m36424b(view);
            trekView.addView(view, b);
        }
    }
}

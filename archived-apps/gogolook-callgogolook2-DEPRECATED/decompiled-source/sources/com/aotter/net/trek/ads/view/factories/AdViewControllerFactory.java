package com.aotter.net.trek.ads.view.factories;

import android.content.Context;
import com.aotter.net.trek.ads.view.TrekView;
import com.aotter.net.trek.ads.view.controller.AdViewController;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/factories/AdViewControllerFactory.class */
public class AdViewControllerFactory {

    /* renamed from: a */
    public static AdViewControllerFactory f1383a = new AdViewControllerFactory();

    public static AdViewController create(Context context, TrekView trekView) {
        return f1383a.m36422a(context, trekView);
    }

    public static void setInstance(AdViewControllerFactory adViewControllerFactory) {
        f1383a = adViewControllerFactory;
    }

    /* renamed from: a */
    public AdViewController m36422a(Context context, TrekView trekView) {
        return new AdViewController(context, trekView);
    }
}

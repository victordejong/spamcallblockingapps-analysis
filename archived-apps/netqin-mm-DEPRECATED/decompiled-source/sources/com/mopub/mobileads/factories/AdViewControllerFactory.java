package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/AdViewControllerFactory.class */
public class AdViewControllerFactory {

    /* renamed from: a */
    public static AdViewControllerFactory f34499a = new AdViewControllerFactory();

    public static AdViewController create(Context context, MoPubView moPubView) {
        return f34499a.m4144a(context, moPubView);
    }

    @Deprecated
    public static void setInstance(AdViewControllerFactory adViewControllerFactory) {
        f34499a = adViewControllerFactory;
    }

    /* renamed from: a */
    public AdViewController m4144a(Context context, MoPubView moPubView) {
        return new AdViewController(context, moPubView);
    }
}

package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/MoPubViewFactory.class */
public class MoPubViewFactory {

    /* renamed from: a */
    public static MoPubViewFactory f34506a = new MoPubViewFactory();

    public static MoPubView create(Context context) {
        return f34506a.m4139a(context);
    }

    @Deprecated
    @VisibleForTesting
    public static void setInstance(MoPubViewFactory moPubViewFactory) {
        f34506a = moPubViewFactory;
    }

    /* renamed from: a */
    public MoPubView m4139a(Context context) {
        return new MoPubView(context);
    }
}

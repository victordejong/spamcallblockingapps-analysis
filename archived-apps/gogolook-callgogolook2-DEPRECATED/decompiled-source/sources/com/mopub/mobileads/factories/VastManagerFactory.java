package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.VastManager;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/VastManagerFactory.class */
public class VastManagerFactory {

    /* renamed from: a */
    public static VastManagerFactory f8849a = new VastManagerFactory();

    public static VastManager create(Context context) {
        return f8849a.internalCreate(context, true);
    }

    public static VastManager create(Context context, boolean z) {
        return f8849a.internalCreate(context, z);
    }

    @Deprecated
    public static void setInstance(VastManagerFactory vastManagerFactory) {
        f8849a = vastManagerFactory;
    }

    public VastManager internalCreate(Context context, boolean z) {
        return new VastManager(context, z);
    }
}

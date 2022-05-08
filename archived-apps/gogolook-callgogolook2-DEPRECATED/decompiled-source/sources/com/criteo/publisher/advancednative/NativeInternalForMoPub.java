package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/NativeInternalForMoPub.class */
public class NativeInternalForMoPub {
    /* renamed from: a */
    public static CriteoNativeRenderer m35987a(@NonNull CriteoNativeRenderer criteoNativeRenderer) {
        return new AdChoiceOverlayNativeRenderer(criteoNativeRenderer);
    }

    /* renamed from: a */
    public static void m35988a(@NonNull CriteoNativeAd criteoNativeAd, @NonNull CriteoNativeRenderer criteoNativeRenderer) {
        criteoNativeAd.setRenderer(criteoNativeRenderer);
    }
}

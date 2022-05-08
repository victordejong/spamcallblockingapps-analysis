package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialFadeThrough.class */
public final class MaterialFadeThrough extends MaterialVisibility<FadeThroughProvider> {
    public MaterialFadeThrough() {
        super(m8486b(), m8485c());
    }

    /* renamed from: b */
    private static FadeThroughProvider m8486b() {
        return new FadeThroughProvider();
    }

    /* renamed from: c */
    private static VisibilityAnimatorProvider m8485c() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.m8481e(false);
        scaleProvider.m8482d(0.92f);
        return scaleProvider;
    }
}

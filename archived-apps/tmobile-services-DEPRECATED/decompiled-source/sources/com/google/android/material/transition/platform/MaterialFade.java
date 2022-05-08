package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialFade.class */
public final class MaterialFade extends MaterialVisibility<FadeProvider> {
    public MaterialFade() {
        super(m8488b(), m8487c());
    }

    /* renamed from: b */
    private static FadeProvider m8488b() {
        FadeProvider fadeProvider = new FadeProvider();
        fadeProvider.m8545d(0.3f);
        return fadeProvider;
    }

    /* renamed from: c */
    private static VisibilityAnimatorProvider m8487c() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.m8481e(false);
        scaleProvider.m8482d(0.8f);
        return scaleProvider;
    }
}

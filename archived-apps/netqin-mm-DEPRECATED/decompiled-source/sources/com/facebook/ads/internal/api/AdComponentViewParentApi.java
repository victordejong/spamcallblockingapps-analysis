package com.facebook.ads.internal.api;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/AdComponentViewParentApi.class */
public interface AdComponentViewParentApi {
    void addView(View view, int i, ViewGroup.LayoutParams layoutParams);

    void onAttachedToWindow();

    void onDetachedFromWindow();

    void onMeasure(int i, int i2);

    void onVisibilityChanged(View view, int i);

    void onWindowFocusChanged(boolean z);

    void setLayoutParams(ViewGroup.LayoutParams layoutParams);

    void setMeasuredDimension(int i, int i2);
}

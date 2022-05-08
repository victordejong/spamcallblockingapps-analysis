package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd.class */
public abstract class NativeAd {
    public static final String ASSET_ADCHOICES_CONTAINER_VIEW = "1098";

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd$AdChoicesInfo.class */
    public static abstract class AdChoicesInfo {
        public abstract List<Image> getImages();

        public abstract CharSequence getText();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd$Image.class */
    public static abstract class Image {
        public abstract Drawable getDrawable();

        public abstract double getScale();

        public abstract Uri getUri();
    }

    @Deprecated
    public abstract void performClick(Bundle bundle);

    @Deprecated
    public abstract boolean recordImpression(Bundle bundle);

    @Deprecated
    public abstract void reportTouchEvent(Bundle bundle);

    public abstract Object zzbd();
}

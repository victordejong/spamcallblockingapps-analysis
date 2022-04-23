package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd.class */
public abstract class NativeAd {
    public static final String ASSET_ADCHOICES_CONTAINER_VIEW = "1098";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd$AdChoicesInfo.class */
    public static abstract class AdChoicesInfo {
        public abstract List<Image> getImages();

        public abstract CharSequence getText();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd$Image.class */
    public static abstract class Image {
        public abstract Drawable getDrawable();

        public int getHeight() {
            return -1;
        }

        public abstract double getScale();

        public abstract Uri getUri();

        public int getWidth() {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo4434a();

    @Deprecated
    public abstract void performClick(Bundle bundle);

    @Deprecated
    public abstract boolean recordImpression(Bundle bundle);

    @Deprecated
    public abstract void reportTouchEvent(Bundle bundle);
}

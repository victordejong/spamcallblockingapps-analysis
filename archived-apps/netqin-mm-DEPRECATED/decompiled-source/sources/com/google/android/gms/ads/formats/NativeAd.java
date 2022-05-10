package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd.class */
public abstract class NativeAd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAd$AdChoicesInfo.class */
    public static abstract class AdChoicesInfo {
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

    /* renamed from: a */
    public abstract Object mo16818a();
}

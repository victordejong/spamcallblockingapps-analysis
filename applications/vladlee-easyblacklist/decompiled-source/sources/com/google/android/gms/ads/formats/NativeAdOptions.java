package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions.class */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;
    @Deprecated
    public static final int ORIENTATION_ANY = 0;
    @Deprecated
    public static final int ORIENTATION_LANDSCAPE = 2;
    @Deprecated
    public static final int ORIENTATION_PORTRAIT = 1;

    /* renamed from: a */
    private final boolean f5858a;

    /* renamed from: b */
    private final int f5859b;

    /* renamed from: c */
    private final int f5860c;

    /* renamed from: d */
    private final boolean f5861d;

    /* renamed from: e */
    private final int f5862e;

    /* renamed from: f */
    private final VideoOptions f5863f;

    /* renamed from: g */
    private final boolean f5864g;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement.class */
    public @interface AdChoicesPlacement {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$Builder.class */
    public static final class Builder {

        /* renamed from: e */
        private VideoOptions f5869e;

        /* renamed from: a */
        private boolean f5865a = false;

        /* renamed from: b */
        private int f5866b = -1;

        /* renamed from: c */
        private int f5867c = 0;

        /* renamed from: d */
        private boolean f5868d = false;

        /* renamed from: f */
        private int f5870f = 1;

        /* renamed from: g */
        private boolean f5871g = false;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this, (byte) 0);
        }

        public final Builder setAdChoicesPlacement(int i) {
            this.f5870f = i;
            return this;
        }

        @Deprecated
        public final Builder setImageOrientation(int i) {
            this.f5866b = i;
            return this;
        }

        public final Builder setMediaAspectRatio(int i) {
            this.f5867c = i;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean z) {
            this.f5871g = z;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean z) {
            this.f5868d = z;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean z) {
            this.f5865a = z;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.f5869e = videoOptions;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio.class */
    public @interface NativeMediaAspectRatio {
    }

    private NativeAdOptions(Builder builder) {
        this.f5858a = builder.f5865a;
        this.f5859b = builder.f5866b;
        this.f5860c = builder.f5867c;
        this.f5861d = builder.f5868d;
        this.f5862e = builder.f5870f;
        this.f5863f = builder.f5869e;
        this.f5864g = builder.f5871g;
    }

    /* synthetic */ NativeAdOptions(Builder builder, byte b) {
        this(builder);
    }

    public final int getAdChoicesPlacement() {
        return this.f5862e;
    }

    @Deprecated
    public final int getImageOrientation() {
        return this.f5859b;
    }

    public final int getMediaAspectRatio() {
        return this.f5860c;
    }

    public final VideoOptions getVideoOptions() {
        return this.f5863f;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.f5861d;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.f5858a;
    }

    public final boolean zzjk() {
        return this.f5864g;
    }
}

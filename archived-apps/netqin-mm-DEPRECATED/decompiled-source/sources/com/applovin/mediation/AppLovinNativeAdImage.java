package com.applovin.mediation;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinNativeAdImage.class */
public class AppLovinNativeAdImage extends NativeAd.Image {

    /* renamed from: a */
    public final Drawable f21797a;

    /* renamed from: b */
    public final Uri f21798b;

    public AppLovinNativeAdImage(Uri uri, Drawable drawable) {
        this.f21797a = drawable;
        this.f21798b = uri;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Drawable getDrawable() {
        return this.f21797a;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public double getScale() {
        return 1.0d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Uri getUri() {
        return this.f21798b;
    }
}

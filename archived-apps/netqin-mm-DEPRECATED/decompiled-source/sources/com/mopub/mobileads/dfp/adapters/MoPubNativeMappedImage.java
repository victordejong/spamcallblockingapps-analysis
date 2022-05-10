package com.mopub.mobileads.dfp.adapters;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubNativeMappedImage.class */
public class MoPubNativeMappedImage extends NativeAd.Image {

    /* renamed from: a */
    public Drawable f34481a;

    /* renamed from: b */
    public Uri f34482b;

    /* renamed from: c */
    public double f34483c;

    public MoPubNativeMappedImage(Drawable drawable, String str, double d) {
        this.f34481a = drawable;
        this.f34482b = Uri.parse(str);
        this.f34483c = d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Drawable getDrawable() {
        return this.f34481a;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public double getScale() {
        return this.f34483c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Uri getUri() {
        return this.f34482b;
    }
}

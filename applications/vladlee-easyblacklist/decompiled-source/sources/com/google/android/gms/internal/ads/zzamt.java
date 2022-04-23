package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamt.class */
public final class zzamt extends zzalu {

    /* renamed from: a */
    private final UnifiedNativeAdMapper f11066a;

    public zzamt(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.f11066a = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getAdvertiser() {
        return this.f11066a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getBody() {
        return this.f11066a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getCallToAction() {
        return this.f11066a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final Bundle getExtras() {
        return this.f11066a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getHeadline() {
        return this.f11066a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final List getImages() {
        List<NativeAd.Image> images = this.f11066a.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzabu(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final float getMediaContentAspectRatio() {
        return this.f11066a.getMediaContentAspectRatio();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final boolean getOverrideClickHandling() {
        return this.f11066a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final boolean getOverrideImpressionRecording() {
        return this.f11066a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getPrice() {
        return this.f11066a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final double getStarRating() {
        if (this.f11066a.getStarRating() != null) {
            return this.f11066a.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String getStore() {
        return this.f11066a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final zzxb getVideoController() {
        if (this.f11066a.getVideoController() != null) {
            return this.f11066a.getVideoController().zzdl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void recordImpression() {
        this.f11066a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f11066a.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final zzaci zzrg() {
        NativeAd.Image icon = this.f11066a.getIcon();
        if (icon != null) {
            return new zzabu(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final zzaca zzrh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final IObjectWrapper zzri() {
        Object zzjo = this.f11066a.zzjo();
        if (zzjo == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzjo);
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final IObjectWrapper zzsu() {
        View adChoicesContent = this.f11066a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final IObjectWrapper zzsv() {
        View zzabz = this.f11066a.zzabz();
        if (zzabz == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzabz);
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.f11066a.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.f11066a.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamb.class */
public final class zzamb extends zzalo {

    /* renamed from: a */
    private final NativeAppInstallAdMapper f11047a;

    public zzamb(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.f11047a = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final String getBody() {
        return this.f11047a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final String getCallToAction() {
        return this.f11047a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final Bundle getExtras() {
        return this.f11047a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final String getHeadline() {
        return this.f11047a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final List getImages() {
        List<NativeAd.Image> images = this.f11047a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzabu(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final boolean getOverrideClickHandling() {
        return this.f11047a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final boolean getOverrideImpressionRecording() {
        return this.f11047a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final String getPrice() {
        return this.f11047a.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final double getStarRating() {
        return this.f11047a.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final String getStore() {
        return this.f11047a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final zzxb getVideoController() {
        if (this.f11047a.getVideoController() != null) {
            return this.f11047a.getVideoController().zzdl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void recordImpression() {
        this.f11047a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f11047a.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final zzaci zzrg() {
        NativeAd.Image icon = this.f11047a.getIcon();
        if (icon != null) {
            return new zzabu(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final zzaca zzrh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final IObjectWrapper zzri() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final IObjectWrapper zzsu() {
        View adChoicesContent = this.f11047a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final IObjectWrapper zzsv() {
        View zzabz = this.f11047a.zzabz();
        if (zzabz == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzabz);
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.f11047a.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.f11047a.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzall
    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.f11047a.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzame.class */
public final class zzame extends zzalp {

    /* renamed from: a */
    private final NativeContentAdMapper f11062a;

    public zzame(NativeContentAdMapper nativeContentAdMapper) {
        this.f11062a = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getAdvertiser() {
        return this.f11062a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getBody() {
        return this.f11062a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getCallToAction() {
        return this.f11062a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final Bundle getExtras() {
        return this.f11062a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final String getHeadline() {
        return this.f11062a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final List getImages() {
        List<NativeAd.Image> images = this.f11062a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzabu(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final boolean getOverrideClickHandling() {
        return this.f11062a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final boolean getOverrideImpressionRecording() {
        return this.f11062a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final zzxb getVideoController() {
        if (this.f11062a.getVideoController() != null) {
            return this.f11062a.getVideoController().zzdl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void recordImpression() {
        this.f11062a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f11062a.trackViews((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final zzaca zzrh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final IObjectWrapper zzri() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final zzaci zzrj() {
        NativeAd.Image logo = this.f11062a.getLogo();
        if (logo != null) {
            return new zzabu(logo.getDrawable(), logo.getUri(), logo.getScale(), logo.getWidth(), logo.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final IObjectWrapper zzsu() {
        View adChoicesContent = this.f11062a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.wrap(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final IObjectWrapper zzsv() {
        View zzabz = this.f11062a.zzabz();
        if (zzabz == null) {
            return null;
        }
        return ObjectWrapper.wrap(zzabz);
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzu(IObjectWrapper iObjectWrapper) {
        this.f11062a.handleClick((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzv(IObjectWrapper iObjectWrapper) {
        this.f11062a.trackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzalq
    public final void zzw(IObjectWrapper iObjectWrapper) {
        this.f11062a.untrackView((View) ObjectWrapper.unwrap(iObjectWrapper));
    }
}

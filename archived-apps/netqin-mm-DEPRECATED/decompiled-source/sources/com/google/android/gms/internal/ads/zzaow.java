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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaow.class */
public final class zzaow extends zzant {

    /* renamed from: a */
    public final UnifiedNativeAdMapper f24238a;

    public zzaow(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.f24238a = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: C */
    public final String mo16518C() {
        return this.f24238a.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: D */
    public final String mo16517D() {
        return this.f24238a.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: D0 */
    public final float mo16516D0() {
        return this.f24238a.getMediaContentAspectRatio();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: J */
    public final boolean mo16515J() {
        return this.f24238a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: N */
    public final IObjectWrapper mo16514N() {
        View zzadh = this.f24238a.zzadh();
        if (zzadh == null) {
            return null;
        }
        return ObjectWrapper.m17020a(zzadh);
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: N0 */
    public final float mo16513N0() {
        return this.f24238a.getCurrentTime();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: R */
    public final IObjectWrapper mo16512R() {
        View adChoicesContent = this.f24238a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.m17020a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: U */
    public final boolean mo16511U() {
        return this.f24238a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: a */
    public final void mo16510a(IObjectWrapper iObjectWrapper) {
        this.f24238a.untrackView((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: a */
    public final void mo16509a(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f24238a.trackViews((View) ObjectWrapper.m17021Q(iObjectWrapper), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper2), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: c */
    public final void mo16508c(IObjectWrapper iObjectWrapper) {
        this.f24238a.handleClick((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: d */
    public final zzadw mo16507d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: e */
    public final String mo16506e() {
        return this.f24238a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: f */
    public final String mo16505f() {
        return this.f24238a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: g */
    public final String mo16504g() {
        return this.f24238a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final Bundle getExtras() {
        return this.f24238a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final double getStarRating() {
        if (this.f24238a.getStarRating() != null) {
            return this.f24238a.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final zzyo getVideoController() {
        if (this.f24238a.getVideoController() != null) {
            return this.f24238a.getVideoController().m18090a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final float getVideoDuration() {
        return this.f24238a.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: h */
    public final IObjectWrapper mo16503h() {
        Object zzjx = this.f24238a.zzjx();
        if (zzjx == null) {
            return null;
        }
        return ObjectWrapper.m17020a(zzjx);
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: i */
    public final List mo16502i() {
        List<NativeAd.Image> images = this.f24238a.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzadq(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: m */
    public final void mo16501m() {
        this.f24238a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: q */
    public final zzaee mo16500q() {
        NativeAd.Image icon = this.f24238a.getIcon();
        if (icon != null) {
            return new zzadq(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: s */
    public final String mo16499s() {
        return this.f24238a.getPrice();
    }
}

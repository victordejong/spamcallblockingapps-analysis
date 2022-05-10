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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaod.class */
public final class zzaod extends zzans {

    /* renamed from: a */
    public final NativeContentAdMapper f24223a;

    public zzaod(NativeContentAdMapper nativeContentAdMapper) {
        this.f24223a = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: C */
    public final String mo16596C() {
        return this.f24223a.m17930a();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: J */
    public final boolean mo16595J() {
        return this.f24223a.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: N */
    public final IObjectWrapper mo16594N() {
        View zzadh = this.f24223a.zzadh();
        if (zzadh == null) {
            return null;
        }
        return ObjectWrapper.m17020a(zzadh);
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: R */
    public final IObjectWrapper mo16593R() {
        View adChoicesContent = this.f24223a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return ObjectWrapper.m17020a(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: U */
    public final boolean mo16592U() {
        return this.f24223a.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: a */
    public final void mo16591a(IObjectWrapper iObjectWrapper) {
        this.f24223a.untrackView((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: a */
    public final void mo16590a(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.f24223a.trackViews((View) ObjectWrapper.m17021Q(iObjectWrapper), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper2), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: c */
    public final void mo16589c(IObjectWrapper iObjectWrapper) {
        this.f24223a.handleClick((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: d */
    public final zzadw mo16588d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: e */
    public final String mo16587e() {
        return this.f24223a.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: e */
    public final void mo16586e(IObjectWrapper iObjectWrapper) {
        this.f24223a.trackView((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: f */
    public final String mo16585f() {
        return this.f24223a.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: g */
    public final String mo16584g() {
        return this.f24223a.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    public final Bundle getExtras() {
        return this.f24223a.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    public final zzyo getVideoController() {
        if (this.f24223a.getVideoController() != null) {
            return this.f24223a.getVideoController().m18090a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: h */
    public final IObjectWrapper mo16583h() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: i */
    public final List mo16582i() {
        List<NativeAd.Image> images = this.f24223a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzadq(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: m */
    public final void mo16581m() {
        this.f24223a.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: p0 */
    public final zzaee mo16580p0() {
        NativeAd.Image b = this.f24223a.m17927b();
        if (b != null) {
            return new zzadq(b.getDrawable(), b.getUri(), b.getScale(), b.getWidth(), b.getHeight());
        }
        return null;
    }
}

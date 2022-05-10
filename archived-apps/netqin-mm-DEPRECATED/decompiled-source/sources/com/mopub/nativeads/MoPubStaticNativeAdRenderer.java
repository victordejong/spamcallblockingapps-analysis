package com.mopub.nativeads;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.WeakHashMap;
import p131c.p421j.p426d.C6686k;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStaticNativeAdRenderer.class */
public class MoPubStaticNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {

    /* renamed from: a */
    public final ViewBinder f34787a;
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C6686k> f34788b = new WeakHashMap<>();

    public MoPubStaticNativeAdRenderer(ViewBinder viewBinder) {
        this.f34787a = viewBinder;
    }

    /* renamed from: a */
    public final void m3929a(C6686k kVar, int i) {
        View view = kVar.f20641a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m3928a(C6686k kVar, StaticNativeAd staticNativeAd) {
        NativeRendererHelper.addTextView(kVar.f20642b, staticNativeAd.getTitle());
        NativeRendererHelper.addTextView(kVar.f20643c, staticNativeAd.getText());
        NativeRendererHelper.addTextView(kVar.f20644d, staticNativeAd.getCallToAction());
        NativeImageHelper.loadImageView(staticNativeAd.getMainImageUrl(), kVar.f20645e);
        NativeImageHelper.loadImageView(staticNativeAd.getIconImageUrl(), kVar.f20646f);
        NativeRendererHelper.addPrivacyInformationIcon(kVar.f20647g, staticNativeAd.getPrivacyInformationIconImageUrl(), staticNativeAd.getPrivacyInformationIconClickThroughUrl());
        NativeRendererHelper.addSponsoredView(staticNativeAd.getSponsored(), kVar.f20648h);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public View createAdView(Context context, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f34787a.f34952a, viewGroup, false);
    }

    public void renderAdView(View view, StaticNativeAd staticNativeAd) {
        C6686k kVar = this.f34788b.get(view);
        C6686k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = C6686k.m20049a(view, this.f34787a);
            this.f34788b.put(view, kVar2);
        }
        m3928a(kVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(kVar2.f20641a, this.f34787a.f34960i, staticNativeAd.getExtras());
        m3929a(kVar2, 0);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}

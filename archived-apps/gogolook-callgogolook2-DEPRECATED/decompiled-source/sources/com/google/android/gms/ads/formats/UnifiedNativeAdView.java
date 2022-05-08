package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7;
import p081h.p203i.p204a.p224e.p259j.p260a.C7430v3;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAdView.class */
public final class UnifiedNativeAdView extends FrameLayout {
    public final FrameLayout zzwc;
    public final AbstractC7446w7 zzwd = zzbf();

    public UnifiedNativeAdView(Context context) {
        super(context);
        this.zzwc = zzb(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzwc = zzb(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzwc = zzb(context);
    }

    @TargetApi(21)
    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zzwc = zzb(context);
    }

    private final void zza(String str, View view) {
        try {
            this.zzwd.mo20471a(str, BinderC7110d.m21058a(view));
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call setAssetView on delegate", e);
        }
    }

    private final FrameLayout zzb(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final AbstractC7446w7 zzbf() {
        C7021t.m21289a(this.zzwc, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return C7430v3.m20639b().m20868a(this.zzwc.getContext(), this, this.zzwc);
    }

    private final View zzq(String str) {
        try {
            AbstractC7106b i = this.zzwd.mo20467i(str);
            if (i != null) {
                return (View) BinderC7110d.m21059A(i);
            }
            return null;
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzwc);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzwc;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final void destroy() {
        try {
            this.zzwd.destroy();
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to destroy native ad view", e);
        }
    }

    public final AdChoicesView getAdChoicesView() {
        View zzq = zzq(UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (zzq instanceof AdChoicesView) {
            return (AdChoicesView) zzq;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_ADVERTISER);
    }

    public final View getBodyView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_BODY);
    }

    public final View getCallToActionView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_CALL_TO_ACTION);
    }

    public final View getHeadlineView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_HEADLINE);
    }

    public final View getIconView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_ICON);
    }

    public final View getImageView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_IMAGE);
    }

    public final MediaView getMediaView() {
        View zzq = zzq(UnifiedNativeAdAssetNames.ASSET_MEDIA_VIDEO);
        if (zzq instanceof MediaView) {
            return (MediaView) zzq;
        }
        if (zzq == null) {
            return null;
        }
        C7452x1.m20572b("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_PRICE);
    }

    public final View getStarRatingView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_STAR_RATING);
    }

    public final View getStoreView() {
        return zzq(UnifiedNativeAdAssetNames.ASSET_STORE);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        AbstractC7446w7 w7Var = this.zzwd;
        if (w7Var != null) {
            try {
                w7Var.mo20468e(BinderC7110d.m21058a(view), i);
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzwc);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.zzwc != view) {
            super.removeView(view);
        }
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        zza(UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_ADVERTISER, view);
    }

    public final void setBodyView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_BODY, view);
    }

    public final void setCallToActionView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_CALL_TO_ACTION, view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.zzwd.mo20469d(BinderC7110d.m21058a(view));
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_HEADLINE, view);
    }

    public final void setIconView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_ICON, view);
    }

    public final void setImageView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_IMAGE, view);
    }

    public final void setMediaView(MediaView mediaView) {
        zza(UnifiedNativeAdAssetNames.ASSET_MEDIA_VIDEO, mediaView);
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        try {
            this.zzwd.mo20470c((AbstractC7106b) unifiedNativeAd.zzbd());
        } catch (RemoteException e) {
            C7452x1.m20571b("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_PRICE, view);
    }

    public final void setStarRatingView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_STAR_RATING, view);
    }

    public final void setStoreView(View view) {
        zza(UnifiedNativeAdAssetNames.ASSET_STORE, view);
    }
}

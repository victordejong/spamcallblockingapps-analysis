package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabt;
import com.google.android.gms.internal.ads.zzabv;
import com.google.android.gms.internal.ads.zzacd;
import com.google.android.gms.internal.ads.zzacm;
import com.google.android.gms.internal.ads.zzaek;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAdView.class */
public final class UnifiedNativeAdView extends FrameLayout {

    /* renamed from: a */
    private final FrameLayout f5883a;

    /* renamed from: b */
    private final zzacm f5884b = m6072a();

    public UnifiedNativeAdView(Context context) {
        super(context);
        this.f5883a = m6071a(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5883a = m6071a(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5883a = m6071a(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f5883a = m6071a(context);
    }

    /* renamed from: a */
    private final View m6068a(String str) {
        try {
            IObjectWrapper zzco = this.f5884b.zzco(str);
            if (zzco != null) {
                return (View) ObjectWrapper.unwrap(zzco);
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    /* renamed from: a */
    private final FrameLayout m6071a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    /* renamed from: a */
    private final zzacm m6072a() {
        Preconditions.checkNotNull(this.f5883a, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzve.zzov().zza(this.f5883a.getContext(), this, this.f5883a);
    }

    /* renamed from: a */
    private final void m6067a(String str, View view) {
        try {
            this.f5884b.zzb(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m6070a(ImageView.ScaleType scaleType) {
        try {
            if (scaleType instanceof ImageView.ScaleType) {
                this.f5884b.zzg(ObjectWrapper.wrap(scaleType));
            }
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setMediaViewImageScaleType on delegate", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m6069a(UnifiedNativeAd.MediaContent mediaContent) {
        try {
            if (mediaContent instanceof zzaek) {
                this.f5884b.zza(((zzaek) mediaContent).zzrr());
            } else if (mediaContent == null) {
                this.f5884b.zza((zzacd) null);
            } else {
                zzayu.zzea("Use MediaContent provided by UnifiedNativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setMediaContent on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f5883a);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f5883a;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final void destroy() {
        try {
            this.f5884b.destroy();
        } catch (RemoteException e) {
            zzayu.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzacm zzacmVar;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzclq)).booleanValue() && (zzacmVar = this.f5884b) != null) {
            try {
                zzacmVar.zzf(ObjectWrapper.wrap(motionEvent));
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final AdChoicesView getAdChoicesView() {
        View a = m6068a(UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (a instanceof AdChoicesView) {
            return (AdChoicesView) a;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_ADVERTISER);
    }

    public final View getBodyView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_BODY);
    }

    public final View getCallToActionView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_CALL_TO_ACTION);
    }

    public final View getHeadlineView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_HEADLINE);
    }

    public final View getIconView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_ICON);
    }

    public final View getImageView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_IMAGE);
    }

    public final MediaView getMediaView() {
        View a = m6068a(UnifiedNativeAdAssetNames.ASSET_MEDIA_VIDEO);
        if (a instanceof MediaView) {
            return (MediaView) a;
        }
        if (a == null) {
            return null;
        }
        zzayu.zzea("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_PRICE);
    }

    public final View getStarRatingView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_STAR_RATING);
    }

    public final View getStoreView() {
        return m6068a(UnifiedNativeAdAssetNames.ASSET_STORE);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzacm zzacmVar = this.f5884b;
        if (zzacmVar != null) {
            try {
                zzacmVar.zzc(ObjectWrapper.wrap(view), i);
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f5883a);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f5883a != view) {
            super.removeView(view);
        }
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_ADVERTISER, view);
    }

    public final void setBodyView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_BODY, view);
    }

    public final void setCallToActionView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_CALL_TO_ACTION, view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.f5884b.zze(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_HEADLINE, view);
    }

    public final void setIconView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_ICON, view);
    }

    public final void setImageView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_IMAGE, view);
    }

    public final void setMediaView(MediaView mediaView) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_MEDIA_VIDEO, mediaView);
        if (mediaView != null) {
            mediaView.m6090a(new zzabt(this) { // from class: com.google.android.gms.ads.formats.b

                /* renamed from: a */
                private final UnifiedNativeAdView f5886a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5886a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzabt
                public final void setMediaContent(UnifiedNativeAd.MediaContent mediaContent) {
                    this.f5886a.m6069a(mediaContent);
                }
            });
            mediaView.m6089a(new zzabv(this) { // from class: com.google.android.gms.ads.formats.a

                /* renamed from: a */
                private final UnifiedNativeAdView f5885a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5885a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzabv
                public final void setImageScaleType(ImageView.ScaleType scaleType) {
                    this.f5885a.m6070a(scaleType);
                }
            });
        }
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        try {
            this.f5884b.zza((IObjectWrapper) unifiedNativeAd.mo4431a());
        } catch (RemoteException e) {
            zzayu.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_PRICE, view);
    }

    public final void setStarRatingView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_STAR_RATING, view);
    }

    public final void setStoreView(View view) {
        m6067a(UnifiedNativeAdAssetNames.ASSET_STORE, view);
    }
}

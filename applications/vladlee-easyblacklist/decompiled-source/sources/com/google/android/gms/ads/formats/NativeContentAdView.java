package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.ads.zzayu;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeContentAdView.class */
public final class NativeContentAdView extends NativeAdView {
    public NativeContentAdView(Context context) {
        super(context);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public final View getAdvertiserView() {
        return super.m6079a(NativeContentAd.ASSET_ADVERTISER);
    }

    public final View getBodyView() {
        return super.m6079a(NativeContentAd.ASSET_BODY);
    }

    public final View getCallToActionView() {
        return super.m6079a(NativeContentAd.ASSET_CALL_TO_ACTION);
    }

    public final View getHeadlineView() {
        return super.m6079a(NativeContentAd.ASSET_HEADLINE);
    }

    public final View getImageView() {
        return super.m6079a(NativeContentAd.ASSET_IMAGE);
    }

    public final View getLogoView() {
        return super.m6079a(NativeContentAd.ASSET_LOGO);
    }

    public final MediaView getMediaView() {
        View a = super.m6079a(NativeContentAd.ASSET_MEDIA_VIDEO);
        if (a instanceof MediaView) {
            return (MediaView) a;
        }
        if (a == null) {
            return null;
        }
        zzayu.zzea("View is not an instance of MediaView");
        return null;
    }

    public final void setAdvertiserView(View view) {
        super.m6078a(NativeContentAd.ASSET_ADVERTISER, view);
    }

    public final void setBodyView(View view) {
        super.m6078a(NativeContentAd.ASSET_BODY, view);
    }

    public final void setCallToActionView(View view) {
        super.m6078a(NativeContentAd.ASSET_CALL_TO_ACTION, view);
    }

    public final void setHeadlineView(View view) {
        super.m6078a(NativeContentAd.ASSET_HEADLINE, view);
    }

    public final void setImageView(View view) {
        super.m6078a(NativeContentAd.ASSET_IMAGE, view);
    }

    public final void setLogoView(View view) {
        super.m6078a(NativeContentAd.ASSET_LOGO, view);
    }

    public final void setMediaView(MediaView mediaView) {
        super.m6078a(NativeContentAd.ASSET_MEDIA_VIDEO, mediaView);
    }
}

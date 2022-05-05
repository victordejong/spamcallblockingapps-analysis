package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd.class */
public abstract class UnifiedNativeAd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent.class */
    public interface MediaContent {
        float getAspectRatio();

        Drawable getMainImage();

        void setMainImage(Drawable drawable);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener.class */
    public interface OnUnifiedNativeAdLoadedListener {
        void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener.class */
    public interface UnconfirmedClickListener {
        void onUnconfirmedClickCancelled();

        void onUnconfirmedClickReceived(String str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Object mo4431a();

    public abstract void cancelUnconfirmedClick();

    public abstract void destroy();

    public abstract void enableCustomClickGesture();

    public abstract NativeAd.AdChoicesInfo getAdChoicesInfo();

    public abstract String getAdvertiser();

    public abstract String getBody();

    public abstract String getCallToAction();

    public abstract Bundle getExtras();

    public abstract String getHeadline();

    public abstract NativeAd.Image getIcon();

    public abstract List<NativeAd.Image> getImages();

    public abstract MediaContent getMediaContent();

    public abstract String getMediationAdapterClassName();

    public abstract List<MuteThisAdReason> getMuteThisAdReasons();

    public abstract String getPrice();

    public abstract Double getStarRating();

    public abstract String getStore();

    public abstract VideoController getVideoController();

    public abstract boolean isCustomClickGestureEnabled();

    public abstract boolean isCustomMuteThisAdEnabled();

    public abstract void muteThisAd(MuteThisAdReason muteThisAdReason);

    public abstract void performClick(Bundle bundle);

    public abstract void recordCustomClickGesture();

    public abstract boolean recordImpression(Bundle bundle);

    public abstract void reportTouchEvent(Bundle bundle);

    public abstract void setMuteThisAdListener(MuteThisAdListener muteThisAdListener);

    public abstract void setUnconfirmedClickListener(UnconfirmedClickListener unconfirmedClickListener);

    public abstract Object zzjo();
}

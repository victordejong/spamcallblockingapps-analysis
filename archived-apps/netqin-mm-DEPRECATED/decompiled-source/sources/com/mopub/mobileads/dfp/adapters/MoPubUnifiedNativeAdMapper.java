package com.mopub.mobileads.dfp.adapters;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.util.Drawables;
import com.mopub.nativeads.NativeImageHelper;
import com.mopub.nativeads.StaticNativeAd;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubUnifiedNativeAdMapper.class */
public class MoPubUnifiedNativeAdMapper extends UnifiedNativeAdMapper {

    /* renamed from: s */
    public StaticNativeAd f34484s;

    /* renamed from: t */
    public int f34485t;

    /* renamed from: u */
    public ImageView f34486u;

    /* renamed from: v */
    public int f34487v;

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubUnifiedNativeAdMapper$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubUnifiedNativeAdMapper$a.class */
    public class View$OnClickListenerC8865a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f34488a;

        /* renamed from: b */
        public final /* synthetic */ String f34489b;

        public View$OnClickListenerC8865a(MoPubUnifiedNativeAdMapper moPubUnifiedNativeAdMapper, Context context, String str) {
            this.f34488a = context;
            this.f34489b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f34488a, this.f34489b);
        }
    }

    public MoPubUnifiedNativeAdMapper(Context context, StaticNativeAd staticNativeAd, Drawable drawable, Drawable drawable2, int i, int i2) {
        this.f34484s = staticNativeAd;
        setHeadline(staticNativeAd.getTitle());
        setBody(this.f34484s.getText());
        setCallToAction(this.f34484s.getCallToAction());
        this.f34485t = i;
        this.f34487v = i2;
        setIcon(new MoPubNativeMappedImage(drawable, this.f34484s.getIconImageUrl(), 1.0d));
        NativeAd.Image moPubNativeMappedImage = new MoPubNativeMappedImage(drawable2, this.f34484s.getMainImageUrl(), 1.0d);
        List<NativeAd.Image> arrayList = new ArrayList<>();
        arrayList.add(moPubNativeMappedImage);
        setImages(arrayList);
        int height = moPubNativeMappedImage.getHeight();
        setMediaContentAspectRatio(height > 0 ? moPubNativeMappedImage.getWidth() / height : 0.0f);
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable2);
        setMediaView(imageView);
        setOverrideClickHandling(true);
        setOverrideImpressionRecording(true);
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void handleClick(View view) {
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void recordImpression() {
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
        super.trackViews(view, map, map2);
        this.f34484s.prepare(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            View childAt = viewGroup.getChildAt(viewGroup.getChildCount() - 1);
            if (childAt instanceof FrameLayout) {
                Context context = view.getContext();
                if (context != null) {
                    this.f34486u = new ImageView(context);
                    String privacyInformationIconImageUrl = this.f34484s.getPrivacyInformationIconImageUrl();
                    String privacyInformationIconClickThroughUrl = this.f34484s.getPrivacyInformationIconClickThroughUrl();
                    if (privacyInformationIconImageUrl == null || TextUtils.isEmpty(privacyInformationIconClickThroughUrl)) {
                        this.f34486u.setImageDrawable(Drawables.NATIVE_PRIVACY_INFORMATION_ICON.createDrawable(context));
                    } else {
                        NativeImageHelper.loadImageView(privacyInformationIconImageUrl, this.f34486u);
                    }
                    this.f34486u.setOnClickListener(new View$OnClickListenerC8865a(this, context, privacyInformationIconClickThroughUrl));
                    this.f34486u.setVisibility(0);
                    ((ViewGroup) childAt).addView(this.f34486u);
                    double d = this.f34487v * context.getResources().getDisplayMetrics().density;
                    Double.isNaN(d);
                    int i = (int) (d + 0.5d);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    int i2 = this.f34485t;
                    if (i2 == 0) {
                        layoutParams.gravity = 8388659;
                    } else if (i2 == 1) {
                        layoutParams.gravity = 8388661;
                    } else if (i2 == 2) {
                        layoutParams.gravity = 8388693;
                    } else if (i2 != 3) {
                        layoutParams.gravity = 8388661;
                    } else {
                        layoutParams.gravity = 8388691;
                    }
                    this.f34486u.setLayoutParams(layoutParams);
                    viewGroup.requestLayout();
                    return;
                }
                return;
            }
            Log.d(MoPubAdapter.TAG, "Failed to show AdChoices icon.");
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(View view) {
        super.untrackView(view);
        this.f34484s.clear(view);
        ImageView imageView = this.f34486u;
        if (imageView != null && ((ViewGroup) imageView.getParent()) != null) {
            ((ViewGroup) this.f34486u.getParent()).removeView(this.f34486u);
        }
    }
}

package com.mopub.mobileads.dfp.adapters;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.util.Drawables;
import com.mopub.nativeads.NativeImageHelper;
import com.mopub.nativeads.StaticNativeAd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper.class */
public class MoPubNativeAppInstallAdMapper extends NativeAppInstallAdMapper {

    /* renamed from: p */
    public StaticNativeAd f34475p;

    /* renamed from: q */
    public int f34476q;

    /* renamed from: r */
    public ImageView f34477r;

    /* renamed from: s */
    public int f34478s;

    /* renamed from: com.mopub.mobileads.dfp.adapters.MoPubNativeAppInstallAdMapper$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper$a.class */
    public class View$OnClickListenerC8864a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f34479a;

        /* renamed from: b */
        public final /* synthetic */ String f34480b;

        public View$OnClickListenerC8864a(MoPubNativeAppInstallAdMapper moPubNativeAppInstallAdMapper, Context context, String str) {
            this.f34479a = context;
            this.f34480b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f34479a, this.f34480b);
        }
    }

    public MoPubNativeAppInstallAdMapper(Context context, StaticNativeAd staticNativeAd, Drawable drawable, Drawable drawable2, int i, int i2) {
        this.f34475p = staticNativeAd;
        setHeadline(staticNativeAd.getTitle());
        setBody(this.f34475p.getText());
        setCallToAction(this.f34475p.getCallToAction());
        this.f34476q = i;
        this.f34478s = i2;
        setIcon(new MoPubNativeMappedImage(drawable, this.f34475p.getIconImageUrl(), 1.0d));
        NativeAd.Image moPubNativeMappedImage = new MoPubNativeMappedImage(drawable2, this.f34475p.getMainImageUrl(), 1.0d);
        List<NativeAd.Image> arrayList = new ArrayList<>();
        arrayList.add(moPubNativeMappedImage);
        setImages(arrayList);
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable2);
        setMediaView(imageView);
        setOverrideClickHandling(true);
        setOverrideImpressionRecording(true);
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void handleClick(View view) {
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void recordImpression() {
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void trackView(View view) {
        this.f34475p.prepare(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            View childAt = viewGroup.getChildAt(viewGroup.getChildCount() - 1);
            if (childAt instanceof FrameLayout) {
                Context context = view.getContext();
                if (context != null) {
                    this.f34477r = new ImageView(context);
                    String privacyInformationIconImageUrl = this.f34475p.getPrivacyInformationIconImageUrl();
                    String privacyInformationIconClickThroughUrl = this.f34475p.getPrivacyInformationIconClickThroughUrl();
                    if (privacyInformationIconImageUrl == null) {
                        this.f34477r.setImageDrawable(Drawables.NATIVE_PRIVACY_INFORMATION_ICON.createDrawable(context));
                    } else {
                        NativeImageHelper.loadImageView(privacyInformationIconImageUrl, this.f34477r);
                    }
                    this.f34477r.setOnClickListener(new View$OnClickListenerC8864a(this, context, privacyInformationIconClickThroughUrl));
                    this.f34477r.setVisibility(0);
                    ((ViewGroup) childAt).addView(this.f34477r);
                    double d = this.f34478s * context.getResources().getDisplayMetrics().density;
                    Double.isNaN(d);
                    int i = (int) (d + 0.5d);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    int i2 = this.f34476q;
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
                    this.f34477r.setLayoutParams(layoutParams);
                    viewGroup.requestLayout();
                    return;
                }
                return;
            }
            Log.d(MoPubAdapter.TAG, "Failed to show AdChoices icon.");
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void untrackView(View view) {
        super.untrackView(view);
        this.f34475p.clear(view);
        ImageView imageView = this.f34477r;
        if (imageView != null && ((ViewGroup) imageView.getParent()) != null) {
            ((ViewGroup) this.f34477r.getParent()).removeView(this.f34477r);
        }
    }
}

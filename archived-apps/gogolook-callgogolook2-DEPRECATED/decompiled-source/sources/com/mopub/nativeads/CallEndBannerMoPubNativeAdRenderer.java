package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.AppierNative;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AotterTrekUtils;
import java.util.List;
import java.util.WeakHashMap;
import p081h.p160h.p161a.p170p.C6270b;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p622k.p623a.p624a.p625a.C14698a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndBannerMoPubNativeAdRenderer.class */
public class CallEndBannerMoPubNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {
    @NonNull

    /* renamed from: a */
    public final C6289b f9024a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C6287a> f9025b = new WeakHashMap<>();

    /* renamed from: c */
    public Context f9026c;

    /* renamed from: com.mopub.nativeads.CallEndBannerMoPubNativeAdRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndBannerMoPubNativeAdRenderer$a.class */
    public class View$OnClickListenerC3938a implements View.OnClickListener {
        public View$OnClickListenerC3938a(CallEndBannerMoPubNativeAdRenderer callEndBannerMoPubNativeAdRenderer) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* renamed from: com.mopub.nativeads.CallEndBannerMoPubNativeAdRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndBannerMoPubNativeAdRenderer$b.class */
    public static final class View$OnClickListenerC3939b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9027a;

        /* renamed from: b */
        public final /* synthetic */ String f9028b;

        public View$OnClickListenerC3939b(Context context, String str) {
            this.f9027a = context;
            this.f9028b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9027a, this.f9028b);
        }
    }

    /* renamed from: com.mopub.nativeads.CallEndBannerMoPubNativeAdRenderer$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndBannerMoPubNativeAdRenderer$c.class */
    public class View$OnClickListenerC3940c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9029a;

        public View$OnClickListenerC3940c(CallEndBannerMoPubNativeAdRenderer callEndBannerMoPubNativeAdRenderer, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9029a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9029a.getCallToActionView().performClick();
        }
    }

    public CallEndBannerMoPubNativeAdRenderer(@NonNull C6289b bVar) {
        this.f9024a = bVar;
    }

    public static void addPrivacyInformationIcon(ImageView imageView, int i, String str) {
        if (imageView == null) {
            return;
        }
        if (str == null) {
            imageView.setImageDrawable(null);
            imageView.setOnClickListener(null);
            imageView.setVisibility(8);
            return;
        }
        Context context = imageView.getContext();
        if (context != null) {
            imageView.setImageResource(i);
            imageView.setOnClickListener(new View$OnClickListenerC3939b(context, str));
            imageView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m30203a(@NonNull C6287a aVar, int i) {
        View view = aVar.f15566a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m30201a(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        UnifiedNativeAdView unifiedNativeAdView;
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.ll_nativeAd);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.callend_native_banner_ads_admob_unified);
                View inflate = viewStub.inflate();
                if (inflate != null && (unifiedNativeAdView = (UnifiedNativeAdView) inflate.findViewById(R$id.unadv)) != null) {
                    TextView textView = (TextView) inflate.findViewById(R$id.tv_title);
                    NativeRendererHelper.addTextView(textView, adMobStaticNativeAd.getTitle());
                    unifiedNativeAdView.setHeadlineView(textView);
                    TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content);
                    NativeRendererHelper.addTextView(textView2, adMobStaticNativeAd.getText());
                    unifiedNativeAdView.setBodyView(textView2);
                    TextView textView3 = (TextView) inflate.findViewById(R$id.tv_cta_btn);
                    NativeRendererHelper.addTextView(textView3, adMobStaticNativeAd.getCallToAction());
                    unifiedNativeAdView.setCallToActionView(textView3);
                    ImageView imageView = (ImageView) inflate.findViewById(R$id.iv_ad_icon);
                    if (!(imageView == null || unifiedNativeAd.getIcon() == null)) {
                        imageView.setImageDrawable(unifiedNativeAd.getIcon().getDrawable());
                        unifiedNativeAdView.setIconView(imageView);
                    }
                    ImageView imageView2 = (ImageView) inflate.findViewById(R$id.iv_ad);
                    List<NativeAd.Image> images = unifiedNativeAd.getImages();
                    if (!(imageView2 == null || images.size() <= 0 || images.get(0) == null)) {
                        imageView2.setImageDrawable(images.get(0).getDrawable());
                        unifiedNativeAdView.setImageView(imageView2);
                    }
                    LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R$id.ll_nativeAd);
                    if (linearLayout != null) {
                        linearLayout.setOnClickListener(new View$OnClickListenerC3940c(this, unifiedNativeAdView));
                    }
                    unifiedNativeAdView.setNativeAd(unifiedNativeAd);
                    ImageView imageView3 = (ImageView) inflate.findViewById(R$id.iv_privacy);
                    if (imageView3 != null) {
                        imageView3.setVisibility(8);
                    }
                    FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.fl_fb_ad_choice_container);
                    if (frameLayout != null) {
                        frameLayout.setVisibility(8);
                    }
                    View findViewById2 = inflate.findViewById(R$id.v_adchoice_dummy);
                    if (findViewById2 != null) {
                        findViewById2.setVisibility(8);
                    }
                    TextView textView4 = (TextView) inflate.findViewById(R$id.tv_sponsored);
                    if (textView4 != null) {
                        textView4.setVisibility(8);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m30204a(@NonNull View view, @NonNull StaticNativeAd staticNativeAd, @NonNull String str) {
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.vs_admob);
        if (viewStub == null) {
            return false;
        }
        View findViewById = view.findViewById(R$id.ll_nativeAd);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        return MoPubRenderAotterTrekAdsUtils.renderAotterTrekAd(AdUnit.CALL_END_BANNER, viewStub, staticNativeAd, str);
    }

    /* renamed from: a */
    public final boolean m30202a(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        boolean z = false;
        z = false;
        if (aVar.f15566a.findViewById(R$id.vs_admob) != null) {
            aVar.f15566a.findViewById(R$id.ll_nativeAd).setVisibility(8);
            ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
            if (viewStub == null) {
                return false;
            }
            AotterTrekCustomEvent.AotterTrekStaticAd aotterTrekStaticAd = (AotterTrekCustomEvent.AotterTrekStaticAd) staticNativeAd;
            C6289b b = AotterTrekUtils.m28795b(aotterTrekStaticAd.getLabel());
            if (b == null) {
                return false;
            }
            viewStub.setLayoutResource(b.f15575a);
            C6287a a = C6287a.m23403a(viewStub.inflate(), b);
            View view = a.f15566a;
            if (view == null) {
                return false;
            }
            String label = aotterTrekStaticAd.getLabel();
            if (((label.hashCode() == -2093837530 && label.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_BANNER)) ? (char) 0 : (char) 65535) == 0) {
                ImageView imageView = a.f15570e;
                ImageView imageView2 = (ImageView) view.findViewById(R$id.iv_ad_inner_close);
                ImageView imageView3 = (ImageView) view.findViewById(R$id.iv_ad_outer_close);
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
                if (imageView3 != null) {
                    imageView3.setVisibility(8);
                }
                aVar.f15566a.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                int f = C6272d.m23416f();
                view.setPadding(f, f, f, f);
                view.findViewById(R$id.rl_whole).setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                C6272d.m23426a(aotterTrekStaticAd.getMainImageUrl(), imageView, true, true, 2, C14698a.EnumC14700b.ALL, null);
                z = true;
            }
            String str = "[renderedAotterPcaAd] rendering " + aotterTrekStaticAd.getLabel();
        }
        return z;
    }

    /* renamed from: b */
    public final void m30200b(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        if (aVar.f15566a != null) {
            if (staticNativeAd instanceof AotterTrekCustomEvent.AotterTrekStaticAd) {
                if (!m30202a(aVar, staticNativeAd)) {
                    m30203a(aVar, 8);
                }
            } else if (staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd) {
                m30201a(aVar, (AdMobCustomEvent.AdMobStaticNativeAd) staticNativeAd);
            } else {
                boolean z = staticNativeAd instanceof MoPubCustomEventNative.C3966b;
                if (z) {
                    String aotterTrekLabel = MoPubRenderAotterTrekAdsUtils.getAotterTrekLabel(AdUnit.CALL_END_BANNER, staticNativeAd);
                    if (!TextUtils.isEmpty(aotterTrekLabel)) {
                        if (!m30204a(aVar.f15566a, staticNativeAd, aotterTrekLabel)) {
                            m30203a(aVar, 8);
                            return;
                        }
                        return;
                    }
                }
                NativeRendererHelper.addTextView(aVar.f15567b, staticNativeAd.getTitle());
                String callToAction = staticNativeAd.getCallToAction();
                TextView textView = aVar.f15569d;
                if (TextUtils.isEmpty(callToAction)) {
                    callToAction = C6272d.m23415g();
                }
                NativeRendererHelper.addTextView(textView, callToAction);
                C6272d.m23426a(staticNativeAd.getMainImageUrl(), aVar.f15570e, true, true, 5, C14698a.EnumC14700b.TOP, null);
                if (staticNativeAd instanceof FlurryStaticNativeAd) {
                    TextView textView2 = (TextView) aVar.f15566a.findViewById(R$id.tv_sponsored);
                    TextView textView3 = (TextView) aVar.f15566a.findViewById(R$id.tv_content);
                    textView2.setText(staticNativeAd.getText());
                    addPrivacyInformationIcon(aVar.f15572g, 2131230831, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    aVar.f15569d.setVisibility(8);
                    textView2.setVisibility(0);
                    textView3.setVisibility(8);
                } else if (staticNativeAd instanceof FacebookNative.C3953c) {
                    TextView textView4 = (TextView) aVar.f15566a.findViewById(R$id.tv_sponsored);
                    TextView textView5 = (TextView) aVar.f15566a.findViewById(R$id.tv_content);
                    ImageView imageView = aVar.f15570e;
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                    MediaView mediaView = null;
                    View view = aVar.f15566a;
                    if (view != null) {
                        mediaView = FacebookNative.C3952b.m30181a(this.f9026c, view, R$id.v_video);
                    }
                    textView5.setText(staticNativeAd.getText());
                    aVar.f15572g.setVisibility(8);
                    aVar.f15569d.setVisibility(8);
                    textView4.setVisibility(8);
                    textView5.setVisibility(8);
                    FacebookNative.C3953c cVar = (FacebookNative.C3953c) staticNativeAd;
                    SdkUtilsAdRenderer.setupFbAdContainer(cVar.getNativeAd(), aVar, (ViewGroup) aVar.f15566a.findViewById(R$id.rl_cta_container), false, true, mediaView, null, cVar.getUnclickableAreas());
                    aVar.f15566a.setOnClickListener(new View$OnClickListenerC3938a(this));
                } else if (z) {
                    aVar.f15566a.findViewById(R$id.tv_sponsored).setVisibility(8);
                    TextView textView6 = (TextView) aVar.f15566a.findViewById(R$id.tv_content);
                    addPrivacyInformationIcon(aVar.f15572g, 2131230832, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    aVar.f15572g.setPadding(0, 0, C6272d.m23432a(9.0f), C6272d.m23432a(9.0f));
                    aVar.f15569d.setVisibility(0);
                    textView6.setText("Promoted");
                    textView6.setVisibility(0);
                } else if (staticNativeAd instanceof AppierNative.C3931a) {
                    AppierNative.C3931a aVar2 = (AppierNative.C3931a) staticNativeAd;
                    C6270b.m23440a(aVar.f15572g, aVar2.getPrivacyInformationIconImageUrl(), aVar2.getPrivacyInformationIconClickThroughUrl());
                } else if (staticNativeAd instanceof CriteoCustomEventNative.CriteoStaticNativeAd) {
                    CriteoCustomEventNative.CriteoStaticNativeAd criteoStaticNativeAd = (CriteoCustomEventNative.CriteoStaticNativeAd) staticNativeAd;
                    NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
                    criteoStaticNativeAd.renderNativeView(aVar.f15566a);
                    ImageView imageView2 = aVar.f15572g;
                    if (imageView2 != null) {
                        CriteoUtils.setAdChoiceView(criteoStaticNativeAd, imageView2);
                    }
                } else {
                    aVar.f15566a.findViewById(R$id.tv_sponsored).setVisibility(8);
                    aVar.f15566a.findViewById(R$id.tv_content).setVisibility(8);
                    aVar.f15566a.findViewById(R$id.iv_privacy).setVisibility(8);
                }
            }
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        this.f9026c = context;
        return LayoutInflater.from(context).inflate(this.f9024a.f15575a, viewGroup, false);
    }

    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C6287a aVar = this.f9025b.get(view);
        C6287a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C6287a.m23403a(view, this.f9024a);
            this.f9025b.put(view, aVar2);
        }
        m30203a(aVar2, 0);
        m30200b(aVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar2.f15566a, this.f9024a.f15584j, staticNativeAd.getExtras());
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}

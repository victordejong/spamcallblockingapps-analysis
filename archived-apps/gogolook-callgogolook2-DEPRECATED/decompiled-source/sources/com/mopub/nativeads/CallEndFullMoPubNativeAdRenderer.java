package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
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
import gogolook.callgogolook2.p074ad.AdRendererUtils;
import gogolook.callgogolook2.p074ad.AdUISettings;
import gogolook.callgogolook2.p074ad.AdUnit;
import java.util.List;
import java.util.WeakHashMap;
import p081h.p160h.p161a.p170p.C6270b;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p622k.p623a.p624a.p625a.C14698a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer.class */
public class CallEndFullMoPubNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {

    /* renamed from: e */
    public static final String f9030e = "com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer";
    @NonNull

    /* renamed from: b */
    public C6289b f9032b;
    @NonNull

    /* renamed from: a */
    public AdUnit f9031a = AdUnit.CALL_END_FULL;
    @NonNull

    /* renamed from: c */
    public ADN_CALLEND_NATIVE_AD_TYPE f9033c = ADN_CALLEND_NATIVE_AD_TYPE.SHOW_UNIQUE;
    @NonNull
    @VisibleForTesting

    /* renamed from: d */
    public final WeakHashMap<View, C6287a> f9034d = new WeakHashMap<>();

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer$ADN_CALLEND_NATIVE_AD_TYPE.class */
    public enum ADN_CALLEND_NATIVE_AD_TYPE {
        SHOW_WITH_CED,
        SHOW_UNIQUE
    }

    /* renamed from: com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC3941a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f9036a;

        /* renamed from: b */
        public final /* synthetic */ TextView f9037b;

        /* renamed from: c */
        public final /* synthetic */ TextView f9038c;

        public ViewTreeObserver$OnGlobalLayoutListenerC3941a(TextView textView, TextView textView2, TextView textView3) {
            this.f9036a = textView;
            this.f9037b = textView2;
            this.f9038c = textView3;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            TextView textView;
            if (CallEndFullMoPubNativeAdRenderer.this.f9033c == ADN_CALLEND_NATIVE_AD_TYPE.SHOW_UNIQUE) {
                if (this.f9036a.getLineCount() == 1) {
                    this.f9036a.setTextSize(15.0f);
                    TextView textView2 = this.f9037b;
                    if (!(textView2 == null || textView2.getHeight() != 0 || (textView = this.f9038c) == null)) {
                        ((RelativeLayout.LayoutParams) textView.getLayoutParams()).topMargin = C6272d.m23432a(21.0f);
                    }
                } else {
                    this.f9036a.setTextSize(14.0f);
                    TextView textView3 = this.f9037b;
                    if (textView3 != null) {
                        textView3.setHeight(0);
                    }
                    TextView textView4 = this.f9038c;
                    if (textView4 != null) {
                        ((RelativeLayout.LayoutParams) textView4.getLayoutParams()).topMargin = C6272d.m23432a(11.0f);
                    }
                }
                this.f9036a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        }
    }

    /* renamed from: com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer$b.class */
    public class View$OnClickListenerC3942b implements View.OnClickListener {
        public View$OnClickListenerC3942b(CallEndFullMoPubNativeAdRenderer callEndFullMoPubNativeAdRenderer) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* renamed from: com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer$c.class */
    public static final class View$OnClickListenerC3943c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9040a;

        /* renamed from: b */
        public final /* synthetic */ String f9041b;

        public View$OnClickListenerC3943c(Context context, String str) {
            this.f9040a = context;
            this.f9041b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9040a, this.f9041b);
        }
    }

    /* renamed from: com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer$d.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC3944d implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f9042a;

        /* renamed from: b */
        public final /* synthetic */ TextView f9043b;

        /* renamed from: c */
        public final /* synthetic */ TextView f9044c;

        public ViewTreeObserver$OnGlobalLayoutListenerC3944d(CallEndFullMoPubNativeAdRenderer callEndFullMoPubNativeAdRenderer, TextView textView, TextView textView2, TextView textView3) {
            this.f9042a = textView;
            this.f9043b = textView2;
            this.f9044c = textView3;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            TextView textView;
            if (this.f9042a.getLineCount() == 1) {
                this.f9042a.setTextSize(15.0f);
                TextView textView2 = this.f9043b;
                if (!(textView2 == null || textView2.getHeight() != 0 || (textView = this.f9044c) == null)) {
                    ((RelativeLayout.LayoutParams) textView.getLayoutParams()).topMargin = C6272d.m23432a(21.0f);
                }
            } else {
                this.f9042a.setTextSize(14.0f);
                TextView textView3 = this.f9043b;
                if (textView3 != null) {
                    textView3.setHeight(0);
                }
                TextView textView4 = this.f9044c;
                if (textView4 != null) {
                    ((RelativeLayout.LayoutParams) textView4.getLayoutParams()).topMargin = C6272d.m23432a(11.0f);
                }
            }
            this.f9042a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    /* renamed from: com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer$e.class */
    public class C3945e implements C6272d.AbstractC6280h {

        /* renamed from: a */
        public final /* synthetic */ AotterTrekCustomEvent.AotterTrekStaticAd f9045a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f9046b;

        public C3945e(CallEndFullMoPubNativeAdRenderer callEndFullMoPubNativeAdRenderer, AotterTrekCustomEvent.AotterTrekStaticAd aotterTrekStaticAd, ImageView imageView) {
            this.f9045a = aotterTrekStaticAd;
            this.f9046b = imageView;
        }

        @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
        public void onImageLoadFail() {
        }

        @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
        public void onImageLoadSuccess() {
            if (this.f9045a.getLabel() == AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_CIRCLE) {
                int e = C6272d.m23417e();
                ViewGroup.LayoutParams layoutParams = this.f9046b.getLayoutParams();
                layoutParams.width = e;
                layoutParams.height = e;
            }
        }
    }

    /* renamed from: com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallEndFullMoPubNativeAdRenderer$f.class */
    public class View$OnClickListenerC3946f implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9047a;

        public View$OnClickListenerC3946f(CallEndFullMoPubNativeAdRenderer callEndFullMoPubNativeAdRenderer, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9047a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9047a.getCallToActionView().performClick();
        }
    }

    public CallEndFullMoPubNativeAdRenderer(@NonNull C6289b bVar) {
        this.f9032b = bVar;
    }

    public static void addPrivacyInformationIcon(ImageView imageView, int i, String str) {
        if (imageView != null) {
            if (str == null) {
                imageView.setImageDrawable(null);
                imageView.setOnClickListener(null);
                imageView.setVisibility(8);
            } else {
                Context context = imageView.getContext();
                if (context != null) {
                    imageView.setOnClickListener(new View$OnClickListenerC3943c(context, str));
                    imageView.setVisibility(0);
                }
            }
            imageView.setImageResource(i);
        }
    }

    /* renamed from: a */
    public final void m30199a(@NonNull View view) {
        int i;
        String a = AdUnit.CALL_END_FULL.m28821a();
        int b = C6272d.m23421b(a);
        int i2 = 0;
        if (b != 0) {
            i = 8;
            if (b != 1) {
                i2 = 8;
                i = 8;
            }
        } else {
            i2 = 8;
            i = 0;
        }
        ImageView imageView = (ImageView) view.findViewById(R$id.iv_ad_inner_close);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.iv_ad_outer_close);
        int a2 = C6272d.m23425a(a);
        if (imageView != null) {
            if (i == 0) {
                imageView.setPadding(a2, a2, a2, a2);
            }
            imageView.setVisibility(i);
        }
        if (imageView2 != null) {
            if (i2 == 0) {
                imageView2.setPadding(a2, a2, a2, a2);
            }
            imageView2.setVisibility(i2);
        }
    }

    /* renamed from: a */
    public final void m30196a(@NonNull C6287a aVar, int i) {
        View view = aVar.f15566a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m30194a(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        UnifiedNativeAdView unifiedNativeAdView;
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.ll_whole);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.callend_native_full_ads_admob_unified);
                View inflate = viewStub.inflate();
                if (inflate != null && (unifiedNativeAdView = (UnifiedNativeAdView) inflate.findViewById(R$id.unadv)) != null) {
                    m30199a(inflate);
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
                    RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.rl_adContent);
                    if (relativeLayout != null) {
                        relativeLayout.setOnClickListener(new View$OnClickListenerC3946f(this, unifiedNativeAdView));
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
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView4.getLayoutParams();
                        layoutParams.addRule(14, -1);
                        layoutParams.addRule(1, 0);
                        layoutParams.addRule(0, 0);
                        textView4.setLayoutParams(layoutParams);
                        textView4.setText(C6272d.m23413i());
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m30198a(@NonNull View view, @NonNull StaticNativeAd staticNativeAd, @NonNull String str) {
        ViewStub viewStub = (ViewStub) view.findViewById(R$id.vs_admob);
        if (viewStub == null) {
            return false;
        }
        View findViewById = view.findViewById(R$id.ll_whole);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        return MoPubRenderAotterTrekAdsUtils.renderAotterTrekAd(this.f9031a, viewStub, staticNativeAd, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0140  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m30195a(@androidx.annotation.NonNull p081h.p160h.p161a.p171q.C6287a r13, @androidx.annotation.NonNull com.mopub.nativeads.StaticNativeAd r14) {
        /*
            Method dump skipped, instructions count: 722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer.m30195a(h.h.a.q.a, com.mopub.nativeads.StaticNativeAd):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.view.ViewGroup] */
    /* renamed from: b */
    public final void m30193b(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        FrameLayout frameLayout;
        if (aVar.f15566a != null) {
            if (staticNativeAd instanceof AotterTrekCustomEvent.AotterTrekStaticAd) {
                if (!m30195a(aVar, staticNativeAd)) {
                    m30196a(aVar, 8);
                }
            } else if (staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd) {
                m30194a(aVar, (AdMobCustomEvent.AdMobStaticNativeAd) staticNativeAd);
            } else {
                boolean z = staticNativeAd instanceof MoPubCustomEventNative.C3966b;
                if (z) {
                    String aotterTrekLabel = MoPubRenderAotterTrekAdsUtils.getAotterTrekLabel(this.f9031a, staticNativeAd);
                    if (!TextUtils.isEmpty(aotterTrekLabel)) {
                        if (!m30198a(aVar.f15566a, staticNativeAd, aotterTrekLabel)) {
                            m30196a(aVar, 8);
                            return;
                        }
                        return;
                    }
                }
                NativeRendererHelper.addTextView(aVar.f15567b, staticNativeAd.getTitle());
                NativeRendererHelper.addTextView(aVar.f15569d, staticNativeAd.getCallToAction());
                C6272d.m23426a(staticNativeAd.getMainImageUrl(), aVar.f15570e, true, true, 5, C14698a.EnumC14700b.TOP, null);
                C6272d.m23426a(staticNativeAd.getIconImageUrl(), aVar.f15571f, false, true, 0, C14698a.EnumC14700b.TOP, null);
                if (aVar.f15568c != null) {
                    if (TextUtils.isEmpty(staticNativeAd.getText()) || TextUtils.isEmpty(staticNativeAd.getText().trim())) {
                        aVar.f15568c.setHeight(0);
                    } else {
                        aVar.f15568c.setVisibility(0);
                        NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
                    }
                }
                TextView textView = aVar.f15567b;
                TextView textView2 = aVar.f15568c;
                TextView textView3 = aVar.f15569d;
                if (textView != null) {
                    textView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC3941a(textView, textView2, textView3));
                }
                ImageView imageView = (ImageView) aVar.f15566a.findViewById(R$id.iv_privacy);
                FrameLayout frameLayout2 = (FrameLayout) aVar.f15566a.findViewById(R$id.fl_fb_ad_choice_container);
                View findViewById = aVar.f15566a.findViewById(R$id.v_adchoice_dummy);
                TextView textView4 = (TextView) aVar.f15566a.findViewById(R$id.tv_sponsored);
                textView4.setText(C6272d.m23413i());
                m30199a(aVar.f15566a);
                if (staticNativeAd instanceof FlurryStaticNativeAd) {
                    addPrivacyInformationIcon(imageView, 2131230831, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    imageView.setVisibility(0);
                    if (frameLayout2 != null) {
                        frameLayout2.setVisibility(8);
                    }
                } else if (staticNativeAd instanceof FacebookNative.C3953c) {
                    imageView.setVisibility(8);
                    ImageView imageView2 = aVar.f15570e;
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                    }
                    MediaView mediaView = null;
                    View view = aVar.f15566a;
                    if (view != null) {
                        mediaView = FacebookNative.C3952b.m30181a(view.getContext(), aVar.f15566a, R$id.v_video);
                    }
                    if (frameLayout2 != null) {
                        frameLayout2.setVisibility(0);
                        frameLayout = frameLayout2;
                    } else {
                        frameLayout = (ViewGroup) aVar.f15566a.findViewById(R$id.rl_adContent);
                    }
                    FacebookNative.C3953c cVar = (FacebookNative.C3953c) staticNativeAd;
                    SdkUtilsAdRenderer.setupFbAdContainer(cVar.getNativeAd(), aVar, frameLayout, false, true, mediaView, null, cVar.getUnclickableAreas());
                    aVar.f15566a.setOnClickListener(new View$OnClickListenerC3942b(this));
                } else if (z) {
                    String adNSourceName = Utils.getAdNSourceName(staticNativeAd);
                    if (!TextUtils.isEmpty(adNSourceName)) {
                        AdRendererUtils.m28849a(aVar, new AdUISettings(this.f9031a, adNSourceName));
                    }
                    addPrivacyInformationIcon(imageView, 2131230832, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                    imageView.setVisibility(0);
                    if (frameLayout2 != null) {
                        frameLayout2.setVisibility(8);
                    }
                } else if (staticNativeAd instanceof AppierNative.C3931a) {
                    AppierNative.C3931a aVar2 = (AppierNative.C3931a) staticNativeAd;
                    C6270b.m23440a(imageView, aVar2.getPrivacyInformationIconImageUrl(), aVar2.getPrivacyInformationIconClickThroughUrl());
                    if (frameLayout2 != null) {
                        frameLayout2.setVisibility(8);
                    }
                } else if (staticNativeAd instanceof CriteoCustomEventNative.CriteoStaticNativeAd) {
                    CriteoCustomEventNative.CriteoStaticNativeAd criteoStaticNativeAd = (CriteoCustomEventNative.CriteoStaticNativeAd) staticNativeAd;
                    criteoStaticNativeAd.renderNativeView(aVar.f15566a);
                    if (imageView != null) {
                        CriteoUtils.setAdChoiceView(criteoStaticNativeAd, imageView);
                    }
                } else {
                    imageView.setVisibility(8);
                    if (frameLayout2 != null) {
                        frameLayout2.setVisibility(8);
                    }
                    if (findViewById != null) {
                        findViewById.setVisibility(8);
                    }
                    if (textView4 != null) {
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView4.getLayoutParams();
                        layoutParams.addRule(14, -1);
                        layoutParams.addRule(1, 0);
                        layoutParams.addRule(0, 0);
                        textView4.setLayoutParams(layoutParams);
                    }
                }
                if (textView3 != null && TextUtils.isEmpty(textView3.getText().toString())) {
                    textView3.setText(C6272d.m23415g());
                }
            }
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f9032b.f15575a, viewGroup, false);
    }

    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C6287a aVar = this.f9034d.get(view);
        C6287a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C6287a.m23403a(view, this.f9032b);
            this.f9034d.put(view, aVar2);
        }
        m30196a(aVar2, 0);
        m30193b(aVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar2.f15566a, this.f9032b.f15584j, staticNativeAd.getExtras());
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}

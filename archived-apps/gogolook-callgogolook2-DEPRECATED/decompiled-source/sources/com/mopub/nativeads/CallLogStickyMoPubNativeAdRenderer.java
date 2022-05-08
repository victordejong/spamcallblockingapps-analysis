package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
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
import com.mopub.nativeads.AotterTrekNative;
import com.mopub.nativeads.AppierNative;
import com.mopub.nativeads.FacebookNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import com.mopub.nativeads.criteo.CriteoCustomEventNative;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.WeakHashMap;
import p081h.p160h.p161a.p170p.C6270b;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
import p622k.p623a.p624a.p625a.C14698a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallLogStickyMoPubNativeAdRenderer.class */
public class CallLogStickyMoPubNativeAdRenderer implements MoPubAdRenderer<StaticNativeAd> {
    @NonNull

    /* renamed from: a */
    public final C6289b f9048a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public final WeakHashMap<View, C6287a> f9049b = new WeakHashMap<>();

    /* renamed from: com.mopub.nativeads.CallLogStickyMoPubNativeAdRenderer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallLogStickyMoPubNativeAdRenderer$a.class */
    public static final class View$OnClickListenerC3947a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9050a;

        /* renamed from: b */
        public final /* synthetic */ String f9051b;

        public View$OnClickListenerC3947a(Context context, String str) {
            this.f9050a = context;
            this.f9051b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9050a, this.f9051b);
        }
    }

    /* renamed from: com.mopub.nativeads.CallLogStickyMoPubNativeAdRenderer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CallLogStickyMoPubNativeAdRenderer$b.class */
    public class View$OnClickListenerC3948b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9052a;

        public View$OnClickListenerC3948b(CallLogStickyMoPubNativeAdRenderer callLogStickyMoPubNativeAdRenderer, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9052a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9052a.getCallToActionView().performClick();
        }
    }

    public CallLogStickyMoPubNativeAdRenderer(@NonNull C6289b bVar) {
        this.f9048a = bVar;
    }

    public static void addPrivacyInformationIcon(ImageView imageView, int i, String str) {
        if (imageView == null) {
            return;
        }
        if (str == null) {
            imageView.setImageDrawable(null);
            imageView.setOnClickListener(null);
            imageView.setImageResource(2131230830);
            return;
        }
        Context context = imageView.getContext();
        if (context != null) {
            imageView.setImageResource(i);
            imageView.setOnClickListener(new View$OnClickListenerC3947a(context, str));
            imageView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m30192a(@NonNull C6287a aVar, int i) {
        View view = aVar.f15566a;
        if (view != null) {
            view.setVisibility(i);
        }
    }

    /* renamed from: a */
    public final void m30191a(@NonNull C6287a aVar, @NonNull StaticNativeAd staticNativeAd) {
        if (aVar.f15566a != null) {
            if (staticNativeAd instanceof AdMobCustomEvent.AdMobStaticNativeAd) {
                m30190a(aVar, (AdMobCustomEvent.AdMobStaticNativeAd) staticNativeAd);
                return;
            }
            NativeRendererHelper.addTextView(aVar.f15567b, staticNativeAd.getTitle());
            NativeRendererHelper.addTextView(aVar.f15568c, staticNativeAd.getText());
            if (TextUtils.isEmpty(staticNativeAd.getCallToAction())) {
                NativeRendererHelper.addTextView(aVar.f15569d, C6272d.m23415g());
            } else {
                NativeRendererHelper.addTextView(aVar.f15569d, staticNativeAd.getCallToAction());
            }
            if (aVar.f15571f != null) {
                C6272d.m23426a(staticNativeAd.getIconImageUrl(), aVar.f15571f, true, true, 2, C14698a.EnumC14700b.ALL, null);
            }
            ImageView imageView = (ImageView) aVar.f15566a.findViewById(R$id.iv_privacy);
            FrameLayout frameLayout = (FrameLayout) aVar.f15566a.findViewById(R$id.fl_fb_ad_choice_container);
            ((TextView) aVar.f15566a.findViewById(R$id.tv_sponsored)).setText(C6272d.m23413i());
            if (staticNativeAd instanceof FlurryStaticNativeAd) {
                addPrivacyInformationIcon(imageView, 2131230831, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                frameLayout.setVisibility(8);
                imageView.setVisibility(0);
            } else if (staticNativeAd instanceof FacebookNative.C3953c) {
                MediaView mediaView = null;
                ImageView imageView2 = aVar.f15571f;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
                View view = aVar.f15566a;
                if (view != null) {
                    mediaView = FacebookNative.C3952b.m30181a(view.getContext(), aVar.f15566a, R$id.v_video);
                }
                FacebookNative.C3953c cVar = (FacebookNative.C3953c) staticNativeAd;
                frameLayout.setVisibility(0);
                SdkUtilsAdRenderer.setupFbAdContainer(cVar.getNativeAd(), aVar, frameLayout, false, true, null, mediaView, cVar.getUnclickableAreas());
                imageView.setVisibility(8);
            } else if (staticNativeAd instanceof MoPubCustomEventNative.C3966b) {
                addPrivacyInformationIcon(imageView, 2131230832, staticNativeAd.getPrivacyInformationIconClickThroughUrl());
                frameLayout.setVisibility(8);
                imageView.setVisibility(0);
            } else if (staticNativeAd instanceof AppierNative.C3931a) {
                AppierNative.C3931a aVar2 = (AppierNative.C3931a) staticNativeAd;
                C6270b.m23440a(imageView, aVar2.getPrivacyInformationIconImageUrl(), aVar2.getPrivacyInformationIconClickThroughUrl());
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
            } else if (staticNativeAd instanceof AotterTrekNative.C3929a) {
                imageView.setVisibility(8);
                frameLayout.setVisibility(8);
            } else if (staticNativeAd instanceof CriteoCustomEventNative.CriteoStaticNativeAd) {
                CriteoCustomEventNative.CriteoStaticNativeAd criteoStaticNativeAd = (CriteoCustomEventNative.CriteoStaticNativeAd) staticNativeAd;
                criteoStaticNativeAd.renderNativeView(aVar.f15566a);
                if (imageView != null) {
                    CriteoUtils.setAdChoiceView(criteoStaticNativeAd, imageView);
                }
            } else {
                imageView.setVisibility(8);
                frameLayout.setVisibility(8);
            }
        }
    }

    /* renamed from: a */
    public final void m30190a(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        UnifiedNativeAdView unifiedNativeAdView;
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.rl_whole);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.call_log_sticky_ad_admob_unified);
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
                    NativeAd.Image icon = unifiedNativeAd.getIcon();
                    if (icon != null) {
                        imageView2.setImageDrawable(icon.getDrawable());
                    } else {
                        imageView2.setImageResource(SdkUtilsAdRenderer.getDefaultAdIconRandomly());
                    }
                    unifiedNativeAdView.setIconView(imageView2);
                    RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.rl_whole);
                    if (relativeLayout != null) {
                        relativeLayout.setOnClickListener(new View$OnClickListenerC3948b(this, unifiedNativeAdView));
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
                        textView4.setText(C6272d.m23413i());
                    }
                }
            }
        }
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(this.f9048a.f15575a, viewGroup, false);
    }

    public void renderAdView(@NonNull View view, @NonNull StaticNativeAd staticNativeAd) {
        C6287a aVar = this.f9049b.get(view);
        C6287a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = C6287a.m23403a(view, this.f9048a);
            this.f9049b.put(view, aVar2);
        }
        m30191a(aVar2, staticNativeAd);
        NativeRendererHelper.updateExtras(aVar2.f15566a, this.f9048a.f15584j, staticNativeAd.getExtras());
        m30192a(aVar2, 0);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public boolean supports(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        return baseNativeAd instanceof StaticNativeAd;
    }
}

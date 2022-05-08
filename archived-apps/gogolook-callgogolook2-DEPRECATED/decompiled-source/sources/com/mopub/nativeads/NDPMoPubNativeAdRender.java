package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.nativeads.BaseNativeAdRenderer;
import com.mopub.nativeads.admob.AdMobCustomEvent;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.List;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p081h.p160h.p161a.p171q.C6289b;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NDPMoPubNativeAdRender.class */
public class NDPMoPubNativeAdRender extends BaseNativeAdRenderer {

    /* renamed from: com.mopub.nativeads.NDPMoPubNativeAdRender$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NDPMoPubNativeAdRender$a.class */
    public class View$OnClickListenerC3982a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C6287a f9196a;

        public View$OnClickListenerC3982a(C6287a aVar) {
            this.f9196a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NDPMoPubNativeAdRender.this.setViewVisibility(this.f9196a, 8);
            BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener = NDPMoPubNativeAdRender.this.adCustomActionListener;
            if (adCustomActionListener != null) {
                adCustomActionListener.onAdClosed();
            }
        }
    }

    /* renamed from: com.mopub.nativeads.NDPMoPubNativeAdRender$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NDPMoPubNativeAdRender$b.class */
    public class C3983b implements C6272d.AbstractC6280h {

        /* renamed from: a */
        public final /* synthetic */ C6287a f9198a;

        public C3983b(C6287a aVar) {
            this.f9198a = aVar;
        }

        @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
        public void onImageLoadFail() {
            NDPMoPubNativeAdRender.this.setViewVisibility(this.f9198a, 0);
        }

        @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
        public void onImageLoadSuccess() {
            NDPMoPubNativeAdRender.this.setViewVisibility(this.f9198a, 0);
        }
    }

    /* renamed from: com.mopub.nativeads.NDPMoPubNativeAdRender$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NDPMoPubNativeAdRender$c.class */
    public class C3984c implements C6272d.AbstractC6280h {

        /* renamed from: a */
        public final /* synthetic */ C6287a f9200a;

        public C3984c(C6287a aVar) {
            this.f9200a = aVar;
        }

        @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
        public void onImageLoadFail() {
            NDPMoPubNativeAdRender.this.setViewVisibility(this.f9200a, 0);
        }

        @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
        public void onImageLoadSuccess() {
            NDPMoPubNativeAdRender.this.setViewVisibility(this.f9200a, 0);
        }
    }

    /* renamed from: com.mopub.nativeads.NDPMoPubNativeAdRender$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NDPMoPubNativeAdRender$d.class */
    public static final class View$OnClickListenerC3985d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9202a;

        /* renamed from: b */
        public final /* synthetic */ String f9203b;

        public View$OnClickListenerC3985d(Context context, String str) {
            this.f9202a = context;
            this.f9203b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f9202a, this.f9203b);
        }
    }

    /* renamed from: com.mopub.nativeads.NDPMoPubNativeAdRender$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NDPMoPubNativeAdRender$e.class */
    public class View$OnClickListenerC3986e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ UnifiedNativeAdView f9204a;

        public View$OnClickListenerC3986e(NDPMoPubNativeAdRender nDPMoPubNativeAdRender, UnifiedNativeAdView unifiedNativeAdView) {
            this.f9204a = unifiedNativeAdView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f9204a.getCallToActionView().performClick();
        }
    }

    public NDPMoPubNativeAdRender(@NonNull C6289b bVar, String str) {
        super(bVar, str);
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
            imageView.setOnClickListener(new View$OnClickListenerC3985d(context, str));
            imageView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m30102a(C6287a aVar) {
        ImageView imageView = (ImageView) aVar.f15566a.findViewById(R$id.iv_ad_inner_close);
        if (imageView != null) {
            imageView.setOnClickListener(new View$OnClickListenerC3982a(aVar));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01aa  */
    @Override // com.mopub.nativeads.BaseNativeAdRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(@androidx.annotation.NonNull p081h.p160h.p161a.p171q.C6287a r12, @androidx.annotation.NonNull com.mopub.nativeads.StaticNativeAd r13) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.NDPMoPubNativeAdRender.update(h.h.a.q.a, com.mopub.nativeads.StaticNativeAd):void");
    }

    public final void updateAdMobAd(C6287a aVar, AdMobCustomEvent.AdMobStaticNativeAd adMobStaticNativeAd) {
        ViewStub viewStub = (ViewStub) aVar.f15566a.findViewById(R$id.vs_admob);
        if (viewStub != null) {
            View findViewById = aVar.f15566a.findViewById(R$id.ll_nativeAd);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            UnifiedNativeAd unifiedNativeAd = adMobStaticNativeAd.getUnifiedNativeAd();
            if (unifiedNativeAd != null) {
                viewStub.setLayoutResource(R$layout.ndp_ad_admob_unified);
                View inflate = viewStub.inflate();
                if (inflate != null) {
                    C6289b.C6290a aVar2 = new C6289b.C6290a(R$layout.ndp_ad_admob_unified);
                    aVar2.m23394d(R$id.iv_ad);
                    aVar2.m23398b(R$id.iv_ad_icon);
                    aVar2.m23386h(R$id.tv_title);
                    aVar2.m23388g(R$id.tv_content);
                    aVar2.m23400a(R$id.tv_cta_btn);
                    aVar2.m23390f(R$id.iv_privacy);
                    aVar2.m23396c(R$id.iv_ad_inner_close);
                    C6287a a = C6287a.m23403a(inflate, aVar2.m23401a());
                    UnifiedNativeAdView unifiedNativeAdView = (UnifiedNativeAdView) a.f15566a.findViewById(R$id.unadv);
                    if (unifiedNativeAdView != null) {
                        NativeRendererHelper.addTextView(a.f15567b, adMobStaticNativeAd.getTitle());
                        unifiedNativeAdView.setHeadlineView(a.f15567b);
                        NativeRendererHelper.addTextView(a.f15568c, adMobStaticNativeAd.getText());
                        unifiedNativeAdView.setBodyView(a.f15568c);
                        NativeRendererHelper.addTextView(a.f15569d, adMobStaticNativeAd.getCallToAction());
                        unifiedNativeAdView.setCallToActionView(a.f15569d);
                        ImageView imageView = a.f15571f;
                        if (!(imageView == null || unifiedNativeAd.getIcon() == null)) {
                            imageView.setImageDrawable(unifiedNativeAd.getIcon().getDrawable());
                            unifiedNativeAdView.setIconView(imageView);
                        }
                        ImageView imageView2 = a.f15570e;
                        List<NativeAd.Image> images = unifiedNativeAd.getImages();
                        if (!(imageView2 == null || images.size() <= 0 || images.get(0) == null)) {
                            imageView2.setImageDrawable(images.get(0).getDrawable());
                            unifiedNativeAdView.setImageView(imageView2);
                        }
                        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R$id.ll_nativeAd);
                        if (relativeLayout != null) {
                            relativeLayout.setOnClickListener(new View$OnClickListenerC3986e(this, unifiedNativeAdView));
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
                        TextView textView = (TextView) inflate.findViewById(R$id.tv_sponsored);
                        if (textView != null) {
                            textView.setText(C6272d.m23413i());
                        }
                        m30102a(aVar);
                        setCloseButtonVisibility(aVar);
                        setViewVisibility(aVar, 0);
                    }
                }
            }
        }
    }
}

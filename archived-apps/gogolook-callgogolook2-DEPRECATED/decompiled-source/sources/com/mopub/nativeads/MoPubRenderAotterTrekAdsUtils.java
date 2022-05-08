package com.mopub.nativeads;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.MoPubCustomEventNative;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.p074ad.AdRendererUtils;
import gogolook.callgogolook2.p074ad.AdUISettings;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AotterTrekUtils;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p459j.p460a.p582w0.C14080m2;
import p622k.p623a.p624a.p625a.C14698a;
import p626l.C14986p;
import p626l.p631e0.C14967x;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J(\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J \u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0016"}, m815d2 = {"Lcom/mopub/nativeads/MoPubRenderAotterTrekAdsUtils;", "", "()V", "MOPUB_AOTTER_TREK_LABEL", "", "getAotterTrekLabel", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "staticNativeAd", "Lcom/mopub/nativeads/StaticNativeAd;", "adUnitName", "renderAotterTrekAd", "", "stubView", "Landroid/view/ViewStub;", "aotterTrekLabel", "renderAotterTrekCallEndFullAds", "viewHolder", "Lcom/gogolook/adsdk/view/NativeViewHolder;", "renderAotterTrekSmsAds", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRenderAotterTrekAdsUtils.class */
public final class MoPubRenderAotterTrekAdsUtils {
    public static final MoPubRenderAotterTrekAdsUtils INSTANCE = new MoPubRenderAotterTrekAdsUtils();

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRenderAotterTrekAdsUtils$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[AdUnit.values().length];

        static {
            $EnumSwitchMapping$0[AdUnit.CALL_END_FULL.ordinal()] = 1;
            $EnumSwitchMapping$0[AdUnit.CALL_END_BANNER.ordinal()] = 2;
            $EnumSwitchMapping$0[AdUnit.SMS.ordinal()] = 3;
        }
    }

    public static final String getAotterTrekLabel(AdUnit adUnit, StaticNativeAd staticNativeAd) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(staticNativeAd, "staticNativeAd");
        Object extra = staticNativeAd.getExtra("aotter_trek_label");
        Object obj = extra;
        if (!(extra instanceof String)) {
            obj = null;
        }
        String str = (String) obj;
        int i = WhenMappings.$EnumSwitchMapping$0[adUnit.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? false : C15029u.m544a(AotterTrekUtils.INSTANCE.m28794c(), str) : C15029u.m544a(AotterTrekUtils.INSTANCE.m28799a(), str) : C15029u.m544a(AotterTrekUtils.INSTANCE.m28796b(), str) ? str : null;
    }

    public static final String getAotterTrekLabel(AdUnit adUnit, AbstractC6207d dVar) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(dVar, "adObject");
        NativeAd e = dVar.m23575e();
        String str = null;
        BaseNativeAd baseNativeAd = e != null ? e.getBaseNativeAd() : null;
        BaseNativeAd baseNativeAd2 = baseNativeAd;
        if (!(baseNativeAd instanceof MoPubCustomEventNative.C3966b)) {
            baseNativeAd2 = null;
        }
        MoPubCustomEventNative.C3966b bVar = (MoPubCustomEventNative.C3966b) baseNativeAd2;
        if (bVar != null) {
            str = getAotterTrekLabel(adUnit, bVar);
        }
        return str;
    }

    public static final String getAotterTrekLabel(String str, StaticNativeAd staticNativeAd) {
        C15149k.m377b(str, "adUnitName");
        C15149k.m377b(staticNativeAd, "staticNativeAd");
        return getAotterTrekLabel(AdUnit.Companion.m28820a(str), staticNativeAd);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00a5, code lost:
        if (r9.equals(com.mopub.nativeads.AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_NATIVE_FULL) != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00b5, code lost:
        if (r9.equals(com.mopub.nativeads.AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_FULL) != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00c5, code lost:
        if (r9.equals(com.mopub.nativeads.AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_NATIVE_BANNER) != false) goto L_0x00d8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00d5, code lost:
        if (r9.equals(com.mopub.nativeads.AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_DISPLAY_BANNER) != false) goto L_0x00d8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d8, code lost:
        r12 = com.mopub.nativeads.MoPubRenderAotterTrekAdsUtils.INSTANCE.m30117a(r0, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00f0, code lost:
        if (r9.equals(com.mopub.nativeads.AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_CIRCLE) != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0100, code lost:
        if (r9.equals(com.mopub.nativeads.AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_BANNER) != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0103, code lost:
        r12 = com.mopub.nativeads.MoPubRenderAotterTrekAdsUtils.INSTANCE.m30118a(r6, r0, r8, r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean renderAotterTrekAd(gogolook.callgogolook2.p074ad.AdUnit r6, android.view.ViewStub r7, com.mopub.nativeads.StaticNativeAd r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.MoPubRenderAotterTrekAdsUtils.renderAotterTrekAd(gogolook.callgogolook2.ad.AdUnit, android.view.ViewStub, com.mopub.nativeads.StaticNativeAd, java.lang.String):boolean");
    }

    /* renamed from: a */
    public final boolean m30118a(AdUnit adUnit, final C6287a aVar, final StaticNativeAd staticNativeAd, final String str) {
        String adNSourceName = Utils.getAdNSourceName(staticNativeAd);
        if (adNSourceName != null) {
            AdRendererUtils.m28849a(aVar, new AdUISettings(adUnit, adNSourceName));
        }
        switch (str.hashCode()) {
            case -2093837530:
                if (!str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_BANNER)) {
                    return false;
                }
                ImageView imageView = aVar.f15573h;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                ImageView imageView2 = aVar.f15574i;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
                aVar.m23405a().setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                aVar.m23405a().setPadding(C6272d.m23416f(), C6272d.m23416f(), C6272d.m23416f(), C6272d.m23416f());
                View findViewById = aVar.m23405a().findViewById(R$id.rl_whole);
                C15149k.m383a((Object) findViewById, "mainView.findViewById<View>(R.id.rl_whole)");
                findViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                ImageView imageView3 = aVar.f15570e;
                if (imageView3 == null) {
                    return true;
                }
                imageView3.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                C6272d.m23426a(staticNativeAd.getMainImageUrl(), imageView3, true, true, 2, C14698a.EnumC14700b.ALL, null);
                return true;
            case -2057711414:
                if (!str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_CIRCLE)) {
                    return false;
                }
                break;
            case 753265929:
                if (!str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_FULL)) {
                    return false;
                }
                break;
            case 1722935546:
                if (!str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_NATIVE_FULL)) {
                    return false;
                }
                C6272d.m23426a(staticNativeAd.getMainImageUrl(), aVar.f15570e, true, true, 5, C14698a.EnumC14700b.TOP, null);
                C6272d.m23426a(staticNativeAd.getIconImageUrl(), aVar.f15571f, true, true, 0, C14698a.EnumC14700b.TOP, null);
                NativeRendererHelper.addTextView(aVar.f15569d, staticNativeAd.getCallToAction());
                TextView textView = aVar.f15568c;
                if (textView != null) {
                    String text = staticNativeAd.getText();
                    if (text != null) {
                        C15149k.m383a((Object) text, "it");
                        if (text != null) {
                            if (!(C14967x.m670f((CharSequence) text).toString().length() > 0)) {
                                text = null;
                            }
                            if (text != null) {
                                textView.setVisibility(0);
                                NativeRendererHelper.addTextView(textView, text);
                            }
                        } else {
                            throw new C14986p("null cannot be cast to non-null type kotlin.CharSequence");
                        }
                    }
                    textView.setHeight(0);
                }
                final TextView textView2 = aVar.f15567b;
                if (textView2 == null) {
                    return true;
                }
                NativeRendererHelper.addTextView(textView2, staticNativeAd.getTitle());
                try {
                    textView2.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(textView2, aVar, staticNativeAd, aVar) { // from class: com.mopub.nativeads.MoPubRenderAotterTrekAdsUtils$renderAotterTrekCallEndFullAds$$inlined$apply$lambda$1

                        /* renamed from: a */
                        public final /* synthetic */ TextView f9168a;

                        /* renamed from: b */
                        public final /* synthetic */ C6287a f9169b;

                        /* renamed from: c */
                        public final /* synthetic */ C6287a f9170c;

                        {
                            this.f9170c = aVar;
                        }

                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public void onGlobalLayout() {
                            if (this.f9168a.getLineCount() == 1) {
                                this.f9168a.setTextSize(15);
                                TextView textView3 = this.f9169b.f15568c;
                                if (!(textView3 == null || textView3.getHeight() != 0 || this.f9170c.f15569d == null)) {
                                    TextView textView4 = this.f9169b.f15569d;
                                    ViewGroup.LayoutParams layoutParams = textView4 != null ? textView4.getLayoutParams() : null;
                                    ViewGroup.LayoutParams layoutParams2 = layoutParams;
                                    if (!(layoutParams instanceof RelativeLayout.LayoutParams)) {
                                        layoutParams2 = null;
                                    }
                                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams2;
                                    if (layoutParams3 != null) {
                                        layoutParams3.topMargin = C6272d.m23432a(21);
                                    }
                                }
                            } else {
                                this.f9168a.setTextSize(14);
                                TextView textView5 = this.f9169b.f15568c;
                                if (textView5 != null) {
                                    textView5.setHeight(0);
                                }
                                TextView textView6 = this.f9169b.f15569d;
                                ViewGroup.LayoutParams layoutParams4 = textView6 != null ? textView6.getLayoutParams() : null;
                                ViewGroup.LayoutParams layoutParams5 = layoutParams4;
                                if (!(layoutParams4 instanceof RelativeLayout.LayoutParams)) {
                                    layoutParams5 = null;
                                }
                                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) layoutParams5;
                                if (layoutParams6 != null) {
                                    layoutParams6.topMargin = C6272d.m23432a(11);
                                }
                            }
                            this.f9168a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        }
                    });
                } catch (IllegalStateException e) {
                    C14080m2.m2612a((Throwable) e);
                }
                TextView textView3 = (TextView) aVar.m23405a().findViewById(R$id.tv_sponsored);
                if (textView3 != null) {
                    textView3.setText(staticNativeAd.getSponsored());
                    ViewGroup.LayoutParams layoutParams = textView3.getLayoutParams();
                    ViewGroup.LayoutParams layoutParams2 = layoutParams;
                    if (!(layoutParams instanceof RelativeLayout.LayoutParams)) {
                        layoutParams2 = null;
                    }
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams2;
                    if (layoutParams3 != null) {
                        layoutParams3.addRule(14, -1);
                        layoutParams3.addRule(1, 0);
                        layoutParams3.addRule(0, 0);
                        if (layoutParams3 != null) {
                            textView3.setLayoutParams(layoutParams3);
                        }
                    }
                }
                ImageView imageView4 = aVar.f15572g;
                if (imageView4 != null) {
                    imageView4.setVisibility(8);
                }
                FrameLayout frameLayout = (FrameLayout) aVar.m23405a().findViewById(R$id.fl_fb_ad_choice_container);
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                View findViewById2 = aVar.m23405a().findViewById(R$id.v_adchoice_dummy);
                if (findViewById2 == null) {
                    return true;
                }
                findViewById2.setVisibility(8);
                return true;
            default:
                return false;
        }
        if (C15149k.m384a((Object) str, (Object) AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_FULL)) {
            aVar.m23405a().setPadding(C6272d.m23418d(), 0, C6272d.m23418d(), 0);
        }
        C6272d.m23426a(staticNativeAd.getMainImageUrl(), aVar.f15570e, true, true, 0, C14698a.EnumC14700b.ALL, new C6272d.AbstractC6280h(str, staticNativeAd) { // from class: com.mopub.nativeads.MoPubRenderAotterTrekAdsUtils$renderAotterTrekCallEndFullAds$$inlined$apply$lambda$2

            /* renamed from: b */
            public final /* synthetic */ String f9172b;

            @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
            public void onImageLoadFail() {
            }

            @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6280h
            public void onImageLoadSuccess() {
                ImageView imageView5;
                ViewGroup.LayoutParams layoutParams4;
                if (C15149k.m384a((Object) this.f9172b, (Object) AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_CIRCLE) && (imageView5 = C6287a.this.f15570e) != null && (layoutParams4 = imageView5.getLayoutParams()) != null) {
                    layoutParams4.width = C6272d.m23417e();
                    layoutParams4.height = C6272d.m23417e();
                }
            }
        });
        return true;
    }

    /* renamed from: a */
    public final boolean m30117a(C6287a aVar, StaticNativeAd staticNativeAd, String str) {
        ImageView imageView = aVar.f15573h;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = aVar.f15574i;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
        int hashCode = str.hashCode();
        if (hashCode != -1993628369) {
            if (hashCode != -721985618 || !str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_NATIVE_BANNER)) {
                return false;
            }
            C6272d.m23426a(staticNativeAd.getMainImageUrl(), aVar.f15570e, true, false, 2, C14698a.EnumC14700b.TOP, null);
            TextView textView = aVar.f15567b;
            if (textView != null) {
                NativeRendererHelper.addTextView(textView, staticNativeAd.getTitle());
                textView.setSingleLine();
                textView.setEllipsize(TextUtils.TruncateAt.END);
            }
            TextView textView2 = aVar.f15568c;
            if (textView2 != null) {
                String text = staticNativeAd.getText();
                if (text == null || text.length() == 0) {
                    textView2.setVisibility(8);
                } else {
                    NativeRendererHelper.addTextView(textView2, staticNativeAd.getText());
                }
            }
            TextView textView3 = aVar.f15569d;
            if (textView3 != null) {
                String callToAction = staticNativeAd.getCallToAction();
                if (callToAction == null || callToAction.length() == 0) {
                    View findViewById = aVar.m23405a().findViewById(R$id.iv_ctaArrow);
                    if (findViewById != null) {
                        findViewById.setVisibility(0);
                    }
                } else {
                    NativeRendererHelper.addTextView(textView3, staticNativeAd.getCallToAction());
                    textView3.setVisibility(0);
                }
            }
            ImageView imageView3 = aVar.f15572g;
            if (imageView3 != null) {
                imageView3.setImageResource(2131230830);
                imageView3.setVisibility(0);
            }
            TextView textView4 = (TextView) aVar.m23405a().findViewById(R$id.tv_promoted);
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            FrameLayout frameLayout = (FrameLayout) aVar.m23405a().findViewById(R$id.fl_fb_ad_choice_container);
            if (frameLayout == null) {
                return true;
            }
            frameLayout.setVisibility(8);
            return true;
        } else if (!str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_DISPLAY_BANNER)) {
            return false;
        } else {
            C6272d.m23426a(staticNativeAd.getMainImageUrl(), aVar.f15570e, true, false, 0, C14698a.EnumC14700b.TOP, null);
            return true;
        }
    }
}

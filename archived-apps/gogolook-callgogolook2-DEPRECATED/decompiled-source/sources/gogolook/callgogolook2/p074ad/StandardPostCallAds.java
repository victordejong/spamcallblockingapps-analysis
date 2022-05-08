package gogolook.callgogolook2.p074ad;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.MoPubRenderAotterTrekAdsUtils;
import com.mopub.nativeads.NativeAd;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity;
import java.util.List;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p459j.p460a.p582w0.C14013g0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
/* renamed from: gogolook.callgogolook2.ad.StandardPostCallAds */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/StandardPostCallAds.class */
public class StandardPostCallAds {
    public static final String TAG = "StandardPostCallAds";

    /* renamed from: gogolook.callgogolook2.ad.StandardPostCallAds$Loader */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/StandardPostCallAds$Loader.class */
    public static class Loader {
        public static volatile StandardPostCallAds INSTANCE = new StandardPostCallAds();
    }

    public StandardPostCallAds() {
    }

    @Nullable
    /* renamed from: a */
    public static AbstractC6207d m28741a() {
        if (!AdStatusController.m28827c().m28830a(AdUnit.CALL_END_FULL)) {
            return null;
        }
        AbstractC6207d b = C6214a.m23564b(AdUnit.CALL_END_FULL.m28821a());
        if (b != null) {
            return b;
        }
        C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6266d.ERROR_AD_CACHE_IS_EMPTY.m23447a());
        return null;
    }

    /* renamed from: a */
    public static boolean m28736a(@Nullable AbstractC6207d dVar, @NonNull ViewGroup viewGroup, @Nullable final View.OnClickListener onClickListener) {
        if (!AdStatusController.m28827c().m28830a(AdUnit.CALL_END_FULL) || dVar == null) {
            return false;
        }
        final Context context = viewGroup.getContext();
        if (context == null) {
            C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a());
            return false;
        }
        C14247d.m2064a(AdUnit.CALL_END_FULL, dVar);
        dVar.mo23569a(new AbstractC6207d.AbstractC6208a() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.1
            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            /* renamed from: a */
            public void mo5002a() {
                C14247d.m2059c(AdUnit.CALL_END_FULL);
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(null);
                }
                AdUtils.m28813a(context, AdUnit.CALL_END_FULL, "clicked");
            }

            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            public void onAdImpression() {
                AdUtils.m28812a(AdUnit.CALL_END_FULL);
                C14247d.m2058d(AdUnit.CALL_END_FULL);
                AdUtils.m28813a(context, AdUnit.CALL_END_FULL, "impression");
            }
        });
        ConstraintLayout constraintLayout = (ConstraintLayout) LayoutInflater.from(context).inflate(R$layout.call_end_native_full_ads, (ViewGroup) null);
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                StandardPostCallAds.m28733b(0);
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
            }
        });
        NativeAd nativeAd = (NativeAd) dVar.m23577c();
        if (nativeAd == null) {
            C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6266d.ERROR_AD_OBJECT_INVALID.m23447a());
            return false;
        }
        View createAdView = nativeAd.createAdView(context, null);
        createAdView.setId(View.generateViewId());
        constraintLayout.addView(createAdView, -2, -2);
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(constraintLayout);
        constraintSet.connect(createAdView.getId(), 3, 0, 3);
        constraintSet.connect(createAdView.getId(), 4, 0, 4);
        constraintSet.connect(createAdView.getId(), 1, 0, 1);
        constraintSet.connect(createAdView.getId(), 2, 0, 2);
        constraintSet.applyTo(constraintLayout);
        ImageView imageView = (ImageView) constraintLayout.findViewById(R$id.iv_logo_whoscall);
        if (imageView != null) {
            int id = createAdView.getId();
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) imageView.getLayoutParams();
            AotterTrekCustomEvent.AotterTrekStaticAd a = AotterTrekUtils.m28798a(dVar);
            String aotterTrekLabel = MoPubRenderAotterTrekAdsUtils.getAotterTrekLabel(AdUnit.CALL_END_FULL, dVar);
            if ((a != null && a.getLabel().equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_FULL)) || AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_FULL.equals(aotterTrekLabel)) {
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = C14217x3.m2201a(15.0f);
            }
            layoutParams.endToEnd = id;
            layoutParams.topToBottom = id;
            imageView.setLayoutParams(layoutParams);
        }
        nativeAd.prepare(createAdView);
        nativeAd.renderAdView(createAdView);
        viewGroup.removeAllViews();
        viewGroup.addView(constraintLayout);
        C14037j3.m2731a().mo2704a(new C14013g0());
        if (createAdView == null) {
            return true;
        }
        View findViewById = createAdView.findViewById(R$id.iv_ad_inner_close);
        if (findViewById != null) {
            if (onClickListener != null) {
                findViewById.setOnClickListener(new View.OnClickListener() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        StandardPostCallAds.m28733b(1);
                        onClickListener.onClick(view);
                    }
                });
            } else {
                findViewById.setVisibility(8);
            }
        }
        View findViewById2 = createAdView.findViewById(R$id.iv_ad_outer_close);
        if (findViewById2 == null) {
            return true;
        }
        if (onClickListener != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    StandardPostCallAds.m28733b(1);
                    onClickListener.onClick(view);
                }
            });
            return true;
        }
        findViewById2.setVisibility(8);
        return true;
    }

    /* renamed from: b */
    public static StandardPostCallAds m28734b() {
        return Loader.INSTANCE;
    }

    /* renamed from: b */
    public static void m28733b(int i) {
        C14247d.m2065a(AdUnit.CALL_END_FULL, i);
    }

    /* renamed from: a */
    public final AbstractC6207d m28739a(Context context, ViewGroup viewGroup) {
        if (!AdStatusController.m28827c().m28830a(AdUnit.CALL_END_BANNER)) {
            return null;
        }
        if (context == null || viewGroup == null) {
            C14247d.m2063a(AdUnit.CALL_END_BANNER, C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a());
            return null;
        }
        AbstractC6207d b = C6214a.m23564b(AdUnit.CALL_END_BANNER.m28821a());
        if (b == null) {
            C14247d.m2063a(AdUnit.CALL_END_BANNER, C6262a.EnumC6266d.ERROR_AD_CACHE_IS_EMPTY.m23447a());
            return null;
        }
        C14247d.m2064a(AdUnit.CALL_END_BANNER, b);
        b.mo23569a(new AbstractC6207d.AbstractC6208a() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.7
            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            /* renamed from: a */
            public void mo5002a() {
                C14247d.m2059c(AdUnit.CALL_END_BANNER);
            }

            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            public void onAdImpression() {
                AdUtils.m28812a(AdUnit.CALL_END_BANNER);
                C14247d.m2058d(AdUnit.CALL_END_BANNER);
            }
        });
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R$layout.native_ads_content, viewGroup, false);
        b.mo23572a(context, linearLayout);
        viewGroup.addView(linearLayout, 0);
        return b;
    }

    /* renamed from: a */
    public void m28738a(final Context context, final ViewGroup viewGroup, final ShowAdsListener showAdsListener) {
        if (!AdStatusController.m28827c().m28831a()) {
            if (showAdsListener != null) {
                showAdsListener.mo5531a(null);
            }
        } else if ((context instanceof CallEndDialogActivity) && viewGroup != null) {
            m28735a(new Runnable() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.5
                @Override // java.lang.Runnable
                public void run() {
                    if (C6214a.m23563c(AdUnit.CALL_END_DIALOG.m28821a())) {
                        AbstractC6207d b = StandardPostCallAds.this.m28732b(context, viewGroup);
                        ShowAdsListener showAdsListener2 = showAdsListener;
                        if (showAdsListener2 != null) {
                            showAdsListener2.mo5531a(b);
                        }
                    } else if (C6214a.m23563c(AdUnit.CALL_END_BANNER.m28821a())) {
                        AbstractC6207d a = StandardPostCallAds.this.m28739a(context, viewGroup);
                        ShowAdsListener showAdsListener3 = showAdsListener;
                        if (showAdsListener3 != null) {
                            showAdsListener3.mo5531a(a);
                        }
                    } else if (!C6214a.m23563c(AdUnit.CALL_END_FULL.m28821a())) {
                        C6192e.m23607a(AdUnit.CALL_END_BANNER.m28821a()).m23608a(new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.5.1
                            @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                            /* renamed from: a */
                            public void mo5004a(String str) {
                                C14261f.m1975a(str, AdUtils.m28811a(str));
                                List<C6260a> a2 = C6268a.m23442a(str);
                                if (a2 != null) {
                                    C14261f.m1972a(a2);
                                }
                                if (C6214a.m23563c(str)) {
                                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                                    RunnableC44145 r0 = RunnableC44145.this;
                                    StandardPostCallAds.this.m28738a(context, viewGroup, showAdsListener);
                                    return;
                                }
                                C14247d.m2062a(str, C6192e.m23607a(str).m23605b());
                                ShowAdsListener showAdsListener4 = showAdsListener;
                                if (showAdsListener4 != null) {
                                    showAdsListener4.mo5531a(null);
                                }
                            }

                            @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                            /* renamed from: b */
                            public void mo5003b(String str) {
                                C14247d.m2060b(str);
                                C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                            }
                        });
                    } else {
                        ShowAdsListener showAdsListener4 = showAdsListener;
                        if (showAdsListener4 != null) {
                            showAdsListener4.mo5531a(null);
                        }
                    }
                }
            });
        } else if (showAdsListener != null) {
            showAdsListener.mo5531a(null);
        }
    }

    /* renamed from: a */
    public final void m28735a(Runnable runnable) {
        if (AdUtils.m28801h()) {
            runnable.run();
        } else {
            C14174u.m2293k().post(runnable);
        }
    }

    /* renamed from: b */
    public final AbstractC6207d m28732b(Context context, ViewGroup viewGroup) {
        if (!AdStatusController.m28827c().m28830a(AdUnit.CALL_END_DIALOG)) {
            return null;
        }
        if (context == null || viewGroup == null) {
            C14247d.m2063a(AdUnit.CALL_END_DIALOG, C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a());
            return null;
        }
        FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(2131361882);
        if (frameLayout == null) {
            C14247d.m2063a(AdUnit.CALL_END_DIALOG, C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a());
            return null;
        }
        AbstractC6207d b = C6214a.m23564b(AdUnit.CALL_END_DIALOG.m28821a());
        if (b == null) {
            C14247d.m2063a(AdUnit.CALL_END_DIALOG, C6262a.EnumC6266d.ERROR_AD_CACHE_IS_EMPTY.m23447a());
            return null;
        }
        C14247d.m2064a(AdUnit.CALL_END_DIALOG, b);
        b.mo23569a(new AbstractC6207d.AbstractC6208a() { // from class: gogolook.callgogolook2.ad.StandardPostCallAds.6
            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            /* renamed from: a */
            public void mo5002a() {
                C14247d.m2059c(AdUnit.CALL_END_DIALOG);
            }

            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            public void onAdImpression() {
                AdUtils.m28812a(AdUnit.CALL_END_DIALOG);
                C14247d.m2058d(AdUnit.CALL_END_DIALOG);
            }
        });
        b.mo23572a(context, frameLayout);
        return b;
    }
}

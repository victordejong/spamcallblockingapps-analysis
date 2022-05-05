package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.C0547b;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzany.class */
public final class zzany implements MediationInterstitialAdapter {

    /* renamed from: a */
    private Activity f11074a;

    /* renamed from: b */
    private MediationInterstitialListener f11075b;

    /* renamed from: c */
    private Uri f11076c;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        zzayu.zzea("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        zzayu.zzea("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        zzayu.zzea("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f11075b = mediationInterstitialListener;
        if (this.f11075b == null) {
            zzayu.zzez("Listener not set for mediation. Returning.");
        } else if (!(context instanceof Activity)) {
            zzayu.zzez("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.f11075b.onAdFailedToLoad(this, 0);
        } else {
            if (!(PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzaao.zzk(context))) {
                zzayu.zzez("Default browser does not support custom tabs. Bailing out.");
                this.f11075b.onAdFailedToLoad(this, 0);
                return;
            }
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                zzayu.zzez("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.f11075b.onAdFailedToLoad(this, 0);
                return;
            }
            this.f11074a = (Activity) context;
            this.f11076c = Uri.parse(string);
            this.f11075b.onAdLoaded(this);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        C0547b a = new C0547b.C0548a().m8878a();
        a.f2524a.setData(this.f11076c);
        zzawb.zzdsr.post(new RunnableC1803cv(this, new AdOverlayInfoParcel(new zzd(a.f2524a), null, new C1801ct(this), null, new zzazb(0, 0, false))));
        zzq.zzku().zzvb();
    }
}

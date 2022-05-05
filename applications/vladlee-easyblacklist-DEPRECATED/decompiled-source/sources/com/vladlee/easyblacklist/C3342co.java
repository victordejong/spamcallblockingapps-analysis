package com.vladlee.easyblacklist;

import android.widget.LinearLayout;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.co */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/co.class */
public final class C3342co extends AdListener {

    /* renamed from: a */
    final /* synthetic */ LinearLayout f19451a;

    /* renamed from: b */
    final /* synthetic */ EasyBlacklistActivity f19452b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3342co(EasyBlacklistActivity easyBlacklistActivity, LinearLayout linearLayout) {
        this.f19452b = easyBlacklistActivity;
        this.f19451a = linearLayout;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        AdView adView;
        AdView adView2;
        this.f19452b.m323c(0);
        adView = this.f19452b.f19255q;
        if (adView != null) {
            adView2 = this.f19452b.f19255q;
            adView2.setVisibility(8);
        }
        this.f19451a.setVisibility(0);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        AdView adView;
        AdView adView2;
        super.onAdLoaded();
        this.f19452b.m323c(0);
        adView = this.f19452b.f19255q;
        if (adView != null) {
            this.f19451a.setVisibility(8);
            adView2 = this.f19452b.f19255q;
            adView2.setVisibility(0);
        }
    }
}

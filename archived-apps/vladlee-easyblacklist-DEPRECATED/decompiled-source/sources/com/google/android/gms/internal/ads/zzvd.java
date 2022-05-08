package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvd.class */
public class zzvd extends AdListener {

    /* renamed from: a */
    private final Object f15593a = new Object();

    /* renamed from: b */
    private AdListener f15594b;

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        synchronized (this.f15593a) {
            if (this.f15594b != null) {
                this.f15594b.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        synchronized (this.f15593a) {
            if (this.f15594b != null) {
                this.f15594b.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        synchronized (this.f15593a) {
            if (this.f15594b != null) {
                this.f15594b.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        synchronized (this.f15593a) {
            if (this.f15594b != null) {
                this.f15594b.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        synchronized (this.f15593a) {
            if (this.f15594b != null) {
                this.f15594b.onAdOpened();
            }
        }
    }

    public final void zza(AdListener adListener) {
        synchronized (this.f15593a) {
            this.f15594b = adListener;
        }
    }
}

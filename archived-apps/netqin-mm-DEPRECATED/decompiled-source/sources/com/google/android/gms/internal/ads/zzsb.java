package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsb.class */
public final class zzsb extends zzsk {

    /* renamed from: a */
    public final WeakReference<AppOpenAd.AppOpenAdLoadCallback> f28951a;

    public zzsb(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.f28951a = new WeakReference<>(appOpenAdLoadCallback);
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    /* renamed from: a */
    public final void mo11473a(zzsg zzsgVar) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f28951a.get();
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.mo5285a(new zzsn(zzsgVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    /* renamed from: d */
    public final void mo11472d(zzva zzvaVar) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f28951a.get();
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.mo5286a(zzvaVar.m11206i());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    /* renamed from: k */
    public final void mo11471k(int i) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f28951a.get();
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.m18081a(i);
        }
    }
}

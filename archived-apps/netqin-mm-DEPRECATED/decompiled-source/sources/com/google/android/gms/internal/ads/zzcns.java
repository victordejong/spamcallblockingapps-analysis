package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.zzp;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcns.class */
public final class zzcns implements AppEventListener, zzbuh, zzbui, zzbuy, zzbuz, zzbvs, zzbws, zzdso, zzux {

    /* renamed from: a */
    public final List<Object> f26315a;

    /* renamed from: b */
    public final zzcng f26316b;

    /* renamed from: c */
    public long f26317c;

    public zzcns(zzcng zzcngVar, zzbix zzbixVar) {
        this.f26316b = zzcngVar;
        this.f26315a = Collections.singletonList(zzbixVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: A */
    public final void mo13512A() {
        m14000a(zzbuh.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: H */
    public final void mo13511H() {
        m14000a(zzbuh.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        m14000a(zzbuz.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: a */
    public final void mo14003a(Context context) {
        m14000a(zzbuy.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14002a(zzatc zzatcVar) {
        this.f26317c = zzp.m17962j().mo17092a();
        m14000a(zzbws.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: a */
    public final void mo13508a(zzatw zzatwVar, String str, String str2) {
        m14000a(zzbuh.class, "onRewarded", zzatwVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbws
    /* renamed from: a */
    public final void mo14001a(zzdog zzdogVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13247a(zzdsf zzdsfVar, String str) {
        m14000a(zzdsg.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13246a(zzdsf zzdsfVar, String str, Throwable th) {
        m14000a(zzdsg.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(zzva zzvaVar) {
        m14000a(zzbui.class, "onAdFailedToLoad", Integer.valueOf(zzvaVar.f28995a), zzvaVar.f28996b, zzvaVar.f28997c);
    }

    /* renamed from: a */
    public final void m14000a(Class<?> cls, String str, Object... objArr) {
        zzcng zzcngVar = this.f26316b;
        List<Object> list = this.f26315a;
        String valueOf = String.valueOf(cls.getSimpleName());
        zzcngVar.m14025a(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    /* renamed from: a */
    public final void mo13729a(String str, String str2) {
        m14000a(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: b */
    public final void mo13245b(zzdsf zzdsfVar, String str) {
        m14000a(zzdsg.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: c */
    public final void mo13999c(Context context) {
        m14000a(zzbuy.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: c */
    public final void mo13244c(zzdsf zzdsfVar, String str) {
        m14000a(zzdsg.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: d */
    public final void mo13998d(Context context) {
        m14000a(zzbuy.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: k */
    public final void mo13497k() {
        m14000a(zzbuh.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        m14000a(zzux.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    public final void onRewardedVideoCompleted() {
        m14000a(zzbuh.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: t */
    public final void mo13496t() {
        m14000a(zzbuh.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        long a = zzp.m17962j().mo17092a();
        long j = this.f26317c;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(a - j);
        zzayp.m16153g(sb.toString());
        m14000a(zzbvs.class, "onAdLoaded", new Object[0]);
    }
}

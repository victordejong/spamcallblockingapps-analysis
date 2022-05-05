package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.zzq;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzceo.class */
public final class zzceo implements AppEventListener, zzbov, zzbow, zzbpe, zzbph, zzbqb, zzbqx, zzdcx, zzty {

    /* renamed from: a */
    private final List<Object> f13046a;

    /* renamed from: b */
    private final zzcec f13047b;

    /* renamed from: c */
    private long f13048c;

    public zzceo(zzcec zzcecVar, zzbfx zzbfxVar) {
        this.f13047b = zzcecVar;
        this.f13046a = Collections.singletonList(zzbfxVar);
    }

    /* renamed from: a */
    private final void m3802a(Class<?> cls, String str, Object... objArr) {
        zzcec zzcecVar = this.f13047b;
        List<Object> list = this.f13046a;
        String valueOf = String.valueOf(cls.getSimpleName());
        zzcecVar.zza(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void onAdClicked() {
        m3802a(zzty.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdClosed() {
        m3802a(zzbov.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(int i) {
        m3802a(zzbow.class, "onAdFailedToLoad", Integer.valueOf(i));
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        m3802a(zzbpe.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdLeftApplication() {
        m3802a(zzbov.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        long elapsedRealtime = zzq.zzkx().elapsedRealtime();
        long j = this.f13048c;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(elapsedRealtime - j);
        zzavs.zzed(sb.toString());
        m3802a(zzbqb.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdOpened() {
        m3802a(zzbov.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        m3802a(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoCompleted() {
        m3802a(zzbov.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoStarted() {
        m3802a(zzbov.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str) {
        m3802a(zzdcp.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str, Throwable th) {
        m3802a(zzdcp.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzaqk zzaqkVar) {
        this.f13048c = zzq.zzkx().elapsedRealtime();
        m3802a(zzbqx.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    @ParametersAreNonnullByDefault
    public final void zzb(zzare zzareVar, String str, String str2) {
        m3802a(zzbov.class, "onRewarded", zzareVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzczt zzcztVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzb(zzdco zzdcoVar, String str) {
        m3802a(zzdcp.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbv(Context context) {
        m3802a(zzbph.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbw(Context context) {
        m3802a(zzbph.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbx(Context context) {
        m3802a(zzbph.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzc(zzdco zzdcoVar, String str) {
        m3802a(zzdcp.class, "onTaskSucceeded", str);
    }
}

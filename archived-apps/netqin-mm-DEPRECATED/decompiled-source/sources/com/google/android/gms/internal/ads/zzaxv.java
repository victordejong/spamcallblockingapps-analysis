package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4128v4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxv.class */
public final class zzaxv implements zzaxx {
    @Override // com.google.android.gms.internal.ads.zzaxx
    /* renamed from: a */
    public final zzdzc<AdvertisingIdClient.Info> mo16202a(Context context) {
        zzbcg zzbcgVar = new zzbcg();
        zzwm.m11170a();
        if (zzbbg.m15893c(context)) {
            zzbbz.f24764a.execute(new RunnableC4128v4(this, context, zzbcgVar));
        }
        return zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    /* renamed from: a */
    public final zzdzc<String> mo16201a(Context context, int i) {
        return zzdyq.m12988a((Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    /* renamed from: a */
    public final zzdzc<String> mo16200a(String str, PackageInfo packageInfo) {
        return zzdyq.m12988a(str);
    }
}

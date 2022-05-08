package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/p.class */
final class C2132p implements zzafn<zzbdi> {
    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        zzbdi zzbdiVar2 = zzbdiVar;
        if (map.keySet().contains("start")) {
            zzbdiVar2.zzaz(true);
        }
        if (map.keySet().contains("stop")) {
            zzbdiVar2.zzaz(false);
        }
    }
}

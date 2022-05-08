package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/n.class */
final class C2078n implements zzafn<zzbdi> {
    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        zzbdi zzbdiVar2 = zzbdiVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzbdiVar2.zzjv();
        } else if ("resume".equals(str)) {
            zzbdiVar2.zzjw();
        }
    }
}

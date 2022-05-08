package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/k.class */
final class C1997k implements zzafn<zzbdi> {
    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        zzbdi zzbdiVar2 = zzbdiVar;
        if (zzbdiVar2.zzaao() != null) {
            zzbdiVar2.zzaao().zzmm();
        }
        zzc zzzw = zzbdiVar2.zzzw();
        if (zzzw != null) {
            zzzw.close();
            return;
        }
        zzc zzzx = zzbdiVar2.zzzx();
        if (zzzx != null) {
            zzzx.close();
        } else {
            zzavs.zzez("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}

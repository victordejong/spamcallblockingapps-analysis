package com.google.android.gms.internal.ads;

import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbce.class */
public final class zzbce implements zzbcv {
    @Override // com.google.android.gms.internal.ads.zzbcv
    public final zzbcn zza(zzbaz zzbazVar, int i, String str, zzbaw zzbawVar) {
        if (Build.VERSION.SDK_INT < 16 || i <= 0) {
            return new zzbcu(zzbazVar);
        }
        int zzzo = zzbbs.zzzo();
        return zzzo < zzbawVar.zzdzl ? new zzbcy(zzbazVar, zzbawVar) : zzzo < zzbawVar.zzdzf ? new zzbcz(zzbazVar, zzbawVar) : new zzbcx(zzbazVar);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzv.class */
public final class zzzv {
    public static boolean zza(zzaae zzaaeVar, zzaac zzaacVar, String... strArr) {
        if (zzaaeVar == null || zzaacVar == null || !zzaaeVar.f10802a || zzaacVar == null) {
            return false;
        }
        return zzaaeVar.zza(zzaacVar, zzq.zzkx().elapsedRealtime(), strArr);
    }

    public static zzaac zzb(zzaae zzaaeVar) {
        if (zzaaeVar == null) {
            return null;
        }
        return zzaaeVar.zzex(zzq.zzkx().elapsedRealtime());
    }
}

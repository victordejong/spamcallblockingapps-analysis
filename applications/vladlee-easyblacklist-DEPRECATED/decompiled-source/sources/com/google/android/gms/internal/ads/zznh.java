package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznh.class */
public final class zznh {
    public final zzmr zzbef;
    public final zzng zzbeg;
    public final Object zzbeh;
    public final zzhh[] zzbei;

    public zznh(zzmr zzmrVar, zzng zzngVar, Object obj, zzhh[] zzhhVarArr) {
        this.zzbef = zzmrVar;
        this.zzbeg = zzngVar;
        this.zzbeh = obj;
        this.zzbei = zzhhVarArr;
    }

    public final boolean zza(zznh zznhVar, int i) {
        return zznhVar != null && zzoq.zza(this.zzbeg.zzay(i), zznhVar.zzbeg.zzay(i)) && zzoq.zza(this.zzbei[i], zznhVar.zzbei[i]);
    }
}

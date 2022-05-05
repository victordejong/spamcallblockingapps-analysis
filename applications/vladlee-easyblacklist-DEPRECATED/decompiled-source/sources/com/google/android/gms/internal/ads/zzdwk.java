package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdvx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwk.class */
public final class zzdwk extends zzdvq<zzdwk> {

    /* renamed from: c */
    private zzdvx.zzb.zzd.C3499zzb f14657c = null;
    public zzdvx.zzb.zzc[] zzhyl = new zzdvx.zzb.zzc[0];

    /* renamed from: d */
    private byte[] f14658d = null;

    /* renamed from: e */
    private byte[] f14659e = null;

    /* renamed from: f */
    private Integer f14660f = null;

    public zzdwk() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int a = super.mo3006a();
        zzdvx.zzb.zzc[] zzcVarArr = this.zzhyl;
        int i = a;
        if (zzcVarArr != null) {
            i = a;
            if (zzcVarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    zzdvx.zzb.zzc[] zzcVarArr2 = this.zzhyl;
                    i = a;
                    if (i2 >= zzcVarArr2.length) {
                        break;
                    }
                    zzdvx.zzb.zzc zzcVar = zzcVarArr2[i2];
                    a = a;
                    if (zzcVar != null) {
                        a += zzdrb.zzc(2, zzcVar);
                    }
                    i2++;
                }
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        zzdvx.zzb.zzc[] zzcVarArr = this.zzhyl;
        if (zzcVarArr != null && zzcVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzdvx.zzb.zzc[] zzcVarArr2 = this.zzhyl;
                if (i >= zzcVarArr2.length) {
                    break;
                }
                zzdvx.zzb.zzc zzcVar = zzcVarArr2[i];
                if (zzcVar != null) {
                    zzdvoVar.zze(2, zzcVar);
                }
                i++;
            }
        }
        super.zza(zzdvoVar);
    }
}

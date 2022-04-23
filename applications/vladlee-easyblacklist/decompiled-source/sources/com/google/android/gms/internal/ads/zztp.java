package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztp.class */
public final class zztp extends zzdvq<zztp> {
    public String zzbzo = null;

    /* renamed from: c */
    private zzsy.zzb[] f15501c = new zzsy.zzb[0];

    /* renamed from: d */
    private zzte f15502d = null;

    /* renamed from: e */
    private zzte f15503e = null;

    /* renamed from: f */
    private zzte f15504f = null;

    public zztp() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int a = super.mo3006a();
        String str = this.zzbzo;
        int i = a;
        if (str != null) {
            i = a + zzdvo.zzg(1, str);
        }
        zzsy.zzb[] zzbVarArr = this.f15501c;
        int i2 = i;
        if (zzbVarArr != null) {
            i2 = i;
            if (zzbVarArr.length > 0) {
                int i3 = 0;
                while (true) {
                    zzsy.zzb[] zzbVarArr2 = this.f15501c;
                    i2 = i;
                    if (i3 >= zzbVarArr2.length) {
                        break;
                    }
                    zzsy.zzb zzbVar = zzbVarArr2[i3];
                    i = i;
                    if (zzbVar != null) {
                        i += zzdrb.zzc(2, zzbVar);
                    }
                    i3++;
                }
            }
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        String str = this.zzbzo;
        if (str != null) {
            zzdvoVar.zzf(1, str);
        }
        zzsy.zzb[] zzbVarArr = this.f15501c;
        if (zzbVarArr != null && zzbVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzsy.zzb[] zzbVarArr2 = this.f15501c;
                if (i >= zzbVarArr2.length) {
                    break;
                }
                zzsy.zzb zzbVar = zzbVarArr2[i];
                if (zzbVar != null) {
                    zzdvoVar.zze(2, zzbVar);
                }
                i++;
            }
        }
        super.zza(zzdvoVar);
    }
}

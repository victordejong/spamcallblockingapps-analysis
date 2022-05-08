package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztq.class */
public final class zztq extends zzdvq<zztq> {
    public Integer zzbzt = null;

    /* renamed from: c */
    private zzte f15505c = null;

    /* renamed from: d */
    private zzsy.zzc f15506d = null;
    public zztp zzbzw = null;

    /* renamed from: e */
    private zzsy.zzb[] f15507e = new zzsy.zzb[0];

    /* renamed from: f */
    private zzsy.zzd f15508f = null;

    /* renamed from: g */
    private zzsy.zzk f15509g = null;

    /* renamed from: h */
    private zzsy.zzi f15510h = null;

    /* renamed from: i */
    private zzsy.zzf f15511i = null;

    /* renamed from: j */
    private zzsy.zzg f15512j = null;

    /* renamed from: k */
    private zztw[] f15513k = zztw.zzoj();

    public zztq() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int a = super.mo3006a();
        Integer num = this.zzbzt;
        int i = a;
        if (num != null) {
            i = a + zzdvo.zzaf(7, num.intValue());
        }
        zztp zztpVar = this.zzbzw;
        int i2 = i;
        if (zztpVar != null) {
            i2 = i + zzdvo.zzb(10, zztpVar);
        }
        zzsy.zzb[] zzbVarArr = this.f15507e;
        int i3 = 0;
        int i4 = i2;
        if (zzbVarArr != null) {
            i4 = i2;
            if (zzbVarArr.length > 0) {
                i4 = i2;
                int i5 = 0;
                while (true) {
                    zzsy.zzb[] zzbVarArr2 = this.f15507e;
                    if (i5 >= zzbVarArr2.length) {
                        break;
                    }
                    zzsy.zzb zzbVar = zzbVarArr2[i5];
                    i4 = i4;
                    if (zzbVar != null) {
                        i4 += zzdrb.zzc(11, zzbVar);
                    }
                    i5++;
                }
            }
        }
        zztw[] zztwVarArr = this.f15513k;
        int i6 = i4;
        if (zztwVarArr != null) {
            i6 = i4;
            if (zztwVarArr.length > 0) {
                while (true) {
                    zztw[] zztwVarArr2 = this.f15513k;
                    i6 = i4;
                    if (i3 >= zztwVarArr2.length) {
                        break;
                    }
                    zztw zztwVar = zztwVarArr2[i3];
                    i4 = i4;
                    if (zztwVar != null) {
                        i4 += zzdvo.zzb(17, zztwVar);
                    }
                    i3++;
                }
            }
        }
        return i6;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        Integer num = this.zzbzt;
        if (num != null) {
            zzdvoVar.zzab(7, num.intValue());
        }
        zztp zztpVar = this.zzbzw;
        if (zztpVar != null) {
            zzdvoVar.zza(10, zztpVar);
        }
        zzsy.zzb[] zzbVarArr = this.f15507e;
        int i = 0;
        if (zzbVarArr != null && zzbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzsy.zzb[] zzbVarArr2 = this.f15507e;
                if (i2 >= zzbVarArr2.length) {
                    break;
                }
                zzsy.zzb zzbVar = zzbVarArr2[i2];
                if (zzbVar != null) {
                    zzdvoVar.zze(11, zzbVar);
                }
                i2++;
            }
        }
        zztw[] zztwVarArr = this.f15513k;
        if (zztwVarArr != null && zztwVarArr.length > 0) {
            while (true) {
                zztw[] zztwVarArr2 = this.f15513k;
                if (i >= zztwVarArr2.length) {
                    break;
                }
                zztw zztwVar = zztwVarArr2[i];
                if (zztwVar != null) {
                    zzdvoVar.zza(17, zztwVar);
                }
                i++;
            }
        }
        super.zza(zzdvoVar);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdvx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwm.class */
public final class zzdwm extends zzdvq<zzdwm> {

    /* renamed from: c */
    private static volatile zzdwm[] f14672c;
    public Integer zzhyy = null;
    public String url = null;
    public zzdwk zzhyz = null;

    /* renamed from: d */
    private zzdvx.zzb.zze f14673d = null;

    /* renamed from: e */
    private Integer f14674e = null;

    /* renamed from: f */
    private int[] f14675f = zzdvy.zzhow;

    /* renamed from: g */
    private String f14676g = null;
    public zzdvx.zzb.zzh.zza zzhze = null;
    public String[] zzhzf = zzdvy.zzhuc;

    public zzdwm() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    public static zzdwm[] zzbdk() {
        if (f14672c == null) {
            synchronized (zzdvu.zzhtt) {
                if (f14672c == null) {
                    f14672c = new zzdwm[0];
                }
            }
        }
        return f14672c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int[] iArr;
        int a = super.mo3006a() + zzdvo.zzaf(1, this.zzhyy.intValue());
        String str = this.url;
        int i = a;
        if (str != null) {
            i = a + zzdvo.zzg(2, str);
        }
        zzdwk zzdwkVar = this.zzhyz;
        int i2 = i;
        if (zzdwkVar != null) {
            i2 = i + zzdvo.zzb(3, zzdwkVar);
        }
        int[] iArr2 = this.f14675f;
        int i3 = 0;
        int i4 = i2;
        if (iArr2 != null) {
            i4 = i2;
            if (iArr2.length > 0) {
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    iArr = this.f14675f;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    i6 += zzdvo.zzga(iArr[i5]);
                    i5++;
                }
                i4 = i2 + i6 + (iArr.length * 1);
            }
        }
        zzdvx.zzb.zzh.zza zzaVar = this.zzhze;
        int i7 = i4;
        if (zzaVar != null) {
            i7 = i4;
            if (zzaVar != null) {
                i7 = i4 + zzdvo.zzaf(8, zzaVar.zzae());
            }
        }
        String[] strArr = this.zzhzf;
        int i8 = i7;
        if (strArr != null) {
            i8 = i7;
            if (strArr.length > 0) {
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    String[] strArr2 = this.zzhzf;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    String str2 = strArr2[i3];
                    i9 = i9;
                    i10 = i10;
                    if (str2 != null) {
                        i10++;
                        i9 += zzdvo.zzhh(str2);
                    }
                    i3++;
                }
                i8 = i7 + i9 + (i10 * 1);
            }
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        zzdvoVar.zzab(1, this.zzhyy.intValue());
        String str = this.url;
        if (str != null) {
            zzdvoVar.zzf(2, str);
        }
        zzdwk zzdwkVar = this.zzhyz;
        if (zzdwkVar != null) {
            zzdvoVar.zza(3, zzdwkVar);
        }
        int[] iArr = this.f14675f;
        int i = 0;
        if (iArr != null && iArr.length > 0) {
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.f14675f;
                if (i2 >= iArr2.length) {
                    break;
                }
                zzdvoVar.zzab(6, iArr2[i2]);
                i2++;
            }
        }
        zzdvx.zzb.zzh.zza zzaVar = this.zzhze;
        if (!(zzaVar == null || zzaVar == null)) {
            zzdvoVar.zzab(8, zzaVar.zzae());
        }
        String[] strArr = this.zzhzf;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.zzhzf;
                if (i >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i];
                if (str2 != null) {
                    zzdvoVar.zzf(9, str2);
                }
                i++;
            }
        }
        super.zza(zzdvoVar);
    }
}

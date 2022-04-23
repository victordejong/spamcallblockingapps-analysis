package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdvx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwi.class */
public final class zzdwi extends zzdvq<zzdwi> {
    public zzdvx.zzb.zzg zzhxr = null;

    /* renamed from: c */
    private zzdvx.zza.zzc f14649c = null;
    public String url = null;
    public String zzhxt = null;

    /* renamed from: d */
    private String f14650d = null;
    public zzdvx.zzb.C3498zzb zzhxv = null;
    public zzdwm[] zzhxw = zzdwm.zzbdk();
    public String zzhxx = null;
    public zzdwj zzhxy = null;

    /* renamed from: e */
    private Boolean f14651e = null;

    /* renamed from: f */
    private String[] f14652f = zzdvy.zzhuc;

    /* renamed from: g */
    private String f14653g = null;

    /* renamed from: h */
    private Boolean f14654h = null;

    /* renamed from: i */
    private Boolean f14655i = null;

    /* renamed from: j */
    private byte[] f14656j = null;
    public zzdvx.zzb.zzi zzhyf = null;
    public String[] zzhyg = zzdvy.zzhuc;
    public String[] zzhyh = zzdvy.zzhuc;

    public zzdwi() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int a = super.mo3006a();
        String str = this.url;
        int i = a;
        if (str != null) {
            i = a + zzdvo.zzg(1, str);
        }
        String str2 = this.zzhxt;
        int i2 = i;
        if (str2 != null) {
            i2 = i + zzdvo.zzg(2, str2);
        }
        zzdwm[] zzdwmVarArr = this.zzhxw;
        int i3 = 0;
        int i4 = i2;
        if (zzdwmVarArr != null) {
            i4 = i2;
            if (zzdwmVarArr.length > 0) {
                int i5 = 0;
                while (true) {
                    zzdwm[] zzdwmVarArr2 = this.zzhxw;
                    if (i5 >= zzdwmVarArr2.length) {
                        break;
                    }
                    zzdwm zzdwmVar = zzdwmVarArr2[i5];
                    i2 = i2;
                    if (zzdwmVar != null) {
                        i2 += zzdvo.zzb(4, zzdwmVar);
                    }
                    i5++;
                }
                i4 = i2;
            }
        }
        String[] strArr = this.f14652f;
        int i6 = i4;
        if (strArr != null) {
            i6 = i4;
            if (strArr.length > 0) {
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    String[] strArr2 = this.f14652f;
                    if (i7 >= strArr2.length) {
                        break;
                    }
                    String str3 = strArr2[i7];
                    i8 = i8;
                    i9 = i9;
                    if (str3 != null) {
                        i9++;
                        i8 += zzdvo.zzhh(str3);
                    }
                    i7++;
                }
                i6 = i4 + i8 + (i9 * 1);
            }
        }
        zzdvx.zzb.zzg zzgVar = this.zzhxr;
        int i10 = i6;
        if (zzgVar != null) {
            i10 = i6;
            if (zzgVar != null) {
                i10 = i6 + zzdvo.zzaf(10, zzgVar.zzae());
            }
        }
        zzdvx.zzb.C3498zzb zzbVar = this.zzhxv;
        int i11 = i10;
        if (zzbVar != null) {
            i11 = i10 + zzdrb.zzc(12, zzbVar);
        }
        String str4 = this.zzhxx;
        int i12 = i11;
        if (str4 != null) {
            i12 = i11 + zzdvo.zzg(13, str4);
        }
        zzdwj zzdwjVar = this.zzhxy;
        int i13 = i12;
        if (zzdwjVar != null) {
            i13 = i12 + zzdvo.zzb(14, zzdwjVar);
        }
        zzdvx.zzb.zzi zziVar = this.zzhyf;
        int i14 = i13;
        if (zziVar != null) {
            i14 = i13 + zzdrb.zzc(17, zziVar);
        }
        String[] strArr3 = this.zzhyg;
        int i15 = i14;
        if (strArr3 != null) {
            i15 = i14;
            if (strArr3.length > 0) {
                int i16 = 0;
                int i17 = 0;
                int i18 = 0;
                while (true) {
                    String[] strArr4 = this.zzhyg;
                    if (i18 >= strArr4.length) {
                        break;
                    }
                    String str5 = strArr4[i18];
                    i17 = i17;
                    i16 = i16;
                    if (str5 != null) {
                        i16++;
                        i17 += zzdvo.zzhh(str5);
                    }
                    i18++;
                }
                i15 = i14 + i17 + (i16 * 2);
            }
        }
        String[] strArr5 = this.zzhyh;
        int i19 = i15;
        if (strArr5 != null) {
            i19 = i15;
            if (strArr5.length > 0) {
                int i20 = 0;
                int i21 = 0;
                while (true) {
                    String[] strArr6 = this.zzhyh;
                    if (i3 >= strArr6.length) {
                        break;
                    }
                    String str6 = strArr6[i3];
                    i20 = i20;
                    i21 = i21;
                    if (str6 != null) {
                        i21++;
                        i20 += zzdvo.zzhh(str6);
                    }
                    i3++;
                }
                i19 = i15 + i20 + (i21 * 2);
            }
        }
        return i19;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        String str = this.url;
        if (str != null) {
            zzdvoVar.zzf(1, str);
        }
        String str2 = this.zzhxt;
        if (str2 != null) {
            zzdvoVar.zzf(2, str2);
        }
        zzdwm[] zzdwmVarArr = this.zzhxw;
        int i = 0;
        if (zzdwmVarArr != null && zzdwmVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzdwm[] zzdwmVarArr2 = this.zzhxw;
                if (i2 >= zzdwmVarArr2.length) {
                    break;
                }
                zzdwm zzdwmVar = zzdwmVarArr2[i2];
                if (zzdwmVar != null) {
                    zzdvoVar.zza(4, zzdwmVar);
                }
                i2++;
            }
        }
        String[] strArr = this.f14652f;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.f14652f;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i3];
                if (str3 != null) {
                    zzdvoVar.zzf(6, str3);
                }
                i3++;
            }
        }
        zzdvx.zzb.zzg zzgVar = this.zzhxr;
        if (!(zzgVar == null || zzgVar == null)) {
            zzdvoVar.zzab(10, zzgVar.zzae());
        }
        zzdvx.zzb.C3498zzb zzbVar = this.zzhxv;
        if (zzbVar != null) {
            zzdvoVar.zze(12, zzbVar);
        }
        String str4 = this.zzhxx;
        if (str4 != null) {
            zzdvoVar.zzf(13, str4);
        }
        zzdwj zzdwjVar = this.zzhxy;
        if (zzdwjVar != null) {
            zzdvoVar.zza(14, zzdwjVar);
        }
        zzdvx.zzb.zzi zziVar = this.zzhyf;
        if (zziVar != null) {
            zzdvoVar.zze(17, zziVar);
        }
        String[] strArr3 = this.zzhyg;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr4 = this.zzhyg;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str5 = strArr4[i4];
                if (str5 != null) {
                    zzdvoVar.zzf(20, str5);
                }
                i4++;
            }
        }
        String[] strArr5 = this.zzhyh;
        if (strArr5 != null && strArr5.length > 0) {
            while (true) {
                String[] strArr6 = this.zzhyh;
                if (i >= strArr6.length) {
                    break;
                }
                String str6 = strArr6[i];
                if (str6 != null) {
                    zzdvoVar.zzf(21, str6);
                }
                i++;
            }
        }
        super.zza(zzdvoVar);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztu.class */
public final class zztu extends zzdvq<zztu> {

    /* renamed from: c */
    private Integer f15520c = null;
    public String zzcaq = null;

    /* renamed from: d */
    private Integer f15521d = null;

    /* renamed from: e */
    private zzte f15522e = null;

    /* renamed from: f */
    private zztt f15523f = null;
    public long[] zzcau = zzdvy.zzhty;
    public zzts zzcav = null;

    /* renamed from: g */
    private zztr f15524g = null;

    /* renamed from: h */
    private zzsy.zzh f15525h = null;
    public zztq zzcay = null;
    public zzsy.zzj zzcaz = null;
    public zzsy.zzw zzcba = null;
    public zzsy.zza zzcbb = null;

    public zztu() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        long[] jArr;
        int a = super.mo3006a();
        String str = this.zzcaq;
        int i = a;
        if (str != null) {
            i = a + zzdvo.zzg(10, str);
        }
        long[] jArr2 = this.zzcau;
        int i2 = i;
        if (jArr2 != null) {
            i2 = i;
            if (jArr2.length > 0) {
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    jArr = this.zzcau;
                    if (i3 >= jArr.length) {
                        break;
                    }
                    long j = jArr[i3];
                    i4 += ((-128) & j) == 0 ? 1 : ((-16384) & j) == 0 ? 2 : ((-2097152) & j) == 0 ? 3 : ((-268435456) & j) == 0 ? 4 : ((-34359738368L) & j) == 0 ? 5 : ((-4398046511104L) & j) == 0 ? 6 : ((-562949953421312L) & j) == 0 ? 7 : ((-72057594037927936L) & j) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10;
                    i3++;
                }
                i2 = i + i4 + (jArr.length * 1);
            }
        }
        zzts zztsVar = this.zzcav;
        int i5 = i2;
        if (zztsVar != null) {
            i5 = i2 + zzdvo.zzb(15, zztsVar);
        }
        zztq zztqVar = this.zzcay;
        int i6 = i5;
        if (zztqVar != null) {
            i6 = i5 + zzdvo.zzb(18, zztqVar);
        }
        zzsy.zzj zzjVar = this.zzcaz;
        int i7 = i6;
        if (zzjVar != null) {
            i7 = i6 + zzdrb.zzc(19, zzjVar);
        }
        zzsy.zzw zzwVar = this.zzcba;
        int i8 = i7;
        if (zzwVar != null) {
            i8 = i7 + zzdrb.zzc(20, zzwVar);
        }
        zzsy.zza zzaVar = this.zzcbb;
        int i9 = i8;
        if (zzaVar != null) {
            i9 = i8 + zzdrb.zzc(21, zzaVar);
        }
        return i9;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        String str = this.zzcaq;
        if (str != null) {
            zzdvoVar.zzf(10, str);
        }
        long[] jArr = this.zzcau;
        if (jArr != null && jArr.length > 0) {
            int i = 0;
            while (true) {
                long[] jArr2 = this.zzcau;
                if (i >= jArr2.length) {
                    break;
                }
                long j = jArr2[i];
                zzdvoVar.zzaa(14, 0);
                zzdvoVar.zzfs(j);
                i++;
            }
        }
        zzts zztsVar = this.zzcav;
        if (zztsVar != null) {
            zzdvoVar.zza(15, zztsVar);
        }
        zztq zztqVar = this.zzcay;
        if (zztqVar != null) {
            zzdvoVar.zza(18, zztqVar);
        }
        zzsy.zzj zzjVar = this.zzcaz;
        if (zzjVar != null) {
            zzdvoVar.zze(19, zzjVar);
        }
        zzsy.zzw zzwVar = this.zzcba;
        if (zzwVar != null) {
            zzdvoVar.zze(20, zzwVar);
        }
        zzsy.zza zzaVar = this.zzcbb;
        if (zzaVar != null) {
            zzdvoVar.zze(21, zzaVar);
        }
        super.zza(zzdvoVar);
    }
}

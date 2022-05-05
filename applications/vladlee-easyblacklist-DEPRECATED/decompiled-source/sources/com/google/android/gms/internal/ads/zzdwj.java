package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdvx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwj.class */
public final class zzdwj extends zzdvq<zzdwj> {
    public zzdvx.zzb.zzf.EnumC3501zzb zzhyi = null;
    public String mimeType = null;
    public byte[] zzhyj = null;

    public zzdwj() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int a = super.mo3006a();
        zzdvx.zzb.zzf.EnumC3501zzb zzbVar = this.zzhyi;
        int i = a;
        if (zzbVar != null) {
            i = a;
            if (zzbVar != null) {
                i = a + zzdvo.zzaf(1, zzbVar.zzae());
            }
        }
        String str = this.mimeType;
        int i2 = i;
        if (str != null) {
            i2 = i + zzdvo.zzg(2, str);
        }
        byte[] bArr = this.zzhyj;
        int i3 = i2;
        if (bArr != null) {
            i3 = i2 + zzdvo.zzfz(3) + zzdvo.zzgh(bArr.length) + bArr.length;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        zzdvx.zzb.zzf.EnumC3501zzb zzbVar = this.zzhyi;
        if (!(zzbVar == null || zzbVar == null)) {
            zzdvoVar.zzab(1, zzbVar.zzae());
        }
        String str = this.mimeType;
        if (str != null) {
            zzdvoVar.zzf(2, str);
        }
        byte[] bArr = this.zzhyj;
        if (bArr != null) {
            zzdvoVar.zza(3, bArr);
        }
        super.zza(zzdvoVar);
    }
}

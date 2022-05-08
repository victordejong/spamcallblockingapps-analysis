package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzts.class */
public final class zzts extends zzdvq<zzts> {
    public String zzcae = null;

    /* renamed from: c */
    private zzsy.zzo f15514c = null;

    /* renamed from: d */
    private Integer f15515d = null;
    public zztt zzcah = null;

    /* renamed from: e */
    private Integer f15516e = null;

    /* renamed from: f */
    private zzte f15517f = null;

    /* renamed from: g */
    private zzte f15518g = null;

    /* renamed from: h */
    private zzte f15519h = null;

    public zzts() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int a = super.mo3006a();
        String str = this.zzcae;
        int i = a;
        if (str != null) {
            i = a + zzdvo.zzg(1, str);
        }
        zztt zzttVar = this.zzcah;
        int i2 = i;
        if (zzttVar != null) {
            i2 = i + zzdvo.zzb(4, zzttVar);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        String str = this.zzcae;
        if (str != null) {
            zzdvoVar.zzf(1, str);
        }
        zztt zzttVar = this.zzcah;
        if (zzttVar != null) {
            zzdvoVar.zza(4, zzttVar);
        }
        super.zza(zzdvoVar);
    }
}

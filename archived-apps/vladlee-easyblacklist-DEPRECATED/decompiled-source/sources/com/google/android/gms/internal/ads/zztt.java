package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztt.class */
public final class zztt extends zzdvq<zztt> {
    public Integer zzcam = null;
    public Integer zzcan = null;
    public Integer zzcao = null;

    public zztt() {
        this.f14601a = null;
        this.f14607b = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public final int mo3006a() {
        int a = super.mo3006a();
        Integer num = this.zzcam;
        int i = a;
        if (num != null) {
            i = a + zzdvo.zzaf(1, num.intValue());
        }
        Integer num2 = this.zzcan;
        int i2 = i;
        if (num2 != null) {
            i2 = i + zzdvo.zzaf(2, num2.intValue());
        }
        Integer num3 = this.zzcao;
        int i3 = i2;
        if (num3 != null) {
            i3 = i2 + zzdvo.zzaf(3, num3.intValue());
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdvq, com.google.android.gms.internal.ads.zzdvt
    public final void zza(zzdvo zzdvoVar) {
        Integer num = this.zzcam;
        if (num != null) {
            zzdvoVar.zzab(1, num.intValue());
        }
        Integer num2 = this.zzcan;
        if (num2 != null) {
            zzdvoVar.zzab(2, num2.intValue());
        }
        Integer num3 = this.zzcao;
        if (num3 != null) {
            zzdvoVar.zzab(3, num3.intValue());
        }
        super.zza(zzdvoVar);
    }
}

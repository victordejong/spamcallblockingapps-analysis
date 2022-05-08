package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdvq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvq.class */
public class zzdvq<M extends zzdvq<M>> extends zzdvt {

    /* renamed from: a */
    protected zzdvs f14601a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvt
    /* renamed from: a */
    public int mo3006a() {
        if (this.f14601a == null) {
            return 0;
        }
        for (int i = 0; i < this.f14601a.m3321a(); i++) {
            this.f14601a.m3320a(i).m4949a();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdvt
    public /* synthetic */ Object clone() {
        zzdvq zzdvqVar = (zzdvq) super.clone();
        zzdvu.zza(this, zzdvqVar);
        return zzdvqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdvt
    public void zza(zzdvo zzdvoVar) {
        if (this.f14601a != null) {
            for (int i = 0; i < this.f14601a.m3321a(); i++) {
                this.f14601a.m3320a(i).m4948b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdvt
    public final /* synthetic */ zzdvt zzbcr() {
        return (zzdvq) clone();
    }
}

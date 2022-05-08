package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.vc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vc.class */
public final class C2297vc implements zzdgt<zzbkk> {

    /* renamed from: a */
    private final /* synthetic */ zzblg f10611a;

    /* renamed from: b */
    private final /* synthetic */ zzcoo f10612b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2297vc(zzcoo zzcooVar, zzblg zzblgVar) {
        this.f10612b = zzcooVar;
        this.f10611a = zzblgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbkk zzbkkVar) {
        zzbkk zzbkkVar2;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzbqp zzbqpVar;
        zzbkk zzbkkVar3;
        zzbkk zzbkkVar4 = zzbkkVar;
        synchronized (this.f10612b) {
            this.f10612b.f13468k = null;
            zzbkkVar2 = this.f10612b.f13467j;
            if (zzbkkVar2 != null) {
                zzbkkVar3 = this.f10612b.f13467j;
                zzbkkVar3.destroy();
            }
            this.f10612b.f13467j = zzbkkVar4;
            viewGroup = this.f10612b.f13460c;
            viewGroup.removeAllViews();
            viewGroup2 = this.f10612b.f13460c;
            viewGroup2.addView(zzbkkVar4.zzaga());
            zzbkkVar4.zzagf();
            zzbqpVar = this.f10612b.f13464g;
            zzbqpVar.zzdg(zzbkkVar4.zzage());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzbqp zzbqpVar;
        synchronized (this.f10612b) {
            this.f10612b.f13468k = null;
            this.f10611a.zzadd().onAdFailedToLoad(zzcfb.zzd(th));
            zzbqpVar = this.f10612b.f13464g;
            zzbqpVar.zzdg(60);
            zzdad.zzc(th, "BannerAdManagerShim.onFailure");
        }
    }
}

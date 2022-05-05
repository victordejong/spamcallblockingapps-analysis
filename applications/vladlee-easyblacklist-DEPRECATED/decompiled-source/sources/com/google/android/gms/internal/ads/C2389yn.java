package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.yn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yn.class */
public final class C2389yn implements zzdgt<zzdbi<AdT>> {

    /* renamed from: a */
    private final /* synthetic */ zzcxg f10723a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2389yn(zzcxg zzcxgVar) {
        this.f10723a = zzcxgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(Object obj) {
        zzcxt zzcxtVar;
        int i;
        int i2;
        C2392yq yqVar;
        zzdbb zzdbbVar;
        zzdbb zzdbbVar2;
        C2392yq yqVar2;
        C2392yq yqVar3;
        C2392yq yqVar4;
        zzdbi<?> zzdbiVar = (zzdbi) obj;
        synchronized (this.f10723a) {
            zzcxtVar = this.f10723a.f14029d;
            zzdbiVar.zzgpc = ((zzbob) zzcxtVar.zzaog()).zzadc();
            i = this.f10723a.f14033h;
            if (i != C2391yp.f10726b) {
                zzdbbVar = this.f10723a.f14026a;
                zzdbbVar2 = this.f10723a.f14026a;
                yqVar2 = this.f10723a.f14031f;
                zzug zzugVar = yqVar2.f10731c;
                yqVar3 = this.f10723a.f14031f;
                String str = yqVar3.f10732d;
                yqVar4 = this.f10723a.f14031f;
                zzdbbVar.zza(zzdbbVar2.zza(zzugVar, str, yqVar4.f10734f), zzdbiVar);
            }
            i2 = this.f10723a.f14033h;
            if (i2 == C2391yp.f10725a) {
                zzcxg zzcxgVar = this.f10723a;
                yqVar = this.f10723a.f14031f;
                zzcxgVar.m3668a(yqVar);
            }
            this.f10723a.f14033h = C2391yp.f10725a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
    }
}

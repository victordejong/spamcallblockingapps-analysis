package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwz.class */
public final class zzcwz implements zzbow, zzbqg, zzcxq {

    /* renamed from: a */
    private final zzdax f14018a;

    /* renamed from: b */
    private final AtomicReference<zzrg> f14019b = new AtomicReference<>();

    /* renamed from: c */
    private final AtomicReference<zzrl> f14020c = new AtomicReference<>();

    /* renamed from: d */
    private final AtomicReference<zzbqg> f14021d = new AtomicReference<>();

    /* renamed from: e */
    private zzcwz f14022e = null;

    public zzcwz(zzdax zzdaxVar) {
        this.f14018a = zzdaxVar;
    }

    public static zzcwz zza(zzcwz zzcwzVar) {
        zzcwz zzcwzVar2 = new zzcwz(zzcwzVar.f14018a);
        zzcwzVar2.zzb(zzcwzVar);
        return zzcwzVar2;
    }

    public final void onAdClosed() {
        zzcwz zzcwzVar = this;
        while (true) {
            zzcwz zzcwzVar2 = zzcwzVar.f14022e;
            if (zzcwzVar2 != null) {
                zzcwzVar = zzcwzVar2;
            } else {
                zzcwzVar.f14018a.onAdClosed();
                zzcxp.zza(zzcwzVar.f14020c, C2382yg.f10714a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(final int i) {
        zzcwz zzcwzVar = this;
        while (true) {
            zzcwz zzcwzVar2 = zzcwzVar.f14022e;
            if (zzcwzVar2 != null) {
                zzcwzVar = zzcwzVar2;
            } else {
                zzcxp.zza(zzcwzVar.f14019b, new zzcxo(i) { // from class: com.google.android.gms.internal.ads.yh

                    /* renamed from: a */
                    private final int f10715a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10715a = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        ((zzrg) obj).onAppOpenAdFailedToLoad(this.f10715a);
                    }
                });
                return;
            }
        }
    }

    public final void zza(zzbqg zzbqgVar) {
        this.f14021d.set(zzbqgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqg
    public final void zzahi() {
        zzcwz zzcwzVar = this;
        while (true) {
            zzcwz zzcwzVar2 = zzcwzVar.f14022e;
            if (zzcwzVar2 != null) {
                zzcwzVar = zzcwzVar2;
            } else {
                zzcxp.zza(zzcwzVar.f14021d, C2384yi.f10716a);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxq
    public final void zzb(zzcxq zzcxqVar) {
        this.f14022e = (zzcwz) zzcxqVar;
    }

    public final void zzb(final zzrf zzrfVar) {
        zzcwz zzcwzVar = this;
        while (true) {
            zzcwz zzcwzVar2 = zzcwzVar.f14022e;
            if (zzcwzVar2 != null) {
                zzcwzVar = zzcwzVar2;
            } else {
                zzcxp.zza(zzcwzVar.f14019b, new zzcxo(zzrfVar) { // from class: com.google.android.gms.internal.ads.ye

                    /* renamed from: a */
                    private final zzrf f10712a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10712a = zzrfVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxo
                    public final void zzt(Object obj) {
                        ((zzrg) obj).zza(this.f10712a);
                    }
                });
                return;
            }
        }
    }

    public final void zzb(zzrg zzrgVar) {
        this.f14019b.set(zzrgVar);
    }

    public final void zzb(zzrl zzrlVar) {
        this.f14020c.set(zzrlVar);
    }
}

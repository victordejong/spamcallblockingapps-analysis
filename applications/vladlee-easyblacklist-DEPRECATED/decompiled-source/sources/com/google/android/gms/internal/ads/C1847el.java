package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.el */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/el.class */
public final class C1847el extends zzavo {

    /* renamed from: a */
    private final /* synthetic */ zzave f8426a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1847el(zzave zzaveVar) {
        this.f8426a = zzaveVar;
    }

    @Override // com.google.android.gms.internal.ads.zzavo
    public final void zztu() {
        Context context;
        zzazb zzazbVar;
        Object obj;
        zzzu zzzuVar;
        context = this.f8426a.f11403f;
        zzazbVar = this.f8426a.f11404g;
        zzzr zzzrVar = new zzzr(context, zzazbVar.zzbma);
        obj = this.f8426a.f11398a;
        synchronized (obj) {
            try {
                zzq.zzkz();
                zzzuVar = this.f8426a.f11405h;
                zzzw.zza(zzzuVar, zzzrVar);
            } catch (IllegalArgumentException e) {
                zzavs.zzd("Cannot config CSI reporter.", e);
            }
        }
    }
}

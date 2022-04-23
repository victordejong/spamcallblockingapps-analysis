package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzj.class */
public final class zzj implements zzaa {

    /* renamed from: a */
    private final Executor f14950a;

    public zzj(Handler handler) {
        this.f14950a = new amt(handler);
    }

    @Override // com.google.android.gms.internal.ads.zzaa
    public final void zza(zzq<?> zzqVar, zzae zzaeVar) {
        zzqVar.zzb("post-error");
        this.f14950a.execute(new aod(zzqVar, zzz.zzd(zzaeVar), null));
    }

    @Override // com.google.android.gms.internal.ads.zzaa
    public final void zza(zzq<?> zzqVar, zzz<?> zzzVar, Runnable runnable) {
        zzqVar.zzj();
        zzqVar.zzb("post-response");
        this.f14950a.execute(new aod(zzqVar, zzzVar, runnable));
    }

    @Override // com.google.android.gms.internal.ads.zzaa
    public final void zzb(zzq<?> zzqVar, zzz<?> zzzVar) {
        zza(zzqVar, zzzVar, null);
    }
}

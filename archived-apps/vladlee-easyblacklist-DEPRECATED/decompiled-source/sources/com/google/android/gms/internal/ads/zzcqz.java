package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqz.class */
public final class zzcqz implements zzcub<zzcqw> {

    /* renamed from: a */
    private final Context f13763a;

    /* renamed from: b */
    private final ScheduledExecutorService f13764b;

    /* renamed from: c */
    private final Executor f13765c;

    public zzcqz(Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f13763a = context;
        this.f13764b = scheduledExecutorService;
        this.f13765c = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcqw> zzanc() {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcqj)).booleanValue()) {
            return zzdgs.zzaj(null);
        }
        final zzazl zzazlVar = new zzazl();
        try {
            new zzddw(zzazlVar) { // from class: com.google.android.gms.internal.ads.vv

                /* renamed from: a */
                private final zzazl f10636a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10636a = zzazlVar;
                }

                @Override // com.google.android.gms.internal.ads.zzddw
                public final void zzbk(boolean z) {
                    this.f10636a.set(Boolean.FALSE);
                }
            }.zzbk(false);
        } catch (Throwable th) {
            zzavs.zzex("ArCoreApk is not ready.");
            zzazlVar.set(Boolean.FALSE);
        }
        return zzdgs.zzb(zzdgs.zzb(zzdgs.zza(zzazlVar, 200L, TimeUnit.MILLISECONDS, this.f13764b), new zzded(this) { // from class: com.google.android.gms.internal.ads.vy

            /* renamed from: a */
            private final zzcqz f10638a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10638a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                return new zzcqw(false, false, ((Boolean) obj).booleanValue());
            }
        }, this.f13765c), Throwable.class, C2318vx.f10637a, this.f13765c);
    }
}

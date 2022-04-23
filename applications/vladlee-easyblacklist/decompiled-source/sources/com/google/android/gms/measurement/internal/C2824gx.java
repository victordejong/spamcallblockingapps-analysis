package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.internal.measurement.zzks;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gx.class */
public final class C2824gx {

    /* renamed from: a */
    final /* synthetic */ zzjo f16989a;

    /* renamed from: b */
    private RunnableC2830hc f16990b;

    /* renamed from: c */
    private final Runnable f16991c = new Runnable(this) { // from class: com.google.android.gms.measurement.internal.ha

        /* renamed from: a */
        private final C2824gx f17006a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f17006a = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C2824gx gxVar = this.f17006a;
            gxVar.f16989a.zzq().zza(new Runnable(gxVar) { // from class: com.google.android.gms.measurement.internal.gz

                /* renamed from: a */
                private final C2824gx f16994a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16994a = gxVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C2824gx gxVar2 = this.f16994a;
                    gxVar2.f16989a.zzd();
                    gxVar2.f16989a.zzr().zzw().zza("Application backgrounded");
                    gxVar2.f16989a.zzf().m1784a("auto", "_ab", new Bundle());
                }
            });
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2824gx(zzjo zzjoVar) {
        this.f16989a = zzjoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2043a() {
        Handler handler;
        Handler handler2;
        this.f16989a.zzd();
        if (!this.f16989a.zzt().zza(zzap.zzcd)) {
            return;
        }
        if (!zzks.zzb() || !this.f16989a.zzt().zze(this.f16989a.zzg().m1882e(), zzap.zzcq)) {
            handler = this.f16989a.f17269c;
            handler.removeCallbacks(this.f16991c);
        } else if (this.f16990b != null) {
            handler2 = this.f16989a.f17269c;
            handler2.removeCallbacks(this.f16990b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m2042b() {
        Handler handler;
        Handler handler2;
        if (!this.f16989a.zzt().zza(zzap.zzcd)) {
            return;
        }
        if (!zzks.zzb() || !this.f16989a.zzt().zze(this.f16989a.zzg().m1882e(), zzap.zzcq)) {
            handler = this.f16989a.f17269c;
            handler.postDelayed(this.f16991c, 2000L);
            return;
        }
        this.f16990b = new RunnableC2830hc(this, this.f16989a.zzm().currentTimeMillis());
        handler2 = this.f16989a.f17269c;
        handler2.postDelayed(this.f16990b, 2000L);
    }
}

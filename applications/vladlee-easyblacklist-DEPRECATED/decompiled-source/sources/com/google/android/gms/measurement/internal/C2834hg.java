package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzkt;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hg.class */
public final class C2834hg {

    /* renamed from: a */
    final /* synthetic */ zzjo f17017a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2834hg(zzjo zzjoVar) {
        this.f17017a = zzjoVar;
    }

    /* renamed from: b */
    private final void m2027b(long j, boolean z) {
        this.f17017a.zzd();
        if (zzkt.zzb() && this.f17017a.zzt().zza(zzap.zzaw)) {
            if (this.f17017a.f16804x.zzab()) {
                this.f17017a.zzs().f16693q.zza(j);
            } else {
                return;
            }
        }
        this.f17017a.zzr().zzx().zza("Session started, time", Long.valueOf(this.f17017a.zzm().elapsedRealtime()));
        Long l = null;
        if (this.f17017a.zzt().zza(zzap.zzap)) {
            l = Long.valueOf(j / 1000);
        }
        this.f17017a.zzf().m1783a("auto", "_sid", l, j);
        this.f17017a.zzs().f16689m.zza(false);
        Bundle bundle = new Bundle();
        if (this.f17017a.zzt().zza(zzap.zzap)) {
            bundle.putLong("_sid", l.longValue());
        }
        if (this.f17017a.zzt().zza(zzap.zzce) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.f17017a.zzf().m1787a("auto", "_s", j, bundle);
        if (zzkb.zzb() && this.f17017a.zzt().zza(zzap.zzcl)) {
            String zza = this.f17017a.zzs().f16699w.zza();
            if (!TextUtils.isEmpty(zza)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", zza);
                this.f17017a.zzf().m1787a("auto", "_ssr", j, bundle2);
            }
        }
        if (!zzkt.zzb() || !this.f17017a.zzt().zza(zzap.zzaw)) {
            this.f17017a.zzs().f16693q.zza(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2029a() {
        if (zzkt.zzb() && this.f17017a.zzt().zza(zzap.zzaw)) {
            this.f17017a.zzd();
            if (this.f17017a.zzs().m2141a(this.f17017a.zzm().currentTimeMillis())) {
                this.f17017a.zzs().f16689m.zza(true);
                if (Build.VERSION.SDK_INT >= 16) {
                    ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                    ActivityManager.getMyMemoryState(runningAppProcessInfo);
                    if (runningAppProcessInfo.importance == 100) {
                        this.f17017a.zzr().zzx().zza("Detected application was in foreground");
                        m2027b(this.f17017a.zzm().currentTimeMillis(), false);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2028a(long j, boolean z) {
        this.f17017a.zzd();
        this.f17017a.m1732f();
        if (this.f17017a.zzs().m2141a(j)) {
            this.f17017a.zzs().f16689m.zza(true);
            this.f17017a.zzs().f16694r.zza(0L);
        }
        if (z && this.f17017a.zzt().zza(zzap.zzar)) {
            this.f17017a.zzs().f16693q.zza(j);
        }
        if (this.f17017a.zzs().f16689m.zza()) {
            m2027b(j, z);
        }
    }
}

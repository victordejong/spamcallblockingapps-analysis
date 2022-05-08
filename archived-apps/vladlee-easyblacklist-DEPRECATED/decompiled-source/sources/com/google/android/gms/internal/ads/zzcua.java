package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcua.class */
public final class zzcua<T> {

    /* renamed from: a */
    private final Set<zzcub<? extends zzcty<T>>> f13889a;

    /* renamed from: b */
    private final Executor f13890b;

    public zzcua(Executor executor, Set<zzcub<? extends zzcty<T>>> set) {
        this.f13890b = executor;
        this.f13889a = set;
    }

    public final zzdhe<T> zzs(final T t) {
        final ArrayList arrayList = new ArrayList(this.f13889a.size());
        for (final zzcub<? extends zzcty<T>> zzcubVar : this.f13889a) {
            zzdhe<? extends zzcty<T>> zzanc = zzcubVar.zzanc();
            if (zzabc.zzctx.get().booleanValue()) {
                final long elapsedRealtime = zzq.zzkx().elapsedRealtime();
                zzanc.addListener(new Runnable(zzcubVar, elapsedRealtime) { // from class: com.google.android.gms.internal.ads.xb

                    /* renamed from: a */
                    private final zzcub f10678a;

                    /* renamed from: b */
                    private final long f10679b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10678a = zzcubVar;
                        this.f10679b = elapsedRealtime;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcub zzcubVar2 = this.f10678a;
                        long j = this.f10679b;
                        String canonicalName = zzcubVar2.getClass().getCanonicalName();
                        long elapsedRealtime2 = zzq.zzkx().elapsedRealtime();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(elapsedRealtime2 - j);
                        zzavs.zzed(sb.toString());
                    }
                }, zzazd.zzdwj);
            }
            arrayList.add(zzanc);
        }
        return zzdgs.zzi(arrayList).zza(new Callable(arrayList, t) { // from class: com.google.android.gms.internal.ads.xa

            /* renamed from: a */
            private final List f10676a;

            /* renamed from: b */
            private final Object f10677b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10676a = arrayList;
                this.f10677b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzdhe> list = this.f10676a;
                Object obj = this.f10677b;
                for (zzdhe zzdheVar : list) {
                    zzcty zzctyVar = (zzcty) zzdheVar.get();
                    if (zzctyVar != null) {
                        zzctyVar.zzr(obj);
                    }
                }
                return obj;
            }
        }, this.f13890b);
    }
}

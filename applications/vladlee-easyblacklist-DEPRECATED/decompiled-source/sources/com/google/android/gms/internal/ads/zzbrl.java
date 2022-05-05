package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrl.class */
public class zzbrl<ListenerT> {

    /* renamed from: a */
    private final Map<ListenerT, Executor> f12274a = new HashMap();

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbrl(Set<zzbsu<ListenerT>> set) {
        m3994a(set);
    }

    /* renamed from: a */
    private final void m3994a(Set<zzbsu<ListenerT>> set) {
        synchronized (this) {
            for (zzbsu<ListenerT> zzbsuVar : set) {
                zza(zzbsuVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m3995a(final zzbrn<ListenerT> zzbrnVar) {
        synchronized (this) {
            for (Map.Entry<ListenerT, Executor> entry : this.f12274a.entrySet()) {
                final ListenerT key = entry.getKey();
                entry.getValue().execute(new Runnable(zzbrnVar, key) { // from class: com.google.android.gms.internal.ads.mw

                    /* renamed from: a */
                    private final zzbrn f10224a;

                    /* renamed from: b */
                    private final Object f10225b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10224a = zzbrnVar;
                        this.f10225b = key;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            this.f10224a.zzp(this.f10225b);
                        } catch (Throwable th) {
                            zzq.zzku().zzb(th, "EventEmitter.notify");
                            zzavs.zza("Event emitter exception.", th);
                        }
                    }
                });
            }
        }
    }

    public final void zza(zzbsu<ListenerT> zzbsuVar) {
        synchronized (this) {
            zza(zzbsuVar.zzfir, zzbsuVar.executor);
        }
    }

    public final void zza(ListenerT listenert, Executor executor) {
        synchronized (this) {
            this.f12274a.put(listenert, executor);
        }
    }
}

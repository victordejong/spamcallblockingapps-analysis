package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzu.class */
public final class zzu {

    /* renamed from: a */
    private final AtomicInteger f15544a;

    /* renamed from: b */
    private final Set<zzq<?>> f15545b;

    /* renamed from: c */
    private final PriorityBlockingQueue<zzq<?>> f15546c;

    /* renamed from: d */
    private final PriorityBlockingQueue<zzq<?>> f15547d;

    /* renamed from: e */
    private final zza f15548e;

    /* renamed from: f */
    private final zzn f15549f;

    /* renamed from: g */
    private final zzaa f15550g;

    /* renamed from: h */
    private final zzm[] f15551h;

    /* renamed from: i */
    private zzc f15552i;

    /* renamed from: j */
    private final List<zzw> f15553j;

    /* renamed from: k */
    private final List<zzx> f15554k;

    public zzu(zza zzaVar, zzn zznVar) {
        this(zzaVar, zznVar, (byte) 0);
    }

    private zzu(zza zzaVar, zzn zznVar, byte b) {
        this(zzaVar, zznVar, new zzj(new Handler(Looper.getMainLooper())));
    }

    private zzu(zza zzaVar, zzn zznVar, zzaa zzaaVar) {
        this.f15544a = new AtomicInteger();
        this.f15545b = new HashSet();
        this.f15546c = new PriorityBlockingQueue<>();
        this.f15547d = new PriorityBlockingQueue<>();
        this.f15553j = new ArrayList();
        this.f15554k = new ArrayList();
        this.f15548e = zzaVar;
        this.f15549f = zznVar;
        this.f15551h = new zzm[4];
        this.f15550g = zzaaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final <T> void m3005a(zzq<T> zzqVar) {
        synchronized (this.f15545b) {
            this.f15545b.remove(zzqVar);
        }
        synchronized (this.f15553j) {
            for (zzw zzwVar : this.f15553j) {
                zzwVar.zzg(zzqVar);
            }
        }
        m3004a(zzqVar, 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3004a(zzq<?> zzqVar, int i) {
        synchronized (this.f15554k) {
            for (zzx zzxVar : this.f15554k) {
                zzxVar.zzb(zzqVar, i);
            }
        }
    }

    public final void start() {
        zzm[] zzmVarArr;
        zzc zzcVar = this.f15552i;
        if (zzcVar != null) {
            zzcVar.quit();
        }
        for (zzm zzmVar : this.f15551h) {
            if (zzmVar != null) {
                zzmVar.quit();
            }
        }
        this.f15552i = new zzc(this.f15546c, this.f15547d, this.f15548e, this.f15550g);
        this.f15552i.start();
        for (int i = 0; i < this.f15551h.length; i++) {
            zzm zzmVar2 = new zzm(this.f15547d, this.f15549f, this.f15548e, this.f15550g);
            this.f15551h[i] = zzmVar2;
            zzmVar2.start();
        }
    }

    public final <T> zzq<T> zze(zzq<T> zzqVar) {
        zzqVar.zza(this);
        synchronized (this.f15545b) {
            this.f15545b.add(zzqVar);
        }
        zzqVar.zzb(this.f15544a.incrementAndGet());
        zzqVar.zzb("add-to-queue");
        m3004a(zzqVar, 0);
        (!zzqVar.zzg() ? this.f15547d : this.f15546c).add(zzqVar);
        return zzqVar;
    }
}

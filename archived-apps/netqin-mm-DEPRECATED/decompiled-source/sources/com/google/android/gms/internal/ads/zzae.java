package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzae.class */
public final class zzae {

    /* renamed from: a */
    public final AtomicInteger f24049a;

    /* renamed from: b */
    public final Set<zzaa<?>> f24050b;

    /* renamed from: c */
    public final PriorityBlockingQueue<zzaa<?>> f24051c;

    /* renamed from: d */
    public final PriorityBlockingQueue<zzaa<?>> f24052d;

    /* renamed from: e */
    public final zzk f24053e;

    /* renamed from: f */
    public final zzx f24054f;

    /* renamed from: g */
    public final zzak f24055g;

    /* renamed from: h */
    public final zzw[] f24056h;

    /* renamed from: i */
    public zzm f24057i;

    /* renamed from: j */
    public final List<zzag> f24058j;

    /* renamed from: k */
    public final List<zzah> f24059k;

    public zzae(zzk zzkVar, zzx zzxVar) {
        this(zzkVar, zzxVar, 4);
    }

    public zzae(zzk zzkVar, zzx zzxVar, int i) {
        this(zzkVar, zzxVar, 4, new zzt(new Handler(Looper.getMainLooper())));
    }

    public zzae(zzk zzkVar, zzx zzxVar, int i, zzak zzakVar) {
        this.f24049a = new AtomicInteger();
        this.f24050b = new HashSet();
        this.f24051c = new PriorityBlockingQueue<>();
        this.f24052d = new PriorityBlockingQueue<>();
        this.f24058j = new ArrayList();
        this.f24059k = new ArrayList();
        this.f24053e = zzkVar;
        this.f24054f = zzxVar;
        this.f24056h = new zzw[4];
        this.f24055g = zzakVar;
    }

    /* renamed from: a */
    public final <T> zzaa<T> m16838a(zzaa<T> zzaaVar) {
        zzaaVar.m16968a(this);
        synchronized (this.f24050b) {
            this.f24050b.add(zzaaVar);
        }
        zzaaVar.m16962b(this.f24049a.incrementAndGet());
        zzaaVar.m16964a("add-to-queue");
        m16837a(zzaaVar, 0);
        if (!zzaaVar.m16955h()) {
            this.f24052d.add(zzaaVar);
            return zzaaVar;
        }
        this.f24051c.add(zzaaVar);
        return zzaaVar;
    }

    /* renamed from: a */
    public final void m16839a() {
        zzw[] zzwVarArr;
        zzm zzmVar = this.f24057i;
        if (zzmVar != null) {
            zzmVar.m11810b();
        }
        for (zzw zzwVar : this.f24056h) {
            if (zzwVar != null) {
                zzwVar.m11171b();
            }
        }
        zzm zzmVar2 = new zzm(this.f24051c, this.f24052d, this.f24053e, this.f24055g);
        this.f24057i = zzmVar2;
        zzmVar2.start();
        for (int i = 0; i < this.f24056h.length; i++) {
            zzw zzwVar2 = new zzw(this.f24052d, this.f24054f, this.f24053e, this.f24055g);
            this.f24056h[i] = zzwVar2;
            zzwVar2.start();
        }
    }

    /* renamed from: a */
    public final void m16837a(zzaa<?> zzaaVar, int i) {
        synchronized (this.f24059k) {
            try {
                for (zzah zzahVar : this.f24059k) {
                    zzahVar.m16760a(zzaaVar, i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final <T> void m16836b(zzaa<T> zzaaVar) {
        synchronized (this.f24050b) {
            try {
                this.f24050b.remove(zzaaVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f24058j) {
            for (zzag zzagVar : this.f24058j) {
                zzagVar.m16796a(zzaaVar);
            }
        }
        m16837a(zzaaVar, 5);
    }
}

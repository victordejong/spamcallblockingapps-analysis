package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoz.class */
public final class zzdoz<T> {

    /* renamed from: a */
    public final Deque<zzdzc<T>> f27679a = new LinkedBlockingDeque();

    /* renamed from: b */
    public final Callable<T> f27680b;

    /* renamed from: c */
    public final zzdzb f27681c;

    public zzdoz(Callable<T> callable, zzdzb zzdzbVar) {
        this.f27680b = callable;
        this.f27681c = zzdzbVar;
    }

    /* renamed from: a */
    public final zzdzc<T> m13385a() {
        zzdzc<T> poll;
        synchronized (this) {
            m13384a(1);
            poll = this.f27679a.poll();
        }
        return poll;
    }

    /* renamed from: a */
    public final void m13384a(int i) {
        synchronized (this) {
            int size = this.f27679a.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.f27679a.add(this.f27681c.mo12977a(this.f27680b));
            }
        }
    }

    /* renamed from: a */
    public final void m13383a(zzdzc<T> zzdzcVar) {
        synchronized (this) {
            this.f27679a.addFirst(zzdzcVar);
        }
    }
}

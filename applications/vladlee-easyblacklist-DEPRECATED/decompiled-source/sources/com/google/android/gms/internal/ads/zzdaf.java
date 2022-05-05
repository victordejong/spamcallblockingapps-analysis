package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdaf.class */
public final class zzdaf<T> {

    /* renamed from: a */
    private final Deque<zzdhe<T>> f14107a = new LinkedBlockingDeque();

    /* renamed from: b */
    private final Callable<T> f14108b;

    /* renamed from: c */
    private final zzdhd f14109c;

    public zzdaf(Callable<T> callable, zzdhd zzdhdVar) {
        this.f14108b = callable;
        this.f14109c = zzdhdVar;
    }

    public final zzdhe<T> zzaou() {
        zzdhe<T> poll;
        synchronized (this) {
            zzdm(1);
            poll = this.f14107a.poll();
        }
        return poll;
    }

    public final void zzb(zzdhe<T> zzdheVar) {
        synchronized (this) {
            this.f14107a.addFirst(zzdheVar);
        }
    }

    public final void zzdm(int i) {
        synchronized (this) {
            int size = this.f14107a.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.f14107a.add(this.f14109c.zzd(this.f14108b));
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agx.class */
final class agx {

    /* renamed from: a */
    private final ConcurrentHashMap<agw, List<Throwable>> f7342a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f7343b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m5428a(Throwable th, boolean z) {
        while (true) {
            Reference<? extends Throwable> poll = this.f7343b.poll();
            if (poll == null) {
                break;
            }
            this.f7342a.remove(poll);
        }
        List<Throwable> list = this.f7342a.get(new agw(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.f7342a.putIfAbsent(new agw(th, this.f7343b), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}

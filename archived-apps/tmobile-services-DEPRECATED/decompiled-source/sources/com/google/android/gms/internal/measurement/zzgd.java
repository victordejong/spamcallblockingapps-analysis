package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgd.class */
final class zzgd {

    /* renamed from: a */
    private final ConcurrentHashMap<zzgc, List<Throwable>> f8447a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f8448b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m12664a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f8448b.poll();
        while (poll != null) {
            this.f8447a.remove(poll);
            poll = this.f8448b.poll();
        }
        List<Throwable> list = this.f8447a.get(new zzgc(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f8447a.putIfAbsent(new zzgc(th, this.f8448b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

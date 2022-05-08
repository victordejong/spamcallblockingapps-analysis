package com.google.android.gms.internal.icing;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzch.class */
final class zzch {

    /* renamed from: a */
    private final ConcurrentHashMap<zzck, List<Throwable>> f7946a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f7947b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m13988a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f7947b.poll();
        while (poll != null) {
            this.f7946a.remove(poll);
            poll = this.f7947b.poll();
        }
        List<Throwable> list = this.f7946a.get(new zzck(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f7946a.putIfAbsent(new zzck(th, this.f7947b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

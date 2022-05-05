package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.bm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bm.class */
final class C2504bm {

    /* renamed from: a */
    private final ConcurrentHashMap<C2503bl, List<Throwable>> f15888a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f15889b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m2917a(Throwable th) {
        while (true) {
            Reference<? extends Throwable> poll = this.f15889b.poll();
            if (poll == null) {
                break;
            }
            this.f15888a.remove(poll);
        }
        List<Throwable> list = this.f15888a.get(new C2503bl(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f15888a.putIfAbsent(new C2503bl(th, this.f15889b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

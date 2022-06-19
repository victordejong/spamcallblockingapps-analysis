package com.google.android.gms.internal.measurement;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.p4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/p4.class */
final class C1368p4 {

    /* renamed from: a */
    private final ConcurrentHashMap<C1363o4, List<Throwable>> f3948a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f3949b = new ReferenceQueue<>();

    C1368p4() {
    }

    /* renamed from: a */
    public final List<Throwable> m2009a(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.f3949b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f3948a.remove(poll);
            referenceQueue = this.f3949b;
        }
        List<Throwable> list = this.f3948a.get(new C1363o4(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f3948a.putIfAbsent(new C1363o4(th, this.f3949b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

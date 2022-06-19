package com.google.android.gms.internal.firebase_auth_api;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.pd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/pd.class */
final class C1176pd {

    /* renamed from: a */
    private final ConcurrentHashMap<C1164od, List<Throwable>> f3772a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f3773b = new ReferenceQueue<>();

    C1176pd() {
    }

    /* renamed from: a */
    public final List<Throwable> m2620a(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.f3773b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f3772a.remove(poll);
            referenceQueue = this.f3773b;
        }
        List<Throwable> list = this.f3772a.get(new C1164od(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f3772a.putIfAbsent(new C1164od(th, this.f3773b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

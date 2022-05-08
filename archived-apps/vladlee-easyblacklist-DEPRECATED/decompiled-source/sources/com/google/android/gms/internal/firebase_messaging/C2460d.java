package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.firebase_messaging.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/d.class */
final class C2460d {

    /* renamed from: a */
    private final ConcurrentHashMap<C2459c, List<Throwable>> f15820a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f15821b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m2926a(Throwable th) {
        while (true) {
            Reference<? extends Throwable> poll = this.f15821b.poll();
            if (poll == null) {
                break;
            }
            this.f15820a.remove(poll);
        }
        List<Throwable> list = this.f15820a.get(new C2459c(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f15820a.putIfAbsent(new C2459c(th, this.f15821b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}

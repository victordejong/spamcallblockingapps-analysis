package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.dq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dq.class */
public final class C2562dq {

    /* renamed from: a */
    private static final C2562dq f16000a = new C2562dq();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, AbstractC2566du<?>> f16002c = new ConcurrentHashMap();

    /* renamed from: b */
    private final AbstractC2569dx f16001b = new C2544cz();

    private C2562dq() {
    }

    /* renamed from: a */
    public static C2562dq m2749a() {
        return f16000a;
    }

    /* renamed from: a */
    public final <T> AbstractC2566du<T> m2748a(Class<T> cls) {
        zzff.m2269a(cls, "messageType");
        AbstractC2566du<?> duVar = this.f16002c.get(cls);
        AbstractC2566du<T> duVar2 = (AbstractC2566du<T>) duVar;
        if (duVar == null) {
            duVar2 = this.f16001b.mo2633a(cls);
            zzff.m2269a(cls, "messageType");
            zzff.m2269a(duVar2, "schema");
            AbstractC2566du<?> putIfAbsent = this.f16002c.putIfAbsent(cls, duVar2);
            if (putIfAbsent != null) {
                duVar2 = (AbstractC2566du<T>) putIfAbsent;
            }
        }
        return duVar2;
    }

    /* renamed from: a */
    public final <T> AbstractC2566du<T> m2747a(T t) {
        return m2748a((Class) t.getClass());
    }
}

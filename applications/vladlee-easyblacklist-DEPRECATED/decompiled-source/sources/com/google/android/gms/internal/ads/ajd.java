package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajd.class */
public final class ajd {

    /* renamed from: a */
    private static final ajd f7462a = new ajd();

    /* renamed from: c */
    private final ConcurrentMap<Class<?>, ajo<?>> f7464c = new ConcurrentHashMap();

    /* renamed from: b */
    private final ajn f7463b = new aim();

    private ajd() {
    }

    /* renamed from: a */
    public static ajd m5247a() {
        return f7462a;
    }

    /* renamed from: a */
    public final <T> ajo<T> m5246a(Class<T> cls) {
        zzdrv.m3349a(cls, "messageType");
        ajo<?> ajoVar = this.f7464c.get(cls);
        ajo<T> ajoVar2 = (ajo<T>) ajoVar;
        if (ajoVar == null) {
            ajoVar2 = this.f7463b.mo5185a(cls);
            zzdrv.m3349a(cls, "messageType");
            zzdrv.m3349a(ajoVar2, "schema");
            ajo<?> putIfAbsent = this.f7464c.putIfAbsent(cls, ajoVar2);
            if (putIfAbsent != null) {
                ajoVar2 = (ajo<T>) putIfAbsent;
            }
        }
        return ajoVar2;
    }

    /* renamed from: a */
    public final <T> ajo<T> m5245a(T t) {
        return m5246a((Class) t.getClass());
    }
}

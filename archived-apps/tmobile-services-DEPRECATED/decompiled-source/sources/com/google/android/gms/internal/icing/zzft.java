package com.google.android.gms.internal.icing;

import com.google.firebase.messaging.Constants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzft.class */
public final class zzft {

    /* renamed from: c */
    private static final zzft f8060c = new zzft();

    /* renamed from: b */
    private final ConcurrentMap<Class<?>, zzfu<?>> f8062b = new ConcurrentHashMap();

    /* renamed from: a */
    private final zzfx f8061a = new zzeu();

    private zzft() {
    }

    /* renamed from: a */
    public static zzft m13709a() {
        return f8060c;
    }

    /* renamed from: b */
    public final <T> zzfu<T> m13708b(Class<T> cls) {
        zzeb.m13802e(cls, Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE);
        zzfu<?> zzfuVar = this.f8062b.get(cls);
        zzfu<T> zzfuVar2 = (zzfu<T>) zzfuVar;
        if (zzfuVar == null) {
            zzfuVar2 = this.f8061a.mo13643a(cls);
            zzeb.m13802e(cls, Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE);
            zzeb.m13802e(zzfuVar2, "schema");
            zzfu<?> putIfAbsent = this.f8062b.putIfAbsent(cls, zzfuVar2);
            if (putIfAbsent != null) {
                zzfuVar2 = (zzfu<T>) putIfAbsent;
            }
        }
        return zzfuVar2;
    }

    /* renamed from: c */
    public final <T> zzfu<T> m13707c(T t) {
        return m13708b(t.getClass());
    }
}

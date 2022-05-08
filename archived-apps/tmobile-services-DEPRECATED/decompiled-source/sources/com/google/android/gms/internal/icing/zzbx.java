package com.google.android.gms.internal.icing;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbx.class */
public abstract class zzbx<T> implements Serializable {
    /* renamed from: c */
    public static <T> zzbx<T> m13997c(T t) {
        zzca.m13993a(t);
        return new zzbz(t);
    }

    /* renamed from: d */
    public static <T> zzbx<T> m13996d() {
        return zzbv.f7935f;
    }

    /* renamed from: a */
    public abstract T mo13995a();

    /* renamed from: b */
    public abstract boolean mo13994b();
}

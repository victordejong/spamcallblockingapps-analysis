package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsu.class */
public final class zzbsu<T> {
    public Executor executor;
    public T zzfir;

    public zzbsu(T t, Executor executor) {
        this.zzfir = t;
        this.executor = executor;
    }

    public static <T> zzbsu<T> zzb(T t, Executor executor) {
        return new zzbsu<>(t, executor);
    }
}

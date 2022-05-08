package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhe.class */
public interface zzdhe<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}

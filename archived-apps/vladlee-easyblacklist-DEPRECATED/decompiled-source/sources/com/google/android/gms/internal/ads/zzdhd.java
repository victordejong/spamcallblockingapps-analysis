package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhd.class */
public interface zzdhd extends ExecutorService {
    <T> zzdhe<T> zzd(Callable<T> callable);

    zzdhe<?> zzf(Runnable runnable);
}

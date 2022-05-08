package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhw.class */
public final class zzdhw {
    public static <V> V zza(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }
}

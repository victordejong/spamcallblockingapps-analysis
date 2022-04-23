package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfv.class */
public final class zzfv<T> {

    /* renamed from: a */
    private final Map<String, AtomicReference<T>> f14793a = new HashMap();

    public final AtomicReference<T> zzav(String str) {
        synchronized (this) {
            if (!this.f14793a.containsKey(str)) {
                this.f14793a.put(str, new AtomicReference<>());
            }
        }
        return this.f14793a.get(str);
    }
}

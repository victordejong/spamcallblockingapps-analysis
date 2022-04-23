package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznt.class */
public final class zznt {

    /* renamed from: a */
    private final Map<String, String> f15219a = new HashMap();

    /* renamed from: b */
    private Map<String, String> f15220b;

    public final Map<String, String> zzik() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f15220b == null) {
                this.f15220b = Collections.unmodifiableMap(new HashMap(this.f15219a));
            }
            map = this.f15220b;
        }
        return map;
    }
}

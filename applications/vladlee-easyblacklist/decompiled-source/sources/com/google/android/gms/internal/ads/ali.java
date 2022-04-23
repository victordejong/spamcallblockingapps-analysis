package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ali.class */
abstract class ali<K, V, V2> implements zzdxg<Map<K, V2>> {

    /* renamed from: a */
    private final Map<K, zzdxp<V>> f7564a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ali(Map<K, zzdxp<V>> map) {
        this.f7564a = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Map<K, zzdxp<V>> m4945a() {
        return this.f7564a;
    }
}

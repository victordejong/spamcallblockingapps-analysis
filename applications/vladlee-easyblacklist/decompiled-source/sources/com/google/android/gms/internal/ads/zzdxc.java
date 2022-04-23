package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxc.class */
public class zzdxc<K, V, V2> {

    /* renamed from: a */
    final LinkedHashMap<K, zzdxp<V>> f14709a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdxc(int i) {
        this.f14709a = zzdxb.zzhj(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public zzdxc<K, V, V2> zza(K k, zzdxp<V> zzdxpVar) {
        this.f14709a.put(zzdxm.zza(k, "key"), zzdxm.zza(zzdxpVar, "provider"));
        return this;
    }
}

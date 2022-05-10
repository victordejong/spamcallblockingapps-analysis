package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeou.class */
public class zzeou<K, V, V2> {

    /* renamed from: a */
    public final LinkedHashMap<K, zzeph<V>> f28137a;

    public zzeou(int i) {
        this.f28137a = zzeot.m12200c(i);
    }

    /* renamed from: a */
    public zzeou<K, V, V2> mo12191a(K k, zzeph<V> zzephVar) {
        LinkedHashMap<K, zzeph<V>> linkedHashMap = this.f28137a;
        zzepe.m12187a(k, "key");
        zzepe.m12187a(zzephVar, "provider");
        linkedHashMap.put(k, zzephVar);
        return this;
    }
}

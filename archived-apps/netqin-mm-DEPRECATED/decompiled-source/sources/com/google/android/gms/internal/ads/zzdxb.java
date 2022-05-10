package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxb.class */
public final class zzdxb<K, V> extends zzdws<Map.Entry<K, V>> {
    public final transient int size;
    public final transient Object[] zzhqz;
    public final transient zzdwt<K, V> zzhrd;
    public final transient int zzhre = 0;

    public zzdxb(zzdwt<K, V> zzdwtVar, Object[] objArr, int i, int i2) {
        this.zzhrd = zzdwtVar;
        this.zzhqz = objArr;
        this.size = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.zzhrd.get(key));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zza(Object[] objArr, int i) {
        return zzaxm().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    /* renamed from: zzaxi */
    public final zzdxg<Map.Entry<K, V>> iterator() {
        return (zzdxg) zzaxm().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final boolean zzaxn() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final zzdwp<Map.Entry<K, V>> zzaxq() {
        return new zzdxa(this);
    }
}

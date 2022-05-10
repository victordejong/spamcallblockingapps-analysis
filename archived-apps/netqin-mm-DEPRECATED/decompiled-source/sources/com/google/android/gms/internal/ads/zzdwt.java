package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.c10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwt.class */
public abstract class zzdwt<K, V> implements Serializable, Map<K, V> {
    public static final Map.Entry<?, ?>[] zzhqq = new Map.Entry[0];
    public transient zzdws<Map.Entry<K, V>> zzhqr;
    public transient zzdws<K> zzhqs;
    public transient zzdwk<V> zzhqt;

    public static <K, V> zzdwt<K, V> zza(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        c10.m27105a(k, v);
        c10.m27105a(k2, v2);
        c10.m27105a(k3, v3);
        c10.m27105a(k4, v4);
        c10.m27105a(k5, v5);
        return zzdwy.zzc(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    public static <K, V> zzdwt<K, V> zzc(K k, V v) {
        c10.m27105a(k, v);
        return zzdwy.zzc(1, new Object[]{k, v});
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return ((zzdwk) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzdws<Map.Entry<K, V>> zzdwsVar = this.zzhqr;
        zzdws<Map.Entry<K, V>> zzdwsVar2 = zzdwsVar;
        if (zzdwsVar == null) {
            zzdwsVar2 = zzaxr();
            this.zzhqr = zzdwsVar2;
        }
        return zzdwsVar2;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return zzdxe.m13074a((zzdws) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzdws<K> zzdwsVar = this.zzhqs;
        zzdws<K> zzdwsVar2 = zzdwsVar;
        if (zzdwsVar == null) {
            zzdwsVar2 = zzaxs();
            this.zzhqs = zzdwsVar2;
        }
        return zzdwsVar2;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        c10.m27106a(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size << 3, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        zzdwk<V> zzdwkVar = this.zzhqt;
        zzdwk<V> zzdwkVar2 = zzdwkVar;
        if (zzdwkVar == null) {
            zzdwkVar2 = zzaxt();
            this.zzhqt = zzdwkVar2;
        }
        return zzdwkVar2;
    }

    public abstract zzdws<Map.Entry<K, V>> zzaxr();

    public abstract zzdws<K> zzaxs();

    public abstract zzdwk<V> zzaxt();
}

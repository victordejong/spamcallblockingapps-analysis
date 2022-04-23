package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdey.class */
public abstract class zzdey<K, V> implements Serializable, Map<K, V> {

    /* renamed from: a */
    private static final Map.Entry<?, ?>[] f14252a = new Map.Entry[0];

    /* renamed from: b */
    private transient zzdfb<Map.Entry<K, V>> f14253b;

    /* renamed from: c */
    private transient zzdfb<K> f14254c;

    /* renamed from: d */
    private transient zzdet<V> f14255d;

    public static <K, V> zzdey<K, V> zza(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        abc.m5500a(k, v);
        abc.m5500a(k2, v2);
        abc.m5500a(k3, v3);
        abc.m5500a(k4, v4);
        abc.m5500a(k5, v5);
        return abm.m5493a(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    /* renamed from: a */
    abstract zzdfb<Map.Entry<K, V>> mo3590a();

    /* renamed from: b */
    abstract zzdfb<K> mo3589b();

    /* renamed from: c */
    abstract zzdet<V> mo3588c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return ((zzdet) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzdfb<Map.Entry<K, V>> zzdfbVar = this.f14253b;
        zzdfb<Map.Entry<K, V>> zzdfbVar2 = zzdfbVar;
        if (zzdfbVar == null) {
            zzdfbVar2 = mo3590a();
            this.f14253b = zzdfbVar2;
        }
        return zzdfbVar2;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return zzdfn.m3579a((zzdfb) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzdfb<K> zzdfbVar = this.f14254c;
        zzdfb<K> zzdfbVar2 = zzdfbVar;
        if (zzdfbVar == null) {
            zzdfbVar2 = mo3589b();
            this.f14254c = zzdfbVar2;
        }
        return zzdfbVar2;
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
        abc.m5501a(size, "size");
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
        zzdet<V> zzdetVar = this.f14255d;
        zzdet<V> zzdetVar2 = zzdetVar;
        if (zzdetVar == null) {
            zzdetVar2 = mo3588c();
            this.f14255d = zzdetVar2;
        }
        return zzdetVar2;
    }
}

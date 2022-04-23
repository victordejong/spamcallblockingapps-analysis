package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsy.class */
public final class zzdsy<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    private static final zzdsy f14582b;

    /* renamed from: a */
    private boolean f14583a = true;

    static {
        zzdsy zzdsyVar = new zzdsy();
        f14582b = zzdsyVar;
        zzdsyVar.f14583a = false;
    }

    private zzdsy() {
    }

    private zzdsy(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    private static int m3333a(Object obj) {
        if (obj instanceof byte[]) {
            return zzdrv.hashCode((byte[]) obj);
        }
        if (!(obj instanceof zzdry)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    private final void m3334a() {
        if (!this.f14583a) {
            throw new UnsupportedOperationException();
        }
    }

    public static <K, V> zzdsy<K, V> zzbba() {
        return f14582b;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m3334a();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof java.util.Map
            if (r0 == 0) goto L_0x00ab
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto L_0x00a3
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0025
        L_0x0020:
            r0 = 0
            r6 = r0
            goto L_0x00a5
        L_0x0025:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x0031:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00a3
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0058
            goto L_0x0020
        L_0x0058:
            r0 = r7
            java.lang.Object r0 = r0.getValue()
            r8 = r0
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r7 = r0
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r7
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r8
            byte[] r0 = (byte[]) r0
            r1 = r7
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L_0x009b
        L_0x0092:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            r9 = r0
        L_0x009b:
            r0 = r9
            if (r0 != 0) goto L_0x0031
            goto L_0x0020
        L_0x00a3:
            r0 = 1
            r6 = r0
        L_0x00a5:
            r0 = r6
            if (r0 == 0) goto L_0x00ab
            r0 = 1
            return r0
        L_0x00ab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsy.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m3333a(entry.getValue()) ^ m3333a(entry.getKey());
        }
        return i;
    }

    public final boolean isMutable() {
        return this.f14583a;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m3334a();
        zzdrv.m3351a(k);
        zzdrv.m3351a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m3334a();
        for (Object obj : map.keySet()) {
            zzdrv.m3351a(obj);
            zzdrv.m3351a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m3334a();
        return (V) super.remove(obj);
    }

    public final void zza(zzdsy<K, V> zzdsyVar) {
        m3334a();
        if (!zzdsyVar.isEmpty()) {
            putAll(zzdsyVar);
        }
    }

    public final void zzaxq() {
        this.f14583a = false;
    }

    public final zzdsy<K, V> zzbbb() {
        return isEmpty() ? new zzdsy<>() : new zzdsy<>(this);
    }
}

package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aih.class */
final class aih<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    private Map.Entry<K, zzdsf> f7418a;

    private aih(Map.Entry<K, zzdsf> entry) {
        this.f7418a = entry;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ aih(Map.Entry entry, byte b) {
        this(entry);
    }

    /* renamed from: a */
    public final zzdsf m5324a() {
        return this.f7418a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f7418a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f7418a.getValue() == null) {
            return null;
        }
        return zzdsf.zzbas();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzdte) {
            return this.f7418a.getValue().zzn((zzdte) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}

package com.google.android.gms.internal.icing;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzek.class */
final class zzek<K> implements Map.Entry<K, Object> {

    /* renamed from: f */
    private Map.Entry<K, zzei> f8015f;

    private zzek(Map.Entry<K, zzei> entry) {
        this.f8015f = entry;
    }

    /* renamed from: a */
    public final zzei m13791a() {
        return this.f8015f.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f8015f.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f8015f.getValue() == null) {
            return null;
        }
        zzei.m13792e();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzfh) {
            return this.f8015f.getValue().m13787d((zzfh) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}

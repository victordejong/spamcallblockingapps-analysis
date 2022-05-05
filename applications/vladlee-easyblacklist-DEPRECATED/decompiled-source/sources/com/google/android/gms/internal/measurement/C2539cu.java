package com.google.android.gms.internal.measurement;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.cu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cu.class */
final class C2539cu<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    private Map.Entry<K, zzfp> f15955a;

    private C2539cu(Map.Entry<K, zzfp> entry) {
        this.f15955a = entry;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2539cu(Map.Entry entry, byte b) {
        this(entry);
    }

    /* renamed from: a */
    public final zzfp m2824a() {
        return this.f15955a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f15955a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f15955a.getValue() == null) {
            return null;
        }
        return zzfp.zza();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzgo) {
            return this.f15955a.getValue().zza((zzgo) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}

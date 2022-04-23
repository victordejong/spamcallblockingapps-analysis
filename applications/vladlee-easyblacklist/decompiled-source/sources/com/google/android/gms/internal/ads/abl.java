package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abl.class */
final class abl<K, V> extends zzdfb<Map.Entry<K, V>> {

    /* renamed from: a */
    private final transient zzdey<K, V> f7166a;

    /* renamed from: b */
    private final transient Object[] f7167b;

    /* renamed from: c */
    private final transient int f7168c = 0;

    /* renamed from: d */
    private final transient int f7169d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abl(zzdey<K, V> zzdeyVar, Object[] objArr, int i) {
        this.f7166a = zzdeyVar;
        this.f7167b = objArr;
        this.f7169d = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public final int mo3592a(Object[] objArr, int i) {
        return zzarb().mo3592a(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.f7166a.get(key));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: d */
    public final boolean mo3594d() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdfb
    /* renamed from: f */
    final zzdeu<Map.Entry<K, V>> mo3581f() {
        return new abo(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdfb, com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f7169d;
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public final zzdfp<Map.Entry<K, V>> zzaqx() {
        return (zzdfp) zzarb().iterator();
    }
}

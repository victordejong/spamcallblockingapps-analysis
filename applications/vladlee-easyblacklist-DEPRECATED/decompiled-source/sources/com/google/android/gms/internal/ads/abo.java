package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abo.class */
final class abo extends zzdeu<Map.Entry<K, V>> {

    /* renamed from: a */
    private final /* synthetic */ abl f7176a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abo(abl ablVar) {
        this.f7176a = ablVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: d */
    public final boolean mo3594d() {
        return true;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.f7176a.f7169d;
        zzdei.zzs(i, i2);
        objArr = this.f7176a.f7167b;
        int i3 = i * 2;
        Object obj = objArr[i3];
        objArr2 = this.f7176a.f7167b;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.f7176a.f7169d;
        return i;
    }
}

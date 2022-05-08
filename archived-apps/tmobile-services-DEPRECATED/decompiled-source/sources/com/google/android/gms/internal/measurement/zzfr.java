package com.google.android.gms.internal.measurement;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfr.class */
final class zzfr extends zzfb<Map.Entry<K, V>> {

    /* renamed from: h */
    private final /* synthetic */ zzfo f8433h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfr(zzfo zzfoVar) {
        this.f8433h = zzfoVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.f8433h.f8426j;
        zzeb.m12742a(i, i2);
        objArr = this.f8433h.f8425i;
        int i3 = i * 2;
        Object obj = objArr[i3];
        objArr2 = this.f8433h.f8425i;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.f8433h.f8426j;
        return i;
    }
}

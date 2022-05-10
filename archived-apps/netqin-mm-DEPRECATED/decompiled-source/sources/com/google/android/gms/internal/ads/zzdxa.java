package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxa.class */
public final class zzdxa extends zzdwp<Map.Entry<K, V>> {
    public final /* synthetic */ zzdxb zzhrc;

    public zzdxa(zzdxb zzdxbVar) {
        this.zzhrc = zzdxbVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zzhrc.size;
        zzdwd.m13099a(i, i2);
        objArr = this.zzhrc.zzhqz;
        int i3 = i * 2;
        zzdxb zzdxbVar = this.zzhrc;
        Object obj = objArr[i3];
        objArr2 = zzdxbVar.zzhqz;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zzhrc.size;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final boolean zzaxn() {
        return true;
    }
}

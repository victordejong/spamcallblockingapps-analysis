package com.google.android.gms.internal.measurement;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfo.class */
public final class zzfo<K, V> extends zzfg<Map.Entry<K, V>> {
    public final transient zzfc<K, V> zza;
    public final transient Object[] zzb;
    public final transient int zzc = 0;
    public final transient int zzd;

    public zzfo(zzfc<K, V> zzfcVar, Object[] objArr, int i, int i2) {
        this.zza = zzfcVar;
        this.zzb = objArr;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.zza.get(key));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zza(Object[] objArr, int i) {
        return zze().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: zza */
    public final zzfx<Map.Entry<K, V>> iterator() {
        return (zzfx) zze().iterator();
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    public final zzfb<Map.Entry<K, V>> zzh() {
        return new zzfr(this);
    }
}

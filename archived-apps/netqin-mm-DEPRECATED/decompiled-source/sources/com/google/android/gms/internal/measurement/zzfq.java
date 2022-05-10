package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfq.class */
public final class zzfq<K> extends zzfg<K> {
    public final transient zzfc<K, ?> zza;
    public final transient zzfb<K> zzb;

    public zzfq(zzfc<K, ?> zzfcVar, zzfb<K> zzfbVar) {
        this.zza = zzfcVar;
        this.zzb = zzfbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zza(Object[] objArr, int i) {
        return zze().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: zza */
    public final zzfx<K> iterator() {
        return (zzfx) zze().iterator();
    }

    @Override // com.google.android.gms.internal.measurement.zzfg, com.google.android.gms.internal.measurement.zzey
    public final zzfb<K> zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return true;
    }
}

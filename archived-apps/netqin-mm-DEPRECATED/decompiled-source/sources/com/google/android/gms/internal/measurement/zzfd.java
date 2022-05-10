package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd.class */
public final class zzfd extends zzfb<E> {
    public final transient int zza;
    public final transient int zzb;
    public final /* synthetic */ zzfb zzc;

    public zzfd(zzfb zzfbVar, int i, int i2) {
        this.zzc = zzfbVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzeb.m9818a(i, this.zzb);
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzfb
    /* renamed from: zza */
    public final zzfb<E> subList(int i, int i2) {
        zzeb.m9817a(i, i2, this.zzb);
        zzfb zzfbVar = this.zzc;
        int i3 = this.zza;
        return (zzfb) zzfbVar.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return true;
    }
}

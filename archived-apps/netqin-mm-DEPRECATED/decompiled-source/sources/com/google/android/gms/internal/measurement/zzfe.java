package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4536l1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfe.class */
public class zzfe<K, V> extends AbstractC4536l1<K, V> implements Serializable {
    public final transient zzfc<K, ? extends zzey<V>> zza;
    public final transient int zzb;

    public zzfe(zzfc<K, ? extends zzey<V>> zzfcVar, int i) {
        this.zza = zzfcVar;
        this.zzb = i;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4543m1
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4543m1
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4543m1
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4543m1, com.google.android.gms.internal.measurement.zzfk
    public final /* synthetic */ Map zza() {
        return this.zza;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4543m1
    public final boolean zza(Object obj) {
        return obj != null && super.zza(obj);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4543m1
    public final Map<K, Collection<V>> zzb() {
        throw new AssertionError("should never be called");
    }
}

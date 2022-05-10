package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfg.class */
public abstract class zzfg<E> extends zzey<E> implements Set<E> {
    public transient zzfb<E> zza;

    public static int zza(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i2 = highestOneBit << 1;
                double d = i2;
                Double.isNaN(d);
                if (d * 0.7d >= max) {
                    return i2;
                }
                highestOneBit = i2;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            zzeb.m9813a(z, "collection too large");
            return 1073741824;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfg) || !zzg() || !((zzfg) obj).zzg() || hashCode() == obj.hashCode()) {
            return zzfv.m9802a(this, obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzfv.m9803a(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public zzfb<E> zze() {
        zzfb<E> zzfbVar = this.zza;
        zzfb<E> zzfbVar2 = zzfbVar;
        if (zzfbVar == null) {
            zzfbVar2 = zzh();
            this.zza = zzfbVar2;
        }
        return zzfbVar2;
    }

    public boolean zzg() {
        return false;
    }

    public zzfb<E> zzh() {
        return zzfb.zza(toArray());
    }
}

package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzfk;
import java.util.Collection;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.m1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/m1.class */
public abstract class AbstractC4543m1<K, V> implements zzfk<K, V> {
    public transient Map<K, Collection<V>> zza;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfk) {
            return zza().equals(((zzfk) obj).zza());
        }
        return false;
    }

    public int hashCode() {
        return zza().hashCode();
    }

    public String toString() {
        return zza().toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzfk
    public abstract Map<K, Collection<V>> zza();

    public boolean zza(Object obj) {
        for (Collection<V> collection : zza().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Map<K, Collection<V>> zzb();
}

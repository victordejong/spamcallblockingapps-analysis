package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzdz;
import com.google.android.gms.internal.measurement.zzem;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.v1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/v1.class */
public final class C4604v1 extends AbstractC4518j1<K, V> {

    /* renamed from: a */
    public final K f16911a;

    /* renamed from: b */
    public int f16912b;

    /* renamed from: c */
    public final /* synthetic */ zzem f16913c;

    /* JADX WARN: Multi-variable type inference failed */
    public C4604v1(zzem zzemVar, int i) {
        this.f16913c = zzemVar;
        this.f16911a = zzemVar.zzb[i];
        this.f16912b = i;
    }

    /* renamed from: a */
    public final void m25232a() {
        int zza;
        int i = this.f16912b;
        if (i == -1 || i >= this.f16913c.size() || !zzdz.m9819a(this.f16911a, this.f16913c.zzb[this.f16912b])) {
            zza = this.f16913c.zza(this.f16911a);
            this.f16912b = zza;
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4518j1, java.util.Map.Entry
    public final K getKey() {
        return this.f16911a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [V, java.lang.Object] */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4518j1, java.util.Map.Entry
    public final V getValue() {
        Map zzb = this.f16913c.zzb();
        if (zzb != null) {
            return zzb.get(this.f16911a);
        }
        m25232a();
        int i = this.f16912b;
        if (i == -1) {
            return null;
        }
        return this.f16913c.zzc[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [V, java.lang.Object] */
    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        Map zzb = this.f16913c.zzb();
        if (zzb != null) {
            return zzb.put(this.f16911a, v);
        }
        m25232a();
        int i = this.f16912b;
        if (i == -1) {
            this.f16913c.put(this.f16911a, v);
            return null;
        }
        Object[] objArr = this.f16913c.zzc;
        V v2 = objArr[i];
        objArr[i] = v;
        return v2;
    }
}

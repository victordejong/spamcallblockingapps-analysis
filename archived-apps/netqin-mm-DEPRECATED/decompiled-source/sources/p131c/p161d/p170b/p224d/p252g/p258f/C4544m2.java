package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.f.m2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/m2.class */
public final class C4544m2 extends AbstractC4558o2 {

    /* renamed from: a */
    public int f16817a = 0;

    /* renamed from: b */
    public final int f16818b;

    /* renamed from: c */
    public final /* synthetic */ zzgp f16819c;

    public C4544m2(zzgp zzgpVar) {
        this.f16819c = zzgpVar;
        this.f16818b = this.f16819c.zza();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16817a < this.f16818b;
    }

    @Override // com.google.android.gms.internal.measurement.zzgy
    public final byte zza() {
        int i = this.f16817a;
        if (i < this.f16818b) {
            this.f16817a = i + 1;
            return this.f16819c.zzb(i);
        }
        throw new NoSuchElementException();
    }
}

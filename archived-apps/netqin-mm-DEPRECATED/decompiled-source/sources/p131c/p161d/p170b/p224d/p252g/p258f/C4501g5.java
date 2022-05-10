package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zziq;
import com.google.android.gms.internal.measurement.zzku;
import java.util.Iterator;
/* renamed from: c.d.b.d.g.f.g5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/g5.class */
public final class C4501g5 implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f16754a;

    /* renamed from: b */
    public final /* synthetic */ zzku f16755b;

    public C4501g5(zzku zzkuVar) {
        zziq zziqVar;
        this.f16755b = zzkuVar;
        zziqVar = this.f16755b.f29525a;
        this.f16754a = zziqVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16754a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f16754a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

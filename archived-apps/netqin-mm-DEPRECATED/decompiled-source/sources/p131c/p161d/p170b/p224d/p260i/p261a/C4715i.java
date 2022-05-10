package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzap;
import java.util.Iterator;
/* renamed from: c.d.b.d.i.a.i */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/i.class */
public final class C4715i implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f17161a;

    /* renamed from: b */
    public final /* synthetic */ zzap f17162b;

    public C4715i(zzap zzapVar) {
        Bundle bundle;
        this.f17162b = zzapVar;
        bundle = this.f17162b.f29811a;
        this.f17161a = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17161a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f17161a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}

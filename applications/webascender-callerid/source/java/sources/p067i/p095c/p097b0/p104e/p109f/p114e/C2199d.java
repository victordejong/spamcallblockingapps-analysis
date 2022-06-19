package p067i.p095c.p097b0.p104e.p109f.p114e;

import java.util.Iterator;
import p067i.p095c.p097b0.p101b.AbstractC2137a0;
import p067i.p095c.p097b0.p101b.AbstractC2141c0;
/* renamed from: i.c.b0.e.f.e.d */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/d.class */
public final class C2199d<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC2137a0<T> f5893f;

    /* renamed from: g */
    final T f5894g;

    public C2199d(AbstractC2137a0<T> abstractC2137a0, T t) {
        this.f5893f = abstractC2137a0;
        this.f5894g = t;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        AbstractC2141c0<? super T> aVar = new a<>(this.f5894g);
        this.f5893f.subscribe(aVar);
        return aVar.b();
    }
}

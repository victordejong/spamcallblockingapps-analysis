package p067i.p095c.p097b0.p104e.p109f.p114e;

import i.c.b0.b.v;
import java.util.Iterator;
import p067i.p095c.p097b0.p101b.AbstractC2137a0;
/* renamed from: i.c.b0.e.f.e.c */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/c.class */
public final class C2198c<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC2137a0<T> f5890f;

    public C2198c(AbstractC2137a0<T> abstractC2137a0) {
        this.f5890f = abstractC2137a0;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a();
        v.wrap(this.f5890f).materialize().subscribe(aVar);
        return aVar;
    }
}

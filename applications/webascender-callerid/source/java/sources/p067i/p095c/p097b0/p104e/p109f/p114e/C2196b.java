package p067i.p095c.p097b0.p104e.p109f.p114e;

import java.util.Iterator;
import p067i.p095c.p097b0.p101b.AbstractC2137a0;
/* renamed from: i.c.b0.e.f.e.b */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/b.class */
public final class C2196b<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC2137a0<? extends T> f5888f;

    /* renamed from: g */
    final int f5889g;

    public C2196b(AbstractC2137a0<? extends T> abstractC2137a0, int i) {
        this.f5888f = abstractC2137a0;
        this.f5889g = i;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        a aVar = new a(this.f5889g);
        this.f5888f.subscribe(aVar);
        return aVar;
    }
}

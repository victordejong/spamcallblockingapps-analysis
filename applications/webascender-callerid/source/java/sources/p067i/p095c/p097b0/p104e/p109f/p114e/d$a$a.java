package p067i.p095c.p097b0.p104e.p109f.p114e;

import i.c.b0.e.k.j;
import i.c.b0.e.k.m;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p067i.p095c.p097b0.p104e.p109f.p114e.C2199d;
/* renamed from: i.c.b0.e.f.e.d$a$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/d$a$a.class */
final class d$a$a implements Iterator<T> {

    /* renamed from: f */
    private Object f5895f;

    /* renamed from: g */
    final /* synthetic */ C2199d.a f5896g;

    d$a$a(C2199d.a aVar) {
        this.f5896g = aVar;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        Object obj = this.f5896g.g;
        this.f5895f = obj;
        return !m.isComplete(obj);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        try {
            if (this.f5895f == null) {
                this.f5895f = this.f5896g.g;
            }
            if (m.isComplete(this.f5895f)) {
                throw new NoSuchElementException();
            }
            if (m.isError(this.f5895f)) {
                throw j.g(m.getError(this.f5895f));
            }
            return m.getValue(this.f5895f);
        } finally {
            this.f5895f = null;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Read only iterator");
    }
}

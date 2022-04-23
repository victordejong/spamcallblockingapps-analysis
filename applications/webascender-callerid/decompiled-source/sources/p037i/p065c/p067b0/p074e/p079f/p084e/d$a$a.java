package p037i.p065c.p067b0.p074e.p079f.p084e;

import i.c.b0.e.k.j;
import i.c.b0.e.k.m;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p037i.p065c.p067b0.p074e.p079f.p084e.C0531d;
/* renamed from: i.c.b0.e.f.e.d$a$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/d$a$a.class */
final class d$a$a implements Iterator<T> {

    /* renamed from: f */
    private Object f1216f;

    /* renamed from: g */
    final /* synthetic */ C0531d.a f1217g;

    d$a$a(C0531d.a aVar) {
        this.f1217g = aVar;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        Object obj = this.f1217g.g;
        this.f1216f = obj;
        return !m.isComplete(obj);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        try {
            if (this.f1216f == null) {
                this.f1216f = this.f1217g.g;
            }
            if (m.isComplete(this.f1216f)) {
                throw new NoSuchElementException();
            } else if (!m.isError(this.f1216f)) {
                return m.getValue(this.f1216f);
            } else {
                throw j.g(m.getError(this.f1216f));
            }
        } finally {
            this.f1216f = null;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Read only iterator");
    }
}

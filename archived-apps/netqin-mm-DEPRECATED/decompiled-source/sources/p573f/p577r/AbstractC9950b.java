package p573f.p577r;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.State;
/* renamed from: f.r.b */
/* loaded from: classes2-dex2jar.jar:f/r/b.class */
public abstract class AbstractC9950b<T> implements Iterator<T> {

    /* renamed from: a */
    public State f37139a = State.NotReady;

    /* renamed from: b */
    public T f37140b;

    /* renamed from: a */
    public abstract void mo1723a();

    /* renamed from: a */
    public final void m1742a(T t) {
        this.f37140b = t;
        this.f37139a = State.Ready;
    }

    /* renamed from: b */
    public final void m1741b() {
        this.f37139a = State.Done;
    }

    /* renamed from: c */
    public final boolean m1740c() {
        this.f37139a = State.Failed;
        mo1723a();
        return this.f37139a == State.Ready;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z = false;
        if (this.f37139a != State.Failed) {
            int i = C9948a.f37138a[this.f37139a.ordinal()];
            if (i != 1) {
                z = i != 2 ? m1740c() : true;
            }
            return z;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            this.f37139a = State.NotReady;
            return this.f37140b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

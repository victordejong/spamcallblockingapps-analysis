package p626l.p630d0;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
/* renamed from: l.d0.f */
/* loaded from: classes3-dex2jar.jar:l/d0/f.class */
public final class C14922f<T> extends AbstractC14923g<T> implements Iterator<T>, AbstractC15044d<C14989s>, AbstractC15141a {

    /* renamed from: a */
    public int f32963a;

    /* renamed from: b */
    public T f32964b;

    /* renamed from: c */
    public Iterator<? extends T> f32965c;

    /* renamed from: d */
    public AbstractC15044d<? super C14989s> f32966d;

    @Override // p626l.p630d0.AbstractC14923g
    /* renamed from: a */
    public Object mo782a(T t, AbstractC15044d<? super C14989s> dVar) {
        this.f32964b = t;
        this.f32963a = 3;
        this.f32966d = dVar;
        Object a = C15064c.m478a();
        if (a == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return a == C15064c.m478a() ? a : C14989s.f33022a;
    }

    /* renamed from: a */
    public final Throwable m785a() {
        Throwable th;
        int i = this.f32963a;
        if (i == 4) {
            th = new NoSuchElementException();
        } else if (i != 5) {
            th = new IllegalStateException("Unexpected state of the iterator: " + this.f32963a);
        } else {
            th = new IllegalStateException("Iterator has failed.");
        }
        return th;
    }

    /* renamed from: a */
    public final void m784a(AbstractC15044d<? super C14989s> dVar) {
        this.f32966d = dVar;
    }

    /* renamed from: b */
    public final T m783b() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // p626l.p634w.AbstractC15044d
    public AbstractC15049g getContext() {
        return C15055h.f33080a;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            int i = this.f32963a;
            if (i != 0) {
                if (i == 1) {
                    Iterator<? extends T> it = this.f32965c;
                    if (it == null) {
                        C15149k.m378b();
                        throw null;
                    } else if (it.hasNext()) {
                        this.f32963a = 2;
                        return true;
                    } else {
                        this.f32965c = null;
                    }
                } else if (i == 2 || i == 3) {
                    return true;
                } else {
                    if (i == 4) {
                        return false;
                    }
                    throw m785a();
                }
            }
            this.f32963a = 5;
            AbstractC15044d<? super C14989s> dVar = this.f32966d;
            if (dVar != null) {
                this.f32966d = null;
                C14989s sVar = C14989s.f33022a;
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(sVar);
                dVar.resumeWith(sVar);
            } else {
                C15149k.m378b();
                throw null;
            }
        }
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.f32963a;
        if (i == 0 || i == 1) {
            return m783b();
        }
        if (i == 2) {
            this.f32963a = 1;
            Iterator<? extends T> it = this.f32965c;
            if (it != null) {
                return (T) it.next();
            }
            C15149k.m378b();
            throw null;
        } else if (i == 3) {
            this.f32963a = 0;
            T t = this.f32964b;
            this.f32964b = null;
            return t;
        } else {
            throw m785a();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // p626l.p634w.AbstractC15044d
    public void resumeWith(Object obj) {
        C14982l.m653a(obj);
        this.f32963a = 4;
    }
}

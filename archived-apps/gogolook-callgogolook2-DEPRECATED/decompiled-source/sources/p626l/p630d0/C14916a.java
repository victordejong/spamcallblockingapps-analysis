package p626l.p630d0;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.d0.a */
/* loaded from: classes3-dex2jar.jar:l/d0/a.class */
public final class C14916a<T> implements AbstractC14921e<T> {

    /* renamed from: a */
    public final AtomicReference<AbstractC14921e<T>> f32954a;

    public C14916a(AbstractC14921e<? extends T> eVar) {
        C15149k.m377b(eVar, "sequence");
        this.f32954a = new AtomicReference<>(eVar);
    }

    @Override // p626l.p630d0.AbstractC14921e
    public Iterator<T> iterator() {
        AbstractC14921e<T> andSet = this.f32954a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}

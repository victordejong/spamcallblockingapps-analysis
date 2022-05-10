package p573f.p577r;

import java.util.Iterator;
import p573f.C9942n;
/* renamed from: f.r.k0 */
/* loaded from: classes2-dex2jar.jar:f/r/k0.class */
public abstract class AbstractC9975k0 implements Iterator<C9942n> {
    /* renamed from: a */
    public abstract short mo1711a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final C9942n next() {
        return C9942n.m1749b(mo1711a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

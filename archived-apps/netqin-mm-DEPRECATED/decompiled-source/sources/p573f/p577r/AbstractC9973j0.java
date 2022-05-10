package p573f.p577r;

import java.util.Iterator;
import p573f.C9937k;
/* renamed from: f.r.j0 */
/* loaded from: classes2-dex2jar.jar:f/r/j0.class */
public abstract class AbstractC9973j0 implements Iterator<C9937k> {
    /* renamed from: a */
    public abstract long mo1712a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final C9937k next() {
        return C9937k.m1757b(mo1712a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

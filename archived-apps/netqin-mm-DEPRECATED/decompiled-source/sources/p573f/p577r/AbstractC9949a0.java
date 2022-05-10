package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.a0 */
/* loaded from: classes2-dex2jar.jar:f/r/a0.class */
public abstract class AbstractC9949a0 implements Iterator<Integer> {
    /* renamed from: a */
    public abstract int mo1576a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Integer next() {
        return Integer.valueOf(mo1576a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

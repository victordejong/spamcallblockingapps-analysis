package p573f.p577r;

import java.util.Iterator;
import p573f.C9929g;
/* renamed from: f.r.h0 */
/* loaded from: classes2-dex2jar.jar:f/r/h0.class */
public abstract class AbstractC9969h0 implements Iterator<C9929g> {
    /* renamed from: a */
    public abstract byte mo1715a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final C9929g next() {
        return C9929g.m1773b(mo1715a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.w */
/* loaded from: classes2-dex2jar.jar:f/r/w.class */
public abstract class AbstractC9988w implements Iterator<Double> {
    /* renamed from: a */
    public abstract double mo1662a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Double next() {
        return Double.valueOf(mo1662a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

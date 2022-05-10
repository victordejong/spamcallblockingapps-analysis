package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.k */
/* loaded from: classes2-dex2jar.jar:f/r/k.class */
public abstract class AbstractC9974k implements Iterator<Byte> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Byte next() {
        return Byte.valueOf(nextByte());
    }

    public abstract byte nextByte();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

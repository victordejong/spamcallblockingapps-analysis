package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.g0 */
/* loaded from: classes2-dex2jar.jar:f/r/g0.class */
public abstract class AbstractC9967g0 implements Iterator<Short> {
    /* renamed from: a */
    public abstract short mo1650a();

    @Override // java.util.Iterator
    public final Short next() {
        return Short.valueOf(mo1650a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

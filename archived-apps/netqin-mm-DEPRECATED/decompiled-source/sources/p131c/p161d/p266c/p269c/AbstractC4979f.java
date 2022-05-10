package p131c.p161d.p266c.p269c;

import com.google.common.collect.Range;
import java.lang.Comparable;
/* renamed from: c.d.c.c.f */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/f.class */
public abstract class AbstractC4979f<C extends Comparable> implements AbstractC5016q0<C> {
    public abstract void add(Range<C> range);

    public void addAll(AbstractC5016q0<C> q0Var) {
        addAll(q0Var.asRanges());
    }

    public void addAll(Iterable<Range<C>> iterable) {
        for (Range<C> range : iterable) {
            add(range);
        }
    }

    public void clear() {
        remove(Range.all());
    }

    public boolean contains(C c) {
        return rangeContaining(c) != null;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5016q0
    public abstract boolean encloses(Range<C> range);

    public boolean enclosesAll(AbstractC5016q0<C> q0Var) {
        return enclosesAll(q0Var.asRanges());
    }

    public boolean enclosesAll(Iterable<Range<C>> iterable) {
        for (Range<C> range : iterable) {
            if (!encloses(range)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC5016q0) {
            return asRanges().equals(((AbstractC5016q0) obj).asRanges());
        }
        return false;
    }

    public final int hashCode() {
        return asRanges().hashCode();
    }

    public abstract boolean intersects(Range<C> range);

    @Override // p131c.p161d.p266c.p269c.AbstractC5016q0
    public boolean isEmpty() {
        return asRanges().isEmpty();
    }

    public abstract Range<C> rangeContaining(C c);

    public abstract void remove(Range<C> range);

    @Override // p131c.p161d.p266c.p269c.AbstractC5016q0
    public void removeAll(AbstractC5016q0<C> q0Var) {
        removeAll(q0Var.asRanges());
    }

    public void removeAll(Iterable<Range<C>> iterable) {
        for (Range<C> range : iterable) {
            remove(range);
        }
    }

    public final String toString() {
        return asRanges().toString();
    }
}

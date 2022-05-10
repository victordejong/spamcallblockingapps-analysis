package p131c.p161d.p266c.p269c;

import com.google.common.collect.BoundType;
import com.google.common.collect.Multisets;
import com.google.common.collect.Ordering;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5037y0;
/* renamed from: c.d.c.c.h */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/h.class */
public abstract class AbstractC4988h<E> extends AbstractC4969d<E> implements AbstractC5033w0<E> {
    public final Comparator<? super E> comparator;
    public transient AbstractC5033w0<E> descendingMultiset;

    /* renamed from: c.d.c.c.h$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/h$a.class */
    public class C4989a extends AbstractC5014q<E> {
        public C4989a() {
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5014q
        /* renamed from: b */
        public Iterator<AbstractC4997j0.AbstractC4998a<E>> mo24635b() {
            return AbstractC4988h.this.descendingEntryIterator();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5014q
        /* renamed from: c */
        public AbstractC5033w0<E> mo24634c() {
            return AbstractC4988h.this;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<E> iterator() {
            return AbstractC4988h.this.descendingIterator();
        }
    }

    public AbstractC4988h() {
        this(Ordering.natural());
    }

    public AbstractC4988h(Comparator<? super E> comparator) {
        C4933n.m24795a(comparator);
        this.comparator = comparator;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0, p131c.p161d.p266c.p269c.AbstractC5029u0
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    public AbstractC5033w0<E> createDescendingMultiset() {
        return new C4989a();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d
    public NavigableSet<E> createElementSet() {
        return new C5037y0.C5039b(this);
    }

    public abstract Iterator<AbstractC4997j0.AbstractC4998a<E>> descendingEntryIterator();

    public Iterator<E> descendingIterator() {
        return Multisets.m8092a((AbstractC4997j0) descendingMultiset());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> descendingMultiset() {
        AbstractC5033w0<E> w0Var = this.descendingMultiset;
        AbstractC5033w0<E> w0Var2 = w0Var;
        if (w0Var == null) {
            w0Var2 = createDescendingMultiset();
            this.descendingMultiset = w0Var2;
        }
        return w0Var2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> firstEntry() {
        Iterator<AbstractC4997j0.AbstractC4998a<E>> entryIterator = entryIterator();
        return entryIterator.hasNext() ? entryIterator.next() : null;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> lastEntry() {
        Iterator<AbstractC4997j0.AbstractC4998a<E>> descendingEntryIterator = descendingEntryIterator();
        return descendingEntryIterator.hasNext() ? descendingEntryIterator.next() : null;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> pollFirstEntry() {
        Iterator<AbstractC4997j0.AbstractC4998a<E>> entryIterator = entryIterator();
        if (!entryIterator.hasNext()) {
            return null;
        }
        AbstractC4997j0.AbstractC4998a<E> next = entryIterator.next();
        AbstractC4997j0.AbstractC4998a<E> a = Multisets.m8083a(next.getElement(), next.getCount());
        entryIterator.remove();
        return a;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> pollLastEntry() {
        Iterator<AbstractC4997j0.AbstractC4998a<E>> descendingEntryIterator = descendingEntryIterator();
        if (!descendingEntryIterator.hasNext()) {
            return null;
        }
        AbstractC4997j0.AbstractC4998a<E> next = descendingEntryIterator.next();
        AbstractC4997j0.AbstractC4998a<E> a = Multisets.m8083a(next.getElement(), next.getCount());
        descendingEntryIterator.remove();
        return a;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2) {
        C4933n.m24795a(boundType);
        C4933n.m24795a(boundType2);
        return tailMultiset(e, boundType).headMultiset(e2, boundType2);
    }
}

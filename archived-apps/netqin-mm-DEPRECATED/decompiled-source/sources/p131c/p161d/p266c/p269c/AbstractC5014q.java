package p131c.p161d.p266c.p269c;

import com.google.common.collect.BoundType;
import com.google.common.collect.Multisets;
import com.google.common.collect.Ordering;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5037y0;
/* renamed from: c.d.c.c.q */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/q.class */
public abstract class AbstractC5014q<E> extends AbstractC5036y<E> implements AbstractC5033w0<E> {

    /* renamed from: a */
    public transient Comparator<? super E> f17634a;

    /* renamed from: b */
    public transient NavigableSet<E> f17635b;

    /* renamed from: c */
    public transient Set<AbstractC4997j0.AbstractC4998a<E>> f17636c;

    /* renamed from: c.d.c.c.q$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/q$a.class */
    public class C5015a extends Multisets.AbstractC7598d<E> {
        public C5015a() {
        }

        @Override // com.google.common.collect.Multisets.AbstractC7598d
        /* renamed from: a */
        public AbstractC4997j0<E> mo8074a() {
            return AbstractC5014q.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<AbstractC4997j0.AbstractC4998a<E>> iterator() {
            return AbstractC5014q.this.mo24635b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractC5014q.this.mo24634c().entrySet().size();
        }
    }

    /* renamed from: a */
    public Set<AbstractC4997j0.AbstractC4998a<E>> m24636a() {
        return new C5015a();
    }

    /* renamed from: b */
    public abstract Iterator<AbstractC4997j0.AbstractC4998a<E>> mo24635b();

    /* renamed from: c */
    public abstract AbstractC5033w0<E> mo24634c();

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0, p131c.p161d.p266c.p269c.AbstractC5029u0
    public Comparator<? super E> comparator() {
        Comparator<? super E> comparator = this.f17634a;
        Comparator<? super E> comparator2 = comparator;
        if (comparator == null) {
            comparator2 = Ordering.from(mo24634c().comparator()).reverse();
            this.f17634a = comparator2;
        }
        return comparator2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public AbstractC4997j0<E> delegate() {
        return mo24634c();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> descendingMultiset() {
        return mo24634c();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
    public NavigableSet<E> elementSet() {
        NavigableSet<E> navigableSet = this.f17635b;
        NavigableSet<E> navigableSet2 = navigableSet;
        if (navigableSet == null) {
            navigableSet2 = new C5037y0.C5039b<>(this);
            this.f17635b = navigableSet2;
        }
        return navigableSet2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
    public Set<AbstractC4997j0.AbstractC4998a<E>> entrySet() {
        Set<AbstractC4997j0.AbstractC4998a<E>> set = this.f17636c;
        Set<AbstractC4997j0.AbstractC4998a<E>> set2 = set;
        if (set == null) {
            set2 = m24636a();
            this.f17636c = set2;
        }
        return set2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> firstEntry() {
        return mo24634c().lastEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> headMultiset(E e, BoundType boundType) {
        return mo24634c().tailMultiset(e, boundType).descendingMultiset();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> lastEntry() {
        return mo24634c().firstEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> pollFirstEntry() {
        return mo24634c().pollLastEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> pollLastEntry() {
        return mo24634c().pollFirstEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2) {
        return mo24634c().subMultiset(e2, boundType2, e, boundType).descendingMultiset();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> tailMultiset(E e, BoundType boundType) {
        return mo24634c().headMultiset(e, boundType).descendingMultiset();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
    public Object[] toArray() {
        return standardToArray();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) standardToArray(tArr);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public String toString() {
        return entrySet().toString();
    }
}

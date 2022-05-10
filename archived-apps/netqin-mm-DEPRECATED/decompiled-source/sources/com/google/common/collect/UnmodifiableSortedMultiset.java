package com.google.common.collect;

import com.google.common.collect.Multisets;
import java.util.Comparator;
import java.util.NavigableSet;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC5033w0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/UnmodifiableSortedMultiset.class */
public final class UnmodifiableSortedMultiset<E> extends Multisets.UnmodifiableMultiset<E> implements AbstractC5033w0<E> {
    public static final long serialVersionUID = 0;
    public transient UnmodifiableSortedMultiset<E> descendingMultiset;

    public UnmodifiableSortedMultiset(AbstractC5033w0<E> w0Var) {
        super(w0Var);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0, p131c.p161d.p266c.p269c.AbstractC5029u0
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset
    public NavigableSet<E> createElementSet() {
        return Sets.m8062a((NavigableSet) delegate().elementSet());
    }

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset, p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public AbstractC5033w0<E> delegate() {
        return (AbstractC5033w0) super.delegate();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> descendingMultiset() {
        UnmodifiableSortedMultiset<E> unmodifiableSortedMultiset = this.descendingMultiset;
        UnmodifiableSortedMultiset<E> unmodifiableSortedMultiset2 = unmodifiableSortedMultiset;
        if (unmodifiableSortedMultiset == null) {
            unmodifiableSortedMultiset2 = new UnmodifiableSortedMultiset<>(delegate().descendingMultiset());
            unmodifiableSortedMultiset2.descendingMultiset = this;
            this.descendingMultiset = unmodifiableSortedMultiset2;
        }
        return unmodifiableSortedMultiset2;
    }

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset, p131c.p161d.p266c.p269c.AbstractC5036y, p131c.p161d.p266c.p269c.AbstractC4997j0
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> firstEntry() {
        return delegate().firstEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> headMultiset(E e, BoundType boundType) {
        return Multisets.m8085a((AbstractC5033w0) delegate().headMultiset(e, boundType));
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> lastEntry() {
        return delegate().lastEntry();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2) {
        return Multisets.m8085a((AbstractC5033w0) delegate().subMultiset(e, boundType, e2, boundType2));
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC5033w0<E> tailMultiset(E e, BoundType boundType) {
        return Multisets.m8085a((AbstractC5033w0) delegate().tailMultiset(e, boundType));
    }
}

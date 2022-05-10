package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.util.Comparator;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/RegularImmutableSortedMultiset.class */
public final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    public final transient long[] cumulativeCounts;
    public final transient RegularImmutableSortedSet<E> elementSet;
    public final transient int length;
    public final transient int offset;
    public static final long[] ZERO_CUMULATIVE_COUNTS = {0};
    public static final ImmutableSortedMultiset<Comparable> NATURAL_EMPTY_MULTISET = new RegularImmutableSortedMultiset(Ordering.natural());

    public RegularImmutableSortedMultiset(RegularImmutableSortedSet<E> regularImmutableSortedSet, long[] jArr, int i, int i2) {
        this.elementSet = regularImmutableSortedSet;
        this.cumulativeCounts = jArr;
        this.offset = i;
        this.length = i2;
    }

    public RegularImmutableSortedMultiset(Comparator<? super E> comparator) {
        this.elementSet = ImmutableSortedSet.emptySet(comparator);
        this.cumulativeCounts = ZERO_CUMULATIVE_COUNTS;
        this.offset = 0;
        this.length = 0;
    }

    private int getCount(int i) {
        long[] jArr = this.cumulativeCounts;
        int i2 = this.offset;
        return (int) (jArr[(i2 + i) + 1] - jArr[i2 + i]);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
    public int count(Object obj) {
        int indexOf = this.elementSet.indexOf(obj);
        return indexOf >= 0 ? getCount(indexOf) : 0;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, p131c.p161d.p266c.p269c.AbstractC4997j0
    public ImmutableSortedSet<E> elementSet() {
        return this.elementSet;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> firstEntry() {
        return isEmpty() ? null : getEntry(0);
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public AbstractC4997j0.AbstractC4998a<E> getEntry(int i) {
        return Multisets.m8083a(this.elementSet.asList().get(i), getCount(i));
    }

    public ImmutableSortedMultiset<E> getSubMultiset(int i, int i2) {
        C4933n.m24778b(i, i2, this.length);
        return i == i2 ? ImmutableSortedMultiset.emptyMultiset(comparator()) : (i == 0 && i2 == this.length) ? this : new RegularImmutableSortedMultiset(this.elementSet.getSubSet(i, i2), this.cumulativeCounts, this.offset + i, i2 - i);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, p131c.p161d.p266c.p269c.AbstractC5033w0
    public ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType) {
        RegularImmutableSortedSet<E> regularImmutableSortedSet = this.elementSet;
        C4933n.m24795a(boundType);
        return getSubMultiset(0, regularImmutableSortedSet.headIndex(e, boundType == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        boolean z = true;
        if (this.offset <= 0) {
            z = this.length < this.cumulativeCounts.length - 1;
        }
        return z;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public AbstractC4997j0.AbstractC4998a<E> lastEntry() {
        return isEmpty() ? null : getEntry(this.length - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
    public int size() {
        long[] jArr = this.cumulativeCounts;
        int i = this.offset;
        return Ints.m7808b(jArr[this.length + i] - jArr[i]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, p131c.p161d.p266c.p269c.AbstractC5033w0
    public ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType) {
        RegularImmutableSortedSet<E> regularImmutableSortedSet = this.elementSet;
        C4933n.m24795a(boundType);
        return getSubMultiset(regularImmutableSortedSet.tailIndex(e, boundType == BoundType.CLOSED), this.length);
    }
}

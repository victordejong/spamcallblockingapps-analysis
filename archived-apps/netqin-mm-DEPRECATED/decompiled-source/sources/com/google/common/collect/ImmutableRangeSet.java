package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.SortedLists;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4979f;
import p131c.p161d.p266c.p269c.AbstractC5007n0;
import p131c.p161d.p266c.p269c.AbstractC5016q0;
import p131c.p161d.p266c.p269c.C4983g0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet.class */
public final class ImmutableRangeSet<C extends Comparable> extends AbstractC4979f<C> implements Serializable {
    public transient ImmutableRangeSet<C> complement;
    public final transient ImmutableList<Range<C>> ranges;
    public static final ImmutableRangeSet<Comparable<?>> EMPTY = new ImmutableRangeSet<>(ImmutableList.m8400of());
    public static final ImmutableRangeSet<Comparable<?>> ALL = new ImmutableRangeSet<>(ImmutableList.m8399of(Range.all()));

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet$AsSet.class */
    public final class AsSet extends ImmutableSortedSet<C> {
        public final DiscreteDomain<C> domain;
        public transient Integer size;

        /* renamed from: com.google.common.collect.ImmutableRangeSet$AsSet$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet$AsSet$a.class */
        public class C7489a extends AbstractIterator<C> {

            /* renamed from: c */
            public final Iterator<Range<C>> f30560c;

            /* renamed from: d */
            public Iterator<C> f30561d = Iterators.m8270a();

            public C7489a() {
                this.f30560c = ImmutableRangeSet.this.ranges.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public C mo7953a() {
                while (!this.f30561d.hasNext()) {
                    if (!this.f30560c.hasNext()) {
                        return (C) ((Comparable) m8454b());
                    }
                    this.f30561d = ContiguousSet.create(this.f30560c.next(), AsSet.this.domain).iterator();
                }
                return this.f30561d.next();
            }
        }

        /* renamed from: com.google.common.collect.ImmutableRangeSet$AsSet$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet$AsSet$b.class */
        public class C7490b extends AbstractIterator<C> {

            /* renamed from: c */
            public final Iterator<Range<C>> f30563c;

            /* renamed from: d */
            public Iterator<C> f30564d = Iterators.m8270a();

            public C7490b() {
                this.f30563c = ImmutableRangeSet.this.ranges.reverse().iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public C mo7953a() {
                while (!this.f30564d.hasNext()) {
                    if (!this.f30563c.hasNext()) {
                        return (C) ((Comparable) m8454b());
                    }
                    this.f30564d = ContiguousSet.create(this.f30563c.next(), AsSet.this.domain).descendingIterator();
                }
                return this.f30564d.next();
            }
        }

        public AsSet(DiscreteDomain<C> discreteDomain) {
            super(Ordering.natural());
            this.domain = discreteDomain;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ImmutableRangeSet.this.contains((Comparable) obj);
            } catch (ClassCastException e) {
                return false;
            }
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public ImmutableSortedSet<C> createDescendingSet() {
            return new DescendingImmutableSortedSet(this);
        }

        @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
        public AbstractC4978e1<C> descendingIterator() {
            return new C7490b();
        }

        public ImmutableSortedSet<C> headSetImpl(C c, boolean z) {
            return subSet(Range.upTo(c, BoundType.forBoolean(z)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public /* bridge */ /* synthetic */ ImmutableSortedSet headSetImpl(Object obj, boolean z) {
            return headSetImpl((AsSet) ((Comparable) obj), z);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public int indexOf(Object obj) {
            if (!contains(obj)) {
                return -1;
            }
            Comparable comparable = (Comparable) obj;
            long j = 0;
            AbstractC4978e1 it = ImmutableRangeSet.this.ranges.iterator();
            while (it.hasNext()) {
                Range range = (Range) it.next();
                if (range.contains(comparable)) {
                    return Ints.m7808b(j + ContiguousSet.create(range, this.domain).indexOf(comparable));
                }
                j += ContiguousSet.create(range, this.domain).size();
            }
            throw new AssertionError("impossible");
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return ImmutableRangeSet.this.ranges.isPartialView();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public AbstractC4978e1<C> iterator() {
            return new C7489a();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v2, types: [long] */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v1, types: [long] */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int size() {
            /*
                r5 = this;
                r0 = r5
                java.lang.Integer r0 = r0.size
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L_0x0056
                r0 = 0
                r8 = r0
                r0 = r5
                com.google.common.collect.ImmutableRangeSet r0 = com.google.common.collect.ImmutableRangeSet.this
                com.google.common.collect.ImmutableList r0 = com.google.common.collect.ImmutableRangeSet.access$000(r0)
                c.d.c.c.e1 r0 = r0.iterator()
                r7 = r0
            L_0x0018:
                r0 = r8
                r10 = r0
                r0 = r7
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x0048
                r0 = r8
                r1 = r7
                java.lang.Object r1 = r1.next()
                com.google.common.collect.Range r1 = (com.google.common.collect.Range) r1
                r2 = r5
                com.google.common.collect.DiscreteDomain<C extends java.lang.Comparable> r2 = r2.domain
                com.google.common.collect.ContiguousSet r1 = com.google.common.collect.ContiguousSet.create(r1, r2)
                int r1 = r1.size()
                long r1 = (long) r1
                long r0 = r0 + r1
                r10 = r0
                r0 = r10
                r8 = r0
                r0 = r10
                r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0018
            L_0x0048:
                r0 = r10
                int r0 = com.google.common.primitives.Ints.m7808b(r0)
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                r7 = r0
                r0 = r5
                r1 = r7
                r0.size = r1
            L_0x0056:
                r0 = r7
                int r0 = r0.intValue()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ImmutableRangeSet.AsSet.size():int");
        }

        public ImmutableSortedSet<C> subSet(Range<C> range) {
            return ImmutableRangeSet.this.subRangeSet((Range) range).asSet(this.domain);
        }

        public ImmutableSortedSet<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
            return (z || z2 || Range.compareOrThrow(c, c2) != 0) ? subSet(Range.range(c, BoundType.forBoolean(z), c2, BoundType.forBoolean(z2))) : ImmutableSortedSet.m8292of();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public /* bridge */ /* synthetic */ ImmutableSortedSet subSetImpl(Object obj, boolean z, Object obj2, boolean z2) {
            return subSetImpl((boolean) ((Comparable) obj), z, (boolean) ((Comparable) obj2), z2);
        }

        public ImmutableSortedSet<C> tailSetImpl(C c, boolean z) {
            return subSet(Range.downTo(c, BoundType.forBoolean(z)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public /* bridge */ /* synthetic */ ImmutableSortedSet tailSetImpl(Object obj, boolean z) {
            return tailSetImpl((AsSet) ((Comparable) obj), z);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return ImmutableRangeSet.this.ranges.toString();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return new AsSetSerializedForm(ImmutableRangeSet.this.ranges, this.domain);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet$AsSetSerializedForm.class */
    public static class AsSetSerializedForm<C extends Comparable> implements Serializable {
        public final DiscreteDomain<C> domain;
        public final ImmutableList<Range<C>> ranges;

        public AsSetSerializedForm(ImmutableList<Range<C>> immutableList, DiscreteDomain<C> discreteDomain) {
            this.ranges = immutableList;
            this.domain = discreteDomain;
        }

        public Object readResolve() {
            return new ImmutableRangeSet(this.ranges).asSet(this.domain);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet$ComplementRanges.class */
    public final class ComplementRanges extends ImmutableList<Range<C>> {
        public final boolean positiveBoundedAbove;
        public final boolean positiveBoundedBelow;
        public final int size;

        public ComplementRanges() {
            this.positiveBoundedBelow = ((Range) ImmutableRangeSet.this.ranges.get(0)).hasLowerBound();
            this.positiveBoundedAbove = ((Range) C4983g0.m24716b(ImmutableRangeSet.this.ranges)).hasUpperBound();
            int size = ImmutableRangeSet.this.ranges.size() - 1;
            int i = this.positiveBoundedBelow ? size + 1 : size;
            this.size = this.positiveBoundedAbove ? i + 1 : i;
        }

        @Override // java.util.List
        public Range<C> get(int i) {
            C4933n.m24798a(i, this.size);
            return Range.create(this.positiveBoundedBelow ? i == 0 ? Cut.belowAll() : ((Range) ImmutableRangeSet.this.ranges.get(i - 1)).upperBound : ((Range) ImmutableRangeSet.this.ranges.get(i)).upperBound, (!this.positiveBoundedAbove || i != this.size - 1) ? ((Range) ImmutableRangeSet.this.ranges.get(i + (!this.positiveBoundedBelow ? 1 : 0))).lowerBound : Cut.aboveAll());
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet$SerializedForm.class */
    public static final class SerializedForm<C extends Comparable> implements Serializable {
        public final ImmutableList<Range<C>> ranges;

        public SerializedForm(ImmutableList<Range<C>> immutableList) {
            this.ranges = immutableList;
        }

        public Object readResolve() {
            return this.ranges.isEmpty() ? ImmutableRangeSet.m8354of() : this.ranges.equals(ImmutableList.m8399of(Range.all())) ? ImmutableRangeSet.all() : new ImmutableRangeSet(this.ranges);
        }
    }

    /* renamed from: com.google.common.collect.ImmutableRangeSet$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableRangeSet$a.class */
    public static class C7491a<C extends Comparable<?>> {

        /* renamed from: a */
        public final List<Range<C>> f30566a = Lists.m8232a();

        /* renamed from: a */
        public C7491a<C> m8351a(Range<C> range) {
            C4933n.m24782a(!range.isEmpty(), "range must not be empty, but was %s", range);
            this.f30566a.add(range);
            return this;
        }

        /* renamed from: a */
        public C7491a<C> m8350a(Iterable<Range<C>> iterable) {
            for (Range<C> range : iterable) {
                m8351a(range);
            }
            return this;
        }

        /* renamed from: a */
        public ImmutableRangeSet<C> m8352a() {
            ImmutableList.C7470a aVar = new ImmutableList.C7470a(this.f30566a.size());
            Collections.sort(this.f30566a, Range.rangeLexOrdering());
            AbstractC5007n0 f = Iterators.m8251f(this.f30566a.iterator());
            while (f.hasNext()) {
                Range range = (Range) f.next();
                while (f.hasNext()) {
                    Range<C> range2 = (Range) f.peek();
                    if (range.isConnected(range2)) {
                        C4933n.m24781a(range.intersection(range2).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", range, range2);
                        range = range.span((Range) f.next());
                    }
                }
                aVar.mo8284a((ImmutableList.C7470a) range);
            }
            ImmutableList a = aVar.m8387a();
            return a.isEmpty() ? ImmutableRangeSet.m8354of() : (a.size() != 1 || !((Range) C4983g0.m24715c(a)).equals(Range.all())) ? new ImmutableRangeSet<>(a) : ImmutableRangeSet.all();
        }
    }

    public ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.ranges = immutableList;
    }

    public ImmutableRangeSet(ImmutableList<Range<C>> immutableList, ImmutableRangeSet<C> immutableRangeSet) {
        this.ranges = immutableList;
        this.complement = immutableRangeSet;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> all() {
        return ALL;
    }

    public static <C extends Comparable<?>> C7491a<C> builder() {
        return new C7491a<>();
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(AbstractC5016q0<C> q0Var) {
        C4933n.m24795a(q0Var);
        if (q0Var.isEmpty()) {
            return m8354of();
        }
        if (q0Var.encloses(Range.all())) {
            return all();
        }
        if (q0Var instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) q0Var;
            if (!immutableRangeSet.isPartialView()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) q0Var.asRanges()));
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> copyOf(Iterable<Range<C>> iterable) {
        C7491a aVar = new C7491a();
        aVar.m8350a(iterable);
        return aVar.m8352a();
    }

    private ImmutableList<Range<C>> intersectRanges(final Range<C> range) {
        if (this.ranges.isEmpty() || range.isEmpty()) {
            return ImmutableList.m8400of();
        }
        if (range.encloses(span())) {
            return this.ranges;
        }
        final int a = range.hasLowerBound() ? SortedLists.m8055a(this.ranges, Range.upperBoundFn(), range.lowerBound, SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER) : 0;
        final int a2 = (range.hasUpperBound() ? SortedLists.m8055a(this.ranges, Range.lowerBoundFn(), range.upperBound, SortedLists.KeyPresentBehavior.FIRST_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER) : this.ranges.size()) - a;
        return a2 == 0 ? ImmutableList.m8400of() : (ImmutableList<Range<C>>) new ImmutableList<Range<C>>() { // from class: com.google.common.collect.ImmutableRangeSet.1
            @Override // java.util.List
            public Range<C> get(int i) {
                C4933n.m24798a(i, a2);
                return (i == 0 || i == a2 - 1) ? ((Range) ImmutableRangeSet.this.ranges.get(i + a)).intersection(range) : (Range) ImmutableRangeSet.this.ranges.get(i + a);
            }

            @Override // com.google.common.collect.ImmutableCollection
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a2;
            }
        };
    }

    /* renamed from: of */
    public static <C extends Comparable> ImmutableRangeSet<C> m8354of() {
        return EMPTY;
    }

    /* renamed from: of */
    public static <C extends Comparable> ImmutableRangeSet<C> m8353of(Range<C> range) {
        C4933n.m24795a(range);
        return range.isEmpty() ? m8354of() : range.equals(Range.all()) ? all() : new ImmutableRangeSet<>(ImmutableList.m8399of(range));
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> unionOf(Iterable<Range<C>> iterable) {
        return copyOf(TreeRangeSet.create(iterable));
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    @Deprecated
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    @Deprecated
    public void addAll(AbstractC5016q0<C> q0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    @Deprecated
    public void addAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    public ImmutableSet<Range<C>> asDescendingSetOfRanges() {
        return this.ranges.isEmpty() ? ImmutableSet.m8349of() : new RegularImmutableSortedSet(this.ranges.reverse(), Range.rangeLexOrdering().reverse());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5016q0
    public ImmutableSet<Range<C>> asRanges() {
        return this.ranges.isEmpty() ? ImmutableSet.m8349of() : new RegularImmutableSortedSet(this.ranges, Range.rangeLexOrdering());
    }

    public ImmutableSortedSet<C> asSet(DiscreteDomain<C> discreteDomain) {
        C4933n.m24795a(discreteDomain);
        if (isEmpty()) {
            return ImmutableSortedSet.m8292of();
        }
        Range<C> canonical = span().canonical(discreteDomain);
        if (canonical.hasLowerBound()) {
            if (!canonical.hasUpperBound()) {
                try {
                    discreteDomain.maxValue();
                } catch (NoSuchElementException e) {
                    throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
                }
            }
            return new AsSet(discreteDomain);
        }
        throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5016q0
    public ImmutableRangeSet<C> complement() {
        ImmutableRangeSet<C> immutableRangeSet = this.complement;
        if (immutableRangeSet != null) {
            return immutableRangeSet;
        }
        if (this.ranges.isEmpty()) {
            ImmutableRangeSet<C> all = all();
            this.complement = all;
            return all;
        } else if (this.ranges.size() != 1 || !this.ranges.get(0).equals(Range.all())) {
            ImmutableRangeSet<C> immutableRangeSet2 = new ImmutableRangeSet<>(new ComplementRanges(), this);
            this.complement = immutableRangeSet2;
            return immutableRangeSet2;
        } else {
            ImmutableRangeSet<C> of = m8354of();
            this.complement = of;
            return of;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    public ImmutableRangeSet<C> difference(AbstractC5016q0<C> q0Var) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(q0Var);
        return copyOf(create);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f, p131c.p161d.p266c.p269c.AbstractC5016q0
    public boolean encloses(Range<C> range) {
        int a = SortedLists.m8054a(this.ranges, Range.lowerBoundFn(), range.lowerBound, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        return a != -1 && this.ranges.get(a).encloses(range);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ boolean enclosesAll(AbstractC5016q0 q0Var) {
        return super.enclosesAll(q0Var);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public ImmutableRangeSet<C> intersection(AbstractC5016q0<C> q0Var) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(q0Var.complement());
        return copyOf(create);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0088, code lost:
        if (r7.ranges.get(r9).intersection(r8).isEmpty() == false) goto L_0x0091;
     */
    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean intersects(com.google.common.collect.Range<C> r8) {
        /*
            r7 = this;
            r0 = r7
            com.google.common.collect.ImmutableList<com.google.common.collect.Range<C extends java.lang.Comparable>> r0 = r0.ranges
            c.d.c.a.g r1 = com.google.common.collect.Range.lowerBoundFn()
            r2 = r8
            com.google.common.collect.Cut<C extends java.lang.Comparable> r2 = r2.lowerBound
            com.google.common.collect.Ordering r3 = com.google.common.collect.Ordering.natural()
            com.google.common.collect.SortedLists$KeyPresentBehavior r4 = com.google.common.collect.SortedLists.KeyPresentBehavior.ANY_PRESENT
            com.google.common.collect.SortedLists$KeyAbsentBehavior r5 = com.google.common.collect.SortedLists.KeyAbsentBehavior.NEXT_HIGHER
            int r0 = com.google.common.collect.SortedLists.m8054a(r0, r1, r2, r3, r4, r5)
            r9 = r0
            r0 = r7
            com.google.common.collect.ImmutableList<com.google.common.collect.Range<C extends java.lang.Comparable>> r0 = r0.ranges
            int r0 = r0.size()
            r10 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 >= r1) goto L_0x0055
            r0 = r7
            com.google.common.collect.ImmutableList<com.google.common.collect.Range<C extends java.lang.Comparable>> r0 = r0.ranges
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0
            r1 = r8
            boolean r0 = r0.isConnected(r1)
            if (r0 == 0) goto L_0x0055
            r0 = r7
            com.google.common.collect.ImmutableList<com.google.common.collect.Range<C extends java.lang.Comparable>> r0 = r0.ranges
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0
            r1 = r8
            com.google.common.collect.Range r0 = r0.intersection(r1)
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0055
            r0 = 1
            return r0
        L_0x0055:
            r0 = r9
            if (r0 <= 0) goto L_0x008e
            r0 = r7
            com.google.common.collect.ImmutableList<com.google.common.collect.Range<C extends java.lang.Comparable>> r0 = r0.ranges
            r12 = r0
            int r9 = r9 + (-1)
            r0 = r12
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0
            r1 = r8
            boolean r0 = r0.isConnected(r1)
            if (r0 == 0) goto L_0x008e
            r0 = r7
            com.google.common.collect.ImmutableList<com.google.common.collect.Range<C extends java.lang.Comparable>> r0 = r0.ranges
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0
            r1 = r8
            com.google.common.collect.Range r0 = r0.intersection(r1)
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x008e
            goto L_0x0091
        L_0x008e:
            r0 = 0
            r11 = r0
        L_0x0091:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ImmutableRangeSet.intersects(com.google.common.collect.Range):boolean");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f, p131c.p161d.p266c.p269c.AbstractC5016q0
    public boolean isEmpty() {
        return this.ranges.isEmpty();
    }

    public boolean isPartialView() {
        return this.ranges.isPartialView();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public Range<C> rangeContaining(C c) {
        int a = SortedLists.m8054a(this.ranges, Range.lowerBoundFn(), Cut.belowValue(c), Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        Range<C> range = null;
        if (a != -1) {
            Range<C> range2 = this.ranges.get(a);
            range = null;
            if (range2.contains(c)) {
                range = range2;
            }
        }
        return range;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    @Deprecated
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f, p131c.p161d.p266c.p269c.AbstractC5016q0
    @Deprecated
    public void removeAll(AbstractC5016q0<C> q0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    @Deprecated
    public void removeAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    public Range<C> span() {
        if (!this.ranges.isEmpty()) {
            Cut<C> cut = this.ranges.get(0).lowerBound;
            ImmutableList<Range<C>> immutableList = this.ranges;
            return Range.create(cut, immutableList.get(immutableList.size() - 1).upperBound);
        }
        throw new NoSuchElementException();
    }

    public ImmutableRangeSet<C> subRangeSet(Range<C> range) {
        if (!isEmpty()) {
            Range<C> span = span();
            if (range.encloses(span)) {
                return this;
            }
            if (range.isConnected(span)) {
                return new ImmutableRangeSet<>(intersectRanges(range));
            }
        }
        return m8354of();
    }

    public ImmutableRangeSet<C> union(AbstractC5016q0<C> q0Var) {
        return unionOf(C4983g0.m24721a((Iterable) asRanges(), (Iterable) q0Var.asRanges()));
    }

    public Object writeReplace() {
        return new SerializedForm(this.ranges);
    }
}

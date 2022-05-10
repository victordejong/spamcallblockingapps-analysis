package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4974e;
import p131c.p161d.p266c.p269c.AbstractC4979f;
import p131c.p161d.p266c.p269c.AbstractC5007n0;
import p131c.p161d.p266c.p269c.AbstractC5016q0;
import p131c.p161d.p266c.p269c.AbstractC5022s;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet.class */
public class TreeRangeSet<C extends Comparable<?>> extends AbstractC4979f<C> implements Serializable {
    public transient Set<Range<C>> asDescendingSetOfRanges;
    public transient Set<Range<C>> asRanges;
    public transient AbstractC5016q0<C> complement;
    public final NavigableMap<Cut<C>, Range<C>> rangesByLowerBound;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$Complement.class */
    public final class Complement extends TreeRangeSet<C> {
        public Complement() {
            super(new C7668c(TreeRangeSet.this.rangesByLowerBound));
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC5016q0
        public AbstractC5016q0<C> complement() {
            return TreeRangeSet.this;
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public boolean contains(C c) {
            return !TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$SubRangeSet.class */
    public final class SubRangeSet extends TreeRangeSet<C> {
        public final Range<C> restriction;

        public SubRangeSet(Range<C> range) {
            super(new C7674e(Range.all(), range, TreeRangeSet.this.rangesByLowerBound));
            this.restriction = range;
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public void add(Range<C> range) {
            C4933n.m24781a(this.restriction.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.restriction);
            TreeRangeSet.super.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public void clear() {
            TreeRangeSet.this.remove(this.restriction);
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public boolean contains(C c) {
            return this.restriction.contains(c) && TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f, p131c.p161d.p266c.p269c.AbstractC5016q0
        public boolean encloses(Range<C> range) {
            boolean z = false;
            if (!this.restriction.isEmpty()) {
                z = false;
                if (this.restriction.encloses(range)) {
                    Range rangeEnclosing = TreeRangeSet.this.rangeEnclosing(range);
                    z = false;
                    if (rangeEnclosing != null) {
                        z = false;
                        if (!rangeEnclosing.intersection(this.restriction).isEmpty()) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public Range<C> rangeContaining(C c) {
            boolean contains = this.restriction.contains(c);
            Range<C> range = null;
            if (!contains) {
                return null;
            }
            Range<C> rangeContaining = TreeRangeSet.this.rangeContaining(c);
            if (rangeContaining != null) {
                range = rangeContaining.intersection(this.restriction);
            }
            return range;
        }

        @Override // com.google.common.collect.TreeRangeSet, p131c.p161d.p266c.p269c.AbstractC4979f
        public void remove(Range<C> range) {
            if (range.isConnected(this.restriction)) {
                TreeRangeSet.this.remove(range.intersection(this.restriction));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet
        public AbstractC5016q0<C> subRangeSet(Range<C> range) {
            return range.encloses(this.restriction) ? this : range.isConnected(this.restriction) ? new SubRangeSet(this.restriction.intersection(range)) : ImmutableRangeSet.m8354of();
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeSet$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$b.class */
    public final class C7667b extends AbstractC5022s<Range<C>> implements Set<Range<C>> {

        /* renamed from: a */
        public final Collection<Range<C>> f30800a;

        public C7667b(TreeRangeSet treeRangeSet, Collection<Range<C>> collection) {
            this.f30800a = collection;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Collection<Range<C>> delegate() {
            return this.f30800a;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.m8060a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.m8061a(this);
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeSet$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$c.class */
    public static final class C7668c<C extends Comparable<?>> extends AbstractC4974e<Cut<C>, Range<C>> {

        /* renamed from: a */
        public final NavigableMap<Cut<C>, Range<C>> f30801a;

        /* renamed from: b */
        public final NavigableMap<Cut<C>, Range<C>> f30802b;

        /* renamed from: c */
        public final Range<Cut<C>> f30803c;

        /* renamed from: com.google.common.collect.TreeRangeSet$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$c$a.class */
        public class C7669a extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: c */
            public Cut<C> f30804c;

            /* renamed from: d */
            public final /* synthetic */ Cut f30805d;

            /* renamed from: e */
            public final /* synthetic */ AbstractC5007n0 f30806e;

            public C7669a(Cut cut, AbstractC5007n0 n0Var) {
                this.f30805d = cut;
                this.f30806e = n0Var;
                this.f30804c = this.f30805d;
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<Cut<C>, Range<C>> mo7953a() {
                Range range;
                if (C7668c.this.f30803c.upperBound.isLessThan(this.f30804c) || this.f30804c == Cut.aboveAll()) {
                    return (Map.Entry) m8454b();
                }
                if (this.f30806e.hasNext()) {
                    Range range2 = (Range) this.f30806e.next();
                    range = Range.create(this.f30804c, range2.lowerBound);
                    this.f30804c = range2.upperBound;
                } else {
                    range = Range.create(this.f30804c, Cut.aboveAll());
                    this.f30804c = Cut.aboveAll();
                }
                return Maps.m8148a(range.lowerBound, range);
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$c$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$c$b.class */
        public class C7670b extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: c */
            public Cut<C> f30808c;

            /* renamed from: d */
            public final /* synthetic */ Cut f30809d;

            /* renamed from: e */
            public final /* synthetic */ AbstractC5007n0 f30810e;

            public C7670b(Cut cut, AbstractC5007n0 n0Var) {
                this.f30809d = cut;
                this.f30810e = n0Var;
                this.f30808c = this.f30809d;
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<Cut<C>, Range<C>> mo7953a() {
                if (this.f30808c == Cut.belowAll()) {
                    return (Map.Entry) m8454b();
                }
                if (this.f30810e.hasNext()) {
                    Range range = (Range) this.f30810e.next();
                    Range create = Range.create(range.upperBound, this.f30808c);
                    this.f30808c = range.lowerBound;
                    if (C7668c.this.f30803c.lowerBound.isLessThan(create.lowerBound)) {
                        return Maps.m8148a(create.lowerBound, create);
                    }
                } else if (C7668c.this.f30803c.lowerBound.isLessThan(Cut.belowAll())) {
                    Range create2 = Range.create(Cut.belowAll(), this.f30808c);
                    this.f30808c = Cut.belowAll();
                    return Maps.m8148a(Cut.belowAll(), create2);
                }
                return (Map.Entry) m8454b();
            }
        }

        public C7668c(NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this(navigableMap, Range.all());
        }

        public C7668c(NavigableMap<Cut<C>, Range<C>> navigableMap, Range<Cut<C>> range) {
            this.f30801a = navigableMap;
            this.f30802b = new C7671d(navigableMap);
            this.f30803c = range;
        }

        @Override // com.google.common.collect.Maps.AbstractC7574l
        /* renamed from: a */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo7961a() {
            Collection<Range<C>> collection;
            Cut cut;
            if (this.f30803c.hasLowerBound()) {
                collection = this.f30802b.tailMap(this.f30803c.lowerEndpoint(), this.f30803c.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                collection = this.f30802b.values();
            }
            AbstractC5007n0 f = Iterators.m8251f(collection.iterator());
            if (this.f30803c.contains(Cut.belowAll()) && (!f.hasNext() || ((Range) f.peek()).lowerBound != Cut.belowAll())) {
                cut = Cut.belowAll();
            } else if (!f.hasNext()) {
                return Iterators.m8270a();
            } else {
                cut = ((Range) f.next()).upperBound;
            }
            return new C7669a(cut, f);
        }

        /* renamed from: a */
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return m7969a(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        /* renamed from: a */
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return m7969a(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        /* renamed from: a */
        public final NavigableMap<Cut<C>, Range<C>> m7969a(Range<Cut<C>> range) {
            if (!this.f30803c.isConnected(range)) {
                return ImmutableSortedMap.m8330of();
            }
            return new C7668c(this.f30801a, range.intersection(this.f30803c));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4974e
        /* renamed from: b */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo7956b() {
            Cut<C> cut;
            AbstractC5007n0 f = Iterators.m8251f(this.f30802b.headMap(this.f30803c.hasUpperBound() ? this.f30803c.upperEndpoint() : Cut.aboveAll(), this.f30803c.hasUpperBound() && this.f30803c.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (f.hasNext()) {
                cut = ((Range) f.peek()).upperBound == Cut.aboveAll() ? ((Range) f.next()).lowerBound : this.f30801a.higherKey(((Range) f.peek()).upperBound);
            } else if (!this.f30803c.contains(Cut.belowAll()) || this.f30801a.containsKey(Cut.belowAll())) {
                return Iterators.m8270a();
            } else {
                cut = this.f30801a.higherKey(Cut.belowAll());
            }
            return new C7670b((Cut) C4924j.m24819a(cut, Cut.aboveAll()), f);
        }

        /* renamed from: b */
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return m7969a(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Range<C> get(Object obj) {
            if (!(obj instanceof Cut)) {
                return null;
            }
            try {
                Cut<C> cut = (Cut) obj;
                Map.Entry<Cut<C>, Range<C>> firstEntry = tailMap(cut, true).firstEntry();
                if (firstEntry == null || !firstEntry.getKey().equals(cut)) {
                    return null;
                }
                return firstEntry.getValue();
            } catch (ClassCastException e) {
                return null;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.m8249h(mo7961a());
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeSet$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$d.class */
    public static final class C7671d<C extends Comparable<?>> extends AbstractC4974e<Cut<C>, Range<C>> {

        /* renamed from: a */
        public final NavigableMap<Cut<C>, Range<C>> f30812a;

        /* renamed from: b */
        public final Range<Cut<C>> f30813b;

        /* renamed from: com.google.common.collect.TreeRangeSet$d$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$d$a.class */
        public class C7672a extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: c */
            public final /* synthetic */ Iterator f30814c;

            public C7672a(Iterator it) {
                this.f30814c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<Cut<C>, Range<C>> mo7953a() {
                if (!this.f30814c.hasNext()) {
                    return (Map.Entry) m8454b();
                }
                Range range = (Range) this.f30814c.next();
                return C7671d.this.f30813b.upperBound.isLessThan(range.upperBound) ? (Map.Entry) m8454b() : Maps.m8148a(range.upperBound, range);
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$d$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$d$b.class */
        public class C7673b extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: c */
            public final /* synthetic */ AbstractC5007n0 f30816c;

            public C7673b(AbstractC5007n0 n0Var) {
                this.f30816c = n0Var;
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<Cut<C>, Range<C>> mo7953a() {
                if (!this.f30816c.hasNext()) {
                    return (Map.Entry) m8454b();
                }
                Range range = (Range) this.f30816c.next();
                return C7671d.this.f30813b.lowerBound.isLessThan(range.upperBound) ? Maps.m8148a(range.upperBound, range) : (Map.Entry) m8454b();
            }
        }

        public C7671d(NavigableMap<Cut<C>, Range<C>> navigableMap) {
            this.f30812a = navigableMap;
            this.f30813b = Range.all();
        }

        public C7671d(NavigableMap<Cut<C>, Range<C>> navigableMap, Range<Cut<C>> range) {
            this.f30812a = navigableMap;
            this.f30813b = range;
        }

        @Override // com.google.common.collect.Maps.AbstractC7574l
        /* renamed from: a */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo7961a() {
            Iterator<Range<C>> it;
            if (!this.f30813b.hasLowerBound()) {
                it = this.f30812a.values().iterator();
            } else {
                Map.Entry<Cut<C>, Range<C>> lowerEntry = this.f30812a.lowerEntry(this.f30813b.lowerEndpoint());
                it = lowerEntry == null ? this.f30812a.values().iterator() : this.f30813b.lowerBound.isLessThan(lowerEntry.getValue().upperBound) ? this.f30812a.tailMap(lowerEntry.getKey(), true).values().iterator() : this.f30812a.tailMap(this.f30813b.lowerEndpoint(), true).values().iterator();
            }
            return new C7672a(it);
        }

        /* renamed from: a */
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return m7964a(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        /* renamed from: a */
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return m7964a(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        /* renamed from: a */
        public final NavigableMap<Cut<C>, Range<C>> m7964a(Range<Cut<C>> range) {
            return range.isConnected(this.f30813b) ? new C7671d(this.f30812a, range.intersection(this.f30813b)) : ImmutableSortedMap.m8330of();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4974e
        /* renamed from: b */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo7956b() {
            AbstractC5007n0 f = Iterators.m8251f((this.f30813b.hasUpperBound() ? this.f30812a.headMap(this.f30813b.upperEndpoint(), false).descendingMap().values() : this.f30812a.descendingMap().values()).iterator());
            if (f.hasNext() && this.f30813b.upperBound.isLessThan(((Range) f.peek()).upperBound)) {
                f.next();
            }
            return new C7673b(f);
        }

        /* renamed from: b */
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return m7964a(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Range<C> get(Object obj) {
            Map.Entry<Cut<C>, Range<C>> lowerEntry;
            if (!(obj instanceof Cut)) {
                return null;
            }
            try {
                Cut<C> cut = (Cut) obj;
                if (this.f30813b.contains(cut) && (lowerEntry = this.f30812a.lowerEntry(cut)) != null && lowerEntry.getValue().upperBound.equals(cut)) {
                    return lowerEntry.getValue();
                }
                return null;
            } catch (ClassCastException e) {
                return null;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f30813b.equals(Range.all()) ? this.f30812a.isEmpty() : !mo7961a().hasNext();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30813b.equals(Range.all()) ? this.f30812a.size() : Iterators.m8249h(mo7961a());
        }
    }

    /* renamed from: com.google.common.collect.TreeRangeSet$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$e.class */
    public static final class C7674e<C extends Comparable<?>> extends AbstractC4974e<Cut<C>, Range<C>> {

        /* renamed from: a */
        public final Range<Cut<C>> f30818a;

        /* renamed from: b */
        public final Range<C> f30819b;

        /* renamed from: c */
        public final NavigableMap<Cut<C>, Range<C>> f30820c;

        /* renamed from: d */
        public final NavigableMap<Cut<C>, Range<C>> f30821d;

        /* renamed from: com.google.common.collect.TreeRangeSet$e$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$e$a.class */
        public class C7675a extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: c */
            public final /* synthetic */ Iterator f30822c;

            /* renamed from: d */
            public final /* synthetic */ Cut f30823d;

            public C7675a(Iterator it, Cut cut) {
                this.f30822c = it;
                this.f30823d = cut;
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<Cut<C>, Range<C>> mo7953a() {
                if (!this.f30822c.hasNext()) {
                    return (Map.Entry) m8454b();
                }
                Range range = (Range) this.f30822c.next();
                if (this.f30823d.isLessThan(range.lowerBound)) {
                    return (Map.Entry) m8454b();
                }
                Range intersection = range.intersection(C7674e.this.f30819b);
                return Maps.m8148a(intersection.lowerBound, intersection);
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$e$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeRangeSet$e$b.class */
        public class C7676b extends AbstractIterator<Map.Entry<Cut<C>, Range<C>>> {

            /* renamed from: c */
            public final /* synthetic */ Iterator f30825c;

            public C7676b(Iterator it) {
                this.f30825c = it;
            }

            @Override // com.google.common.collect.AbstractIterator
            /* renamed from: a */
            public Map.Entry<Cut<C>, Range<C>> mo7953a() {
                if (!this.f30825c.hasNext()) {
                    return (Map.Entry) m8454b();
                }
                Range range = (Range) this.f30825c.next();
                if (C7674e.this.f30819b.lowerBound.compareTo((Cut) range.upperBound) >= 0) {
                    return (Map.Entry) m8454b();
                }
                Range intersection = range.intersection(C7674e.this.f30819b);
                return C7674e.this.f30818a.contains(intersection.lowerBound) ? Maps.m8148a(intersection.lowerBound, intersection) : (Map.Entry) m8454b();
            }
        }

        public C7674e(Range<Cut<C>> range, Range<C> range2, NavigableMap<Cut<C>, Range<C>> navigableMap) {
            C4933n.m24795a(range);
            this.f30818a = range;
            C4933n.m24795a(range2);
            this.f30819b = range2;
            C4933n.m24795a(navigableMap);
            this.f30820c = navigableMap;
            this.f30821d = new C7671d(navigableMap);
        }

        @Override // com.google.common.collect.Maps.AbstractC7574l
        /* renamed from: a */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo7961a() {
            Iterator<Range<C>> it;
            if (!this.f30819b.isEmpty() && !this.f30818a.upperBound.isLessThan(this.f30819b.lowerBound)) {
                boolean z = false;
                if (this.f30818a.lowerBound.isLessThan(this.f30819b.lowerBound)) {
                    it = this.f30821d.tailMap(this.f30819b.lowerBound, false).values().iterator();
                } else {
                    NavigableMap<Cut<C>, Range<C>> navigableMap = this.f30820c;
                    Cut<C> endpoint = this.f30818a.lowerBound.endpoint();
                    if (this.f30818a.lowerBoundType() == BoundType.CLOSED) {
                        z = true;
                    }
                    it = navigableMap.tailMap(endpoint, z).values().iterator();
                }
                return new C7675a(it, (Cut) Ordering.natural().min(this.f30818a.upperBound, Cut.belowValue(this.f30819b.upperBound)));
            }
            return Iterators.m8270a();
        }

        /* renamed from: a */
        public NavigableMap<Cut<C>, Range<C>> headMap(Cut<C> cut, boolean z) {
            return m7958a(Range.upTo(cut, BoundType.forBoolean(z)));
        }

        /* renamed from: a */
        public NavigableMap<Cut<C>, Range<C>> subMap(Cut<C> cut, boolean z, Cut<C> cut2, boolean z2) {
            return m7958a(Range.range(cut, BoundType.forBoolean(z), cut2, BoundType.forBoolean(z2)));
        }

        /* renamed from: a */
        public final NavigableMap<Cut<C>, Range<C>> m7958a(Range<Cut<C>> range) {
            return !range.isConnected(this.f30818a) ? ImmutableSortedMap.m8330of() : new C7674e(this.f30818a.intersection(range), this.f30819b, this.f30820c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p131c.p161d.p266c.p269c.AbstractC4974e
        /* renamed from: b */
        public Iterator<Map.Entry<Cut<C>, Range<C>>> mo7956b() {
            if (this.f30819b.isEmpty()) {
                return Iterators.m8270a();
            }
            Cut cut = (Cut) Ordering.natural().min(this.f30818a.upperBound, Cut.belowValue(this.f30819b.upperBound));
            return new C7676b(this.f30820c.headMap(cut.endpoint(), cut.typeAsUpperBound() == BoundType.CLOSED).descendingMap().values().iterator());
        }

        /* renamed from: b */
        public NavigableMap<Cut<C>, Range<C>> tailMap(Cut<C> cut, boolean z) {
            return m7958a(Range.downTo(cut, BoundType.forBoolean(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super Cut<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Range<C> get(Object obj) {
            if (!(obj instanceof Cut)) {
                return null;
            }
            try {
                Cut<C> cut = (Cut) obj;
                if (this.f30818a.contains(cut) && cut.compareTo(this.f30819b.lowerBound) >= 0 && cut.compareTo(this.f30819b.upperBound) < 0) {
                    if (cut.equals(this.f30819b.lowerBound)) {
                        Range range = (Range) Maps.m8117e(this.f30820c.floorEntry(cut));
                        if (range == null || range.upperBound.compareTo((Cut) this.f30819b.lowerBound) <= 0) {
                            return null;
                        }
                        return range.intersection(this.f30819b);
                    }
                    Range range2 = (Range) this.f30820c.get(cut);
                    if (range2 != null) {
                        return range2.intersection(this.f30819b);
                    }
                    return null;
                }
                return null;
            } catch (ClassCastException e) {
                return null;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.m8249h(mo7961a());
        }
    }

    public TreeRangeSet(NavigableMap<Cut<C>, Range<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(AbstractC5016q0<C> q0Var) {
        TreeRangeSet<C> create = create();
        create.addAll(q0Var);
        return create;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> create = create();
        create.addAll(iterable);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Range<C> rangeEnclosing(Range<C> range) {
        C4933n.m24795a(range);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return (floorEntry == null || !floorEntry.getValue().encloses(range)) ? null : floorEntry.getValue();
    }

    private void replaceRangeWithSameLowerBound(Range<C> range) {
        if (range.isEmpty()) {
            this.rangesByLowerBound.remove(range.lowerBound);
        } else {
            this.rangesByLowerBound.put(range.lowerBound, range);
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public void add(Range<C> range) {
        C4933n.m24795a(range);
        if (!range.isEmpty()) {
            Cut<C> cut = range.lowerBound;
            Cut<C> cut2 = range.upperBound;
            Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(cut);
            Cut<C> cut3 = cut;
            Cut<C> cut4 = cut2;
            if (lowerEntry != null) {
                Range<C> value = lowerEntry.getValue();
                cut3 = cut;
                cut4 = cut2;
                if (value.upperBound.compareTo(cut) >= 0) {
                    cut4 = cut2;
                    if (value.upperBound.compareTo(cut2) >= 0) {
                        cut4 = value.upperBound;
                    }
                    cut3 = value.lowerBound;
                }
            }
            Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(cut4);
            Cut<C> cut5 = cut4;
            if (floorEntry != null) {
                Range<C> value2 = floorEntry.getValue();
                cut5 = cut4;
                if (value2.upperBound.compareTo(cut4) >= 0) {
                    cut5 = value2.upperBound;
                }
            }
            this.rangesByLowerBound.subMap(cut3, cut5).clear();
            replaceRangeWithSameLowerBound(Range.create(cut3, cut5));
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ void addAll(AbstractC5016q0 q0Var) {
        super.addAll(q0Var);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ void addAll(Iterable iterable) {
        super.addAll(iterable);
    }

    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.asDescendingSetOfRanges;
        Set<Range<C>> set2 = set;
        if (set == null) {
            set2 = new C7667b(this, this.rangesByLowerBound.descendingMap().values());
            this.asDescendingSetOfRanges = set2;
        }
        return set2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5016q0
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.asRanges;
        Set<Range<C>> set2 = set;
        if (set == null) {
            set2 = new C7667b(this, this.rangesByLowerBound.values());
            this.asRanges = set2;
        }
        return set2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5016q0
    public AbstractC5016q0<C> complement() {
        AbstractC5016q0<C> q0Var = this.complement;
        AbstractC5016q0<C> q0Var2 = q0Var;
        if (q0Var == null) {
            q0Var2 = new Complement();
            this.complement = q0Var2;
        }
        return q0Var2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f, p131c.p161d.p266c.p269c.AbstractC5016q0
    public boolean encloses(Range<C> range) {
        C4933n.m24795a(range);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return floorEntry != null && floorEntry.getValue().encloses(range);
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

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public boolean intersects(Range<C> range) {
        C4933n.m24795a(range);
        Map.Entry<Cut<C>, Range<C>> ceilingEntry = this.rangesByLowerBound.ceilingEntry(range.lowerBound);
        boolean z = true;
        if (ceilingEntry != null && ceilingEntry.getValue().isConnected(range) && !ceilingEntry.getValue().intersection(range).isEmpty()) {
            return true;
        }
        Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        if (lowerEntry == null || !lowerEntry.getValue().isConnected(range) || lowerEntry.getValue().intersection(range).isEmpty()) {
            z = false;
        }
        return z;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f, p131c.p161d.p266c.p269c.AbstractC5016q0
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public Range<C> rangeContaining(C c) {
        C4933n.m24795a(c);
        Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(Cut.belowValue(c));
        if (floorEntry == null || !floorEntry.getValue().contains(c)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public void remove(Range<C> range) {
        C4933n.m24795a(range);
        if (!range.isEmpty()) {
            Map.Entry<Cut<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
            if (lowerEntry != null) {
                Range<C> value = lowerEntry.getValue();
                if (value.upperBound.compareTo(range.lowerBound) >= 0) {
                    if (range.hasUpperBound() && value.upperBound.compareTo(range.upperBound) >= 0) {
                        replaceRangeWithSameLowerBound(Range.create(range.upperBound, value.upperBound));
                    }
                    replaceRangeWithSameLowerBound(Range.create(value.lowerBound, range.lowerBound));
                }
            }
            Map.Entry<Cut<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.upperBound);
            if (floorEntry != null) {
                Range<C> value2 = floorEntry.getValue();
                if (range.hasUpperBound() && value2.upperBound.compareTo(range.upperBound) >= 0) {
                    replaceRangeWithSameLowerBound(Range.create(range.upperBound, value2.upperBound));
                }
            }
            this.rangesByLowerBound.subMap(range.lowerBound, range.upperBound).clear();
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f, p131c.p161d.p266c.p269c.AbstractC5016q0
    public /* bridge */ /* synthetic */ void removeAll(AbstractC5016q0 q0Var) {
        super.removeAll(q0Var);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4979f
    public /* bridge */ /* synthetic */ void removeAll(Iterable iterable) {
        super.removeAll(iterable);
    }

    public Range<C> span() {
        Map.Entry<Cut<C>, Range<C>> firstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<Cut<C>, Range<C>> lastEntry = this.rangesByLowerBound.lastEntry();
        if (firstEntry != null) {
            return Range.create(firstEntry.getValue().lowerBound, lastEntry.getValue().upperBound);
        }
        throw new NoSuchElementException();
    }

    public AbstractC5016q0<C> subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new SubRangeSet(range);
    }
}

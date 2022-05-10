package com.google.common.collect;

import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.C4983g0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeBasedTable.class */
public class TreeBasedTable<R, C, V> extends StandardRowSortedTable<R, C, V> {
    public static final long serialVersionUID = 0;
    public final Comparator<? super C> columnComparator;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeBasedTable$Factory.class */
    public static class Factory<C, V> implements AbstractC4941s<TreeMap<C, V>>, Serializable {
        public static final long serialVersionUID = 0;
        public final Comparator<? super C> comparator;

        public Factory(Comparator<? super C> comparator) {
            this.comparator = comparator;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.comparator);
        }
    }

    /* renamed from: com.google.common.collect.TreeBasedTable$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeBasedTable$a.class */
    public class C7655a implements AbstractC4920g<Map<C, V>, Iterator<C>> {
        public C7655a(TreeBasedTable treeBasedTable) {
        }

        /* renamed from: a */
        public Iterator<C> apply(Map<C, V> map) {
            return map.keySet().iterator();
        }
    }

    /* renamed from: com.google.common.collect.TreeBasedTable$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeBasedTable$b.class */
    public class C7656b extends AbstractIterator<C> {

        /* renamed from: c */
        public C f30774c;

        /* renamed from: d */
        public final /* synthetic */ Iterator f30775d;

        /* renamed from: e */
        public final /* synthetic */ Comparator f30776e;

        public C7656b(TreeBasedTable treeBasedTable, Iterator it, Comparator comparator) {
            this.f30775d = it;
            this.f30776e = comparator;
        }

        @Override // com.google.common.collect.AbstractIterator
        /* renamed from: a */
        public C mo7953a() {
            while (this.f30775d.hasNext()) {
                C c = (C) this.f30775d.next();
                C c2 = this.f30774c;
                if (!(c2 != null && this.f30776e.compare(c, c2) == 0)) {
                    this.f30774c = c;
                    return c;
                }
            }
            this.f30774c = null;
            return m8454b();
        }
    }

    /* renamed from: com.google.common.collect.TreeBasedTable$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/TreeBasedTable$c.class */
    public class C7657c extends StandardTable<R, C, V>.C7640g implements SortedMap<C, V> {

        /* renamed from: d */
        public final C f30777d;

        /* renamed from: e */
        public final C f30778e;

        /* renamed from: f */
        public transient SortedMap<C, V> f30779f;

        public C7657c(TreeBasedTable treeBasedTable, R r) {
            this(r, null, null);
        }

        public C7657c(R r, C c, C c2) {
            super(r);
            this.f30777d = c;
            this.f30778e = c2;
            C4933n.m24791a(c == null || c2 == null || m8017a(c, c2) <= 0);
        }

        /* renamed from: a */
        public int m8017a(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        /* renamed from: a */
        public boolean m8018a(Object obj) {
            C c;
            C c2;
            return obj != null && ((c = this.f30777d) == null || m8017a(c, obj) <= 0) && ((c2 = this.f30778e) == null || m8017a(c2, obj) > 0);
        }

        @Override // com.google.common.collect.StandardTable.C7640g
        /* renamed from: b */
        public SortedMap<C, V> mo8016b() {
            return (SortedMap) super.mo8016b();
        }

        @Override // com.google.common.collect.StandardTable.C7640g
        /* renamed from: c */
        public SortedMap<C, V> mo8015c() {
            SortedMap<C, V> e = m8013e();
            if (e == null) {
                return null;
            }
            C c = this.f30777d;
            SortedMap<C, V> sortedMap = e;
            if (c != null) {
                sortedMap = e.tailMap(c);
            }
            C c2 = this.f30778e;
            SortedMap<C, V> sortedMap2 = sortedMap;
            if (c2 != null) {
                sortedMap2 = sortedMap.headMap(c2);
            }
            return sortedMap2;
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        @Override // com.google.common.collect.StandardTable.C7640g, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return m8018a(obj) && super.containsKey(obj);
        }

        @Override // com.google.common.collect.StandardTable.C7640g
        /* renamed from: d */
        public void mo8014d() {
            if (m8013e() != null && this.f30779f.isEmpty()) {
                TreeBasedTable.this.backingMap.remove(this.f30757a);
                this.f30779f = null;
                this.f30758b = null;
            }
        }

        /* renamed from: e */
        public SortedMap<C, V> m8013e() {
            SortedMap<C, V> sortedMap = this.f30779f;
            if (sortedMap == null || (sortedMap.isEmpty() && TreeBasedTable.this.backingMap.containsKey(this.f30757a))) {
                this.f30779f = (SortedMap) TreeBasedTable.this.backingMap.get(this.f30757a);
            }
            return this.f30779f;
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            if (mo8016b() != null) {
                return mo8016b().firstKey();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c) {
            C4933n.m24795a(c);
            C4933n.m24791a(m8018a(c));
            return new C7657c(this.f30757a, this.f30777d, c);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public SortedSet<C> keySet() {
            return new Maps.C7578o(this);
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            if (mo8016b() != null) {
                return mo8016b().lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.StandardTable.C7640g, java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            C4933n.m24795a(c);
            C4933n.m24791a(m8018a(c));
            return (V) super.put(c, v);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c, C c2) {
            boolean z;
            C4933n.m24795a(c);
            if (m8018a(c)) {
                C4933n.m24795a(c2);
                if (m8018a(c2)) {
                    z = true;
                    C4933n.m24791a(z);
                    return new C7657c(this.f30757a, c, c2);
                }
            }
            z = false;
            C4933n.m24791a(z);
            return new C7657c(this.f30757a, c, c2);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c) {
            C4933n.m24795a(c);
            C4933n.m24791a(m8018a(c));
            return new C7657c(this.f30757a, c, this.f30778e);
        }
    }

    public TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new Factory(comparator2));
        this.columnComparator = comparator2;
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(Ordering.natural(), Ordering.natural());
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.rowComparator(), treeBasedTable.columnComparator());
        treeBasedTable2.putAll(treeBasedTable);
        return treeBasedTable2;
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        C4933n.m24795a(comparator);
        C4933n.m24795a(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Deprecated
    public Comparator<? super C> columnComparator() {
        return this.columnComparator;
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean contains(Object obj, Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.StandardTable
    public Iterator<C> createColumnKeyIterator() {
        Comparator<? super C> columnComparator = columnComparator();
        return new C7656b(this, Iterators.m8269a(C4983g0.m24723a((Iterable) this.backingMap.values(), (AbstractC4920g) new C7655a(this)), columnComparator), columnComparator);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ void putAll(AbstractC4958a1 a1Var) {
        super.putAll(a1Var);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Object remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public SortedMap<C, V> row(R r) {
        return new C7657c(this, r);
    }

    @Deprecated
    public Comparator<? super R> rowComparator() {
        return rowKeySet().comparator();
    }

    @Override // com.google.common.collect.StandardRowSortedTable, com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.StandardRowSortedTable, com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4991i
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.StandardTable, p131c.p161d.p266c.p269c.AbstractC4991i, p131c.p161d.p266c.p269c.AbstractC4958a1
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }
}

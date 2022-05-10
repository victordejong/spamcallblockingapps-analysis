package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4958a1;
import p131c.p161d.p266c.p269c.AbstractC4977e0;
import p131c.p161d.p266c.p269c.AbstractC5021r0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Tables.class */
public final class Tables {

    /* renamed from: a */
    public static final AbstractC4920g<? extends Map<?, ?>, ? extends Map<?, ?>> f30773a = new C7653a();

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Tables$ImmutableCell.class */
    public static final class ImmutableCell<R, C, V> extends AbstractC7654b<R, C, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final C columnKey;
        public final R rowKey;
        public final V value;

        public ImmutableCell(R r, C c, V v) {
            this.rowKey = r;
            this.columnKey = c;
            this.value = v;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1.AbstractC4959a
        public C getColumnKey() {
            return this.columnKey;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1.AbstractC4959a
        public R getRowKey() {
            return this.rowKey;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4958a1.AbstractC4959a
        public V getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Tables$UnmodifiableRowSortedMap.class */
    public static final class UnmodifiableRowSortedMap<R, C, V> extends UnmodifiableTable<R, C, V> implements AbstractC5021r0<R, C, V> {
        public static final long serialVersionUID = 0;

        public UnmodifiableRowSortedMap(AbstractC5021r0<R, ? extends C, ? extends V> r0Var) {
            super(r0Var);
        }

        @Override // com.google.common.collect.Tables.UnmodifiableTable, p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC5021r0<R, C, V> delegate() {
            return (AbstractC5021r0) super.delegate();
        }

        @Override // com.google.common.collect.Tables.UnmodifiableTable, p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public SortedSet<R> rowKeySet() {
            return Collections.unmodifiableSortedSet(delegate().rowKeySet());
        }

        @Override // com.google.common.collect.Tables.UnmodifiableTable, p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public SortedMap<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableSortedMap(Maps.m8135a((SortedMap) delegate().rowMap(), Tables.m8021b()));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Tables$UnmodifiableTable.class */
    public static class UnmodifiableTable<R, C, V> extends AbstractC4977e0<R, C, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4958a1<? extends R, ? extends C, ? extends V> delegate;

        public UnmodifiableTable(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
            C4933n.m24795a(a1Var);
            this.delegate = a1Var;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Set<AbstractC4958a1.AbstractC4959a<R, C, V>> cellSet() {
            return Collections.unmodifiableSet(super.cellSet());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<R, V> column(C c) {
            return Collections.unmodifiableMap(super.column(c));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Set<C> columnKeySet() {
            return Collections.unmodifiableSet(super.columnKeySet());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<C, Map<R, V>> columnMap() {
            return Collections.unmodifiableMap(Maps.m8142a((Map) super.columnMap(), Tables.m8021b()));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC4958a1<R, C, V> delegate() {
            return (AbstractC4958a1<? extends R, ? extends C, ? extends V>) this.delegate;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public V put(R r, C c, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public void putAll(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public V remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<C, V> row(R r) {
            return Collections.unmodifiableMap(super.row(r));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Set<R> rowKeySet() {
            return Collections.unmodifiableSet(super.rowKeySet());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Map<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableMap(Maps.m8142a((Map) super.rowMap(), Tables.m8021b()));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4977e0, p131c.p161d.p266c.p269c.AbstractC4958a1
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }
    }

    /* renamed from: com.google.common.collect.Tables$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Tables$a.class */
    public static final class C7653a implements AbstractC4920g<Map<Object, Object>, Map<Object, Object>> {
        /* renamed from: a */
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    }

    /* renamed from: com.google.common.collect.Tables$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Tables$b.class */
    public static abstract class AbstractC7654b<R, C, V> implements AbstractC4958a1.AbstractC4959a<R, C, V> {
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC4958a1.AbstractC4959a)) {
                return false;
            }
            AbstractC4958a1.AbstractC4959a aVar = (AbstractC4958a1.AbstractC4959a) obj;
            if (!C4928k.m24808a(getRowKey(), aVar.getRowKey()) || !C4928k.m24808a(getColumnKey(), aVar.getColumnKey()) || !C4928k.m24808a(getValue(), aVar.getValue())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(getRowKey(), getColumnKey(), getValue());
        }

        public String toString() {
            return "(" + getRowKey() + "," + getColumnKey() + ")=" + getValue();
        }
    }

    /* renamed from: a */
    public static <R, C, V> AbstractC4958a1.AbstractC4959a<R, C, V> m8022a(R r, C c, V v) {
        return new ImmutableCell(r, c, v);
    }

    /* renamed from: a */
    public static boolean m8023a(AbstractC4958a1<?, ?, ?> a1Var, Object obj) {
        if (obj == a1Var) {
            return true;
        }
        if (obj instanceof AbstractC4958a1) {
            return a1Var.cellSet().equals(((AbstractC4958a1) obj).cellSet());
        }
        return false;
    }

    /* renamed from: b */
    public static <K, V> AbstractC4920g<Map<K, V>, Map<K, V>> m8021b() {
        return (AbstractC4920g<Map<K, V>, Map<K, V>>) f30773a;
    }
}

package com.google.common.collect;

import com.inmobi.p497a.C7997k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.C4962b1;
import p131c.p161d.p266c.p269c.C4983g0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5009o0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Ordering.class */
public abstract class Ordering<T> implements Comparator<T> {
    public static final int LEFT_IS_GREATER = 1;
    public static final int RIGHT_IS_GREATER = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Ordering$IncomparableValueException.class */
    public static class IncomparableValueException extends ClassCastException {
        public static final long serialVersionUID = 0;
        public final Object value;

        public IncomparableValueException(Object obj) {
            super("Cannot compare value: " + obj);
            this.value = obj;
        }
    }

    /* renamed from: com.google.common.collect.Ordering$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Ordering$a.class */
    public static class C7603a extends Ordering<Object> {

        /* renamed from: a */
        public final AtomicInteger f30722a = new AtomicInteger(0);

        /* renamed from: b */
        public final ConcurrentMap<Object, Integer> f30723b;

        public C7603a() {
            MapMaker mapMaker = new MapMaker();
            C5009o0.m24650a(mapMaker);
            this.f30723b = mapMaker.m8208f();
        }

        /* renamed from: a */
        public final Integer m8072a(Object obj) {
            Integer num = this.f30723b.get(obj);
            Integer num2 = num;
            if (num == null) {
                num2 = Integer.valueOf(this.f30722a.getAndIncrement());
                Integer putIfAbsent = this.f30723b.putIfAbsent(obj, num2);
                if (putIfAbsent != null) {
                    num2 = putIfAbsent;
                }
            }
            return num2;
        }

        /* renamed from: b */
        public int m8071b(Object obj) {
            return System.identityHashCode(obj);
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            int i = -1;
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int b = m8071b(obj);
            int b2 = m8071b(obj2);
            if (b != b2) {
                if (b >= b2) {
                    i = 1;
                }
                return i;
            }
            int compareTo = m8072a(obj).compareTo(m8072a(obj2));
            if (compareTo != 0) {
                return compareTo;
            }
            throw new AssertionError();
        }

        public String toString() {
            return "Ordering.arbitrary()";
        }
    }

    /* renamed from: com.google.common.collect.Ordering$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Ordering$b.class */
    public static class C7604b {

        /* renamed from: a */
        public static final Ordering<Object> f30724a = new C7603a();
    }

    public static Ordering<Object> allEqual() {
        return AllEqualOrdering.INSTANCE;
    }

    public static Ordering<Object> arbitrary() {
        return C7604b.f30724a;
    }

    public static <T> Ordering<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new CompoundOrdering(iterable);
    }

    public static <T> Ordering<T> explicit(T t, T... tArr) {
        return explicit(Lists.m8229a(t, tArr));
    }

    public static <T> Ordering<T> explicit(List<T> list) {
        return new ExplicitOrdering(list);
    }

    @Deprecated
    public static <T> Ordering<T> from(Ordering<T> ordering) {
        C4933n.m24795a(ordering);
        return ordering;
    }

    public static <T> Ordering<T> from(Comparator<T> comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new ComparatorOrdering<>(comparator);
    }

    public static <C extends Comparable> Ordering<C> natural() {
        return NaturalOrdering.INSTANCE;
    }

    public static Ordering<Object> usingToString() {
        return UsingToStringOrdering.INSTANCE;
    }

    @Deprecated
    public int binarySearch(List<? extends T> list, T t) {
        return Collections.binarySearch(list, t, this);
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);

    public <U extends T> Ordering<U> compound(Comparator<? super U> comparator) {
        C4933n.m24795a(comparator);
        return new CompoundOrdering(this, comparator);
    }

    public <E extends T> List<E> greatestOf(Iterable<E> iterable, int i) {
        return reverse().leastOf(iterable, i);
    }

    public <E extends T> List<E> greatestOf(Iterator<E> it, int i) {
        return reverse().leastOf(it, i);
    }

    public <E extends T> ImmutableList<E> immutableSortedCopy(Iterable<E> iterable) {
        return ImmutableList.sortedCopyOf(this, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        Object next = it.next();
        while (it.hasNext()) {
            Object next2 = it.next();
            if (compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isStrictlyOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        Object next = it.next();
        while (it.hasNext()) {
            Object next2 = it.next();
            if (compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public <E extends T> List<E> leastOf(Iterable<E> iterable, int i) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= i * 2) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                Object[] objArr = array;
                if (array.length > i) {
                    objArr = Arrays.copyOf(array, i);
                }
                return Collections.unmodifiableList(Arrays.asList(objArr));
            }
        }
        return leastOf(iterable.iterator(), i);
    }

    public <E extends T> List<E> leastOf(Iterator<E> it, int i) {
        C4933n.m24795a(it);
        C5006n.m24663a(i, C7997k.f31213d);
        if (i == 0 || !it.hasNext()) {
            return Collections.emptyList();
        }
        if (i >= 1073741823) {
            ArrayList a = Lists.m8227a(it);
            Collections.sort(a, this);
            if (a.size() > i) {
                a.subList(i, a.size()).clear();
            }
            a.trimToSize();
            return Collections.unmodifiableList(a);
        }
        C4962b1 a2 = C4962b1.m24734a(i, this);
        a2.m24732a((Iterator) it);
        return a2.m24737a();
    }

    public <S extends T> Ordering<Iterable<S>> lexicographical() {
        return new LexicographicalOrdering(this);
    }

    public <E extends T> E max(Iterable<E> iterable) {
        return (E) max(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E max(E e, E e2) {
        int compare = compare(e, e2);
        E e3 = e;
        if (compare < 0) {
            e3 = e2;
        }
        return e3;
    }

    public <E extends T> E max(E e, E e2, E e3, E... eArr) {
        E e4 = (E) max(max(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) max(e4, e5);
        }
        return e4;
    }

    public <E extends T> E max(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) max(next, it.next());
        }
        return next;
    }

    public <E extends T> E min(Iterable<E> iterable) {
        return (E) min(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E min(E e, E e2) {
        int compare = compare(e, e2);
        E e3 = e;
        if (compare > 0) {
            e3 = e2;
        }
        return e3;
    }

    public <E extends T> E min(E e, E e2, E e3, E... eArr) {
        E e4 = (E) min(min(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) min(e4, e5);
        }
        return e4;
    }

    public <E extends T> E min(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) min(next, it.next());
        }
        return next;
    }

    public <S extends T> Ordering<S> nullsFirst() {
        return new NullsFirstOrdering(this);
    }

    public <S extends T> Ordering<S> nullsLast() {
        return new NullsLastOrdering(this);
    }

    public <T2 extends T> Ordering<Map.Entry<T2, ?>> onKeys() {
        return (Ordering<Map.Entry<T2, ?>>) onResultOf(Maps.m8154a());
    }

    public <F> Ordering<F> onResultOf(AbstractC4920g<F, ? extends T> gVar) {
        return new ByFunctionOrdering(gVar, this);
    }

    public <S extends T> Ordering<S> reverse() {
        return new ReverseOrdering(this);
    }

    public <E extends T> List<E> sortedCopy(Iterable<E> iterable) {
        Object[] e = C4983g0.m24713e(iterable);
        Arrays.sort(e, this);
        return Lists.m8230a(Arrays.asList(e));
    }
}

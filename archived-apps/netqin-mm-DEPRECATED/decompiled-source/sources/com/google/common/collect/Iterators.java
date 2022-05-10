package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4956a;
import p131c.p161d.p266c.p269c.AbstractC4968c1;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.AbstractC4981f1;
import p131c.p161d.p266c.p269c.AbstractC5007n0;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators.class */
public final class Iterators {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$EmptyModifiableIterator.class */
    public enum EmptyModifiableIterator implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(false);
        }
    }

    /* renamed from: com.google.common.collect.Iterators$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$a.class */
    public static final class C7502a extends AbstractC4978e1<T> {

        /* renamed from: a */
        public final /* synthetic */ Iterator f30583a;

        public C7502a(Iterator it) {
            this.f30583a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30583a.hasNext();
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            return this.f30583a.next();
        }
    }

    /* renamed from: com.google.common.collect.Iterators$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$b.class */
    public static final class C7503b extends AbstractIterator<T> {

        /* renamed from: c */
        public final /* synthetic */ Iterator f30584c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC4934o f30585d;

        public C7503b(Iterator it, AbstractC4934o oVar) {
            this.f30584c = it;
            this.f30585d = oVar;
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [T, java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.common.collect.AbstractIterator
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public T mo7953a() {
            /*
                r3 = this;
            L_0x0000:
                r0 = r3
                java.util.Iterator r0 = r0.f30584c
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x0025
                r0 = r3
                java.util.Iterator r0 = r0.f30584c
                java.lang.Object r0 = r0.next()
                r4 = r0
                r0 = r3
                c.d.c.a.o r0 = r0.f30585d
                r1 = r4
                boolean r0 = r0.apply(r1)
                if (r0 == 0) goto L_0x0000
                r0 = r4
                return r0
            L_0x0025:
                r0 = r3
                java.lang.Object r0 = r0.m8454b()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Iterators.C7503b.mo7953a():java.lang.Object");
        }
    }

    /* renamed from: com.google.common.collect.Iterators$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$c.class */
    public static final class C7504c extends AbstractC4968c1<F, T> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC4920g f30586b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7504c(Iterator it, AbstractC4920g gVar) {
            super(it);
            this.f30586b = gVar;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
        /* renamed from: a */
        public T mo8028a(F f) {
            return this.f30586b.apply(f);
        }
    }

    /* renamed from: com.google.common.collect.Iterators$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$d.class */
    public static final class C7505d extends AbstractC4978e1<T> {

        /* renamed from: a */
        public boolean f30587a;

        /* renamed from: b */
        public final /* synthetic */ Object f30588b;

        public C7505d(Object obj) {
            this.f30588b = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f30587a;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
        @Override // java.util.Iterator
        public T next() {
            if (!this.f30587a) {
                this.f30587a = true;
                return this.f30588b;
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: com.google.common.collect.Iterators$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$e.class */
    public static final class C7506e<T> extends AbstractC4956a<T> {

        /* renamed from: e */
        public static final AbstractC4981f1<Object> f30589e = new C7506e(new Object[0], 0, 0, 0);

        /* renamed from: c */
        public final T[] f30590c;

        /* renamed from: d */
        public final int f30591d;

        public C7506e(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.f30590c = tArr;
            this.f30591d = i;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4956a
        /* renamed from: a */
        public T mo8246a(int i) {
            return this.f30590c[this.f30591d + i];
        }
    }

    /* renamed from: com.google.common.collect.Iterators$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$f.class */
    public static class C7507f<T> implements Iterator<T> {

        /* renamed from: a */
        public Iterator<? extends T> f30592a;

        /* renamed from: b */
        public Iterator<? extends T> f30593b = Iterators.m8270a();

        /* renamed from: c */
        public Iterator<? extends Iterator<? extends T>> f30594c;

        /* renamed from: d */
        public Deque<Iterator<? extends Iterator<? extends T>>> f30595d;

        public C7507f(Iterator<? extends Iterator<? extends T>> it) {
            C4933n.m24795a(it);
            this.f30594c = it;
        }

        /* renamed from: a */
        public final Iterator<? extends Iterator<? extends T>> m8245a() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it = this.f30594c;
                if (it != null && it.hasNext()) {
                    return this.f30594c;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.f30595d;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f30594c = this.f30595d.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (true) {
                Iterator<? extends T> it = this.f30593b;
                C4933n.m24795a(it);
                if (it.hasNext()) {
                    return true;
                }
                Iterator<? extends Iterator<? extends T>> a = m8245a();
                this.f30594c = a;
                if (a == null) {
                    return false;
                }
                Iterator<? extends T> it2 = (Iterator) a.next();
                this.f30593b = it2;
                if (it2 instanceof C7507f) {
                    C7507f fVar = (C7507f) it2;
                    this.f30593b = fVar.f30593b;
                    if (this.f30595d == null) {
                        this.f30595d = new ArrayDeque();
                    }
                    this.f30595d.addFirst(this.f30594c);
                    if (fVar.f30595d != null) {
                        while (!fVar.f30595d.isEmpty()) {
                            this.f30595d.addFirst(fVar.f30595d.removeLast());
                        }
                    }
                    this.f30594c = fVar.f30594c;
                }
            }
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                Iterator<? extends T> it = this.f30593b;
                this.f30592a = it;
                return (T) it.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30592a != null);
            this.f30592a.remove();
            this.f30592a = null;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$g.class */
    public static class C7508g<T> extends AbstractC4978e1<T> {

        /* renamed from: a */
        public final Queue<AbstractC5007n0<T>> f30596a;

        /* renamed from: com.google.common.collect.Iterators$g$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$g$a.class */
        public class C7509a implements Comparator<AbstractC5007n0<T>> {

            /* renamed from: a */
            public final /* synthetic */ Comparator f30597a;

            public C7509a(C7508g gVar, Comparator comparator) {
                this.f30597a = comparator;
            }

            /* renamed from: a */
            public int compare(AbstractC5007n0<T> n0Var, AbstractC5007n0<T> n0Var2) {
                return this.f30597a.compare(n0Var.peek(), n0Var2.peek());
            }
        }

        public C7508g(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
            this.f30596a = new PriorityQueue(2, new C7509a(this, comparator));
            Iterator<? extends Iterator<? extends T>> it = iterable.iterator();
            while (it.hasNext()) {
                Iterator it2 = (Iterator) it.next();
                if (it2.hasNext()) {
                    this.f30596a.add(Iterators.m8251f(it2));
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f30596a.isEmpty();
        }

        @Override // java.util.Iterator
        public T next() {
            AbstractC5007n0<T> remove = this.f30596a.remove();
            T next = remove.next();
            if (remove.hasNext()) {
                this.f30596a.add(remove);
            }
            return next;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Iterators$h.class */
    public static class C7510h<E> implements AbstractC5007n0<E> {

        /* renamed from: a */
        public final Iterator<? extends E> f30598a;

        /* renamed from: b */
        public boolean f30599b;

        /* renamed from: c */
        public E f30600c;

        public C7510h(Iterator<? extends E> it) {
            C4933n.m24795a(it);
            this.f30598a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30599b || this.f30598a.hasNext();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5007n0, java.util.Iterator
        public E next() {
            if (!this.f30599b) {
                return (E) this.f30598a.next();
            }
            E e = this.f30600c;
            this.f30599b = false;
            this.f30600c = null;
            return e;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5007n0
        public E peek() {
            if (!this.f30599b) {
                this.f30600c = (E) this.f30598a.next();
                this.f30599b = true;
            }
            return this.f30600c;
        }

        @Override // java.util.Iterator
        public void remove() {
            C4933n.m24775b(!this.f30599b, "Can't remove after you've peeked at next");
            this.f30598a.remove();
        }
    }

    /* renamed from: a */
    public static int m8265a(Iterator<?> it, int i) {
        C4933n.m24795a(it);
        int i2 = 0;
        C4933n.m24790a(i >= 0, "numberToAdvance must be nonnegative");
        while (i2 < i && it.hasNext()) {
            it.next();
            i2++;
        }
        return i2;
    }

    /* renamed from: a */
    public static <T> AbstractC4978e1<T> m8270a() {
        return m8259b();
    }

    /* renamed from: a */
    public static <T> AbstractC4978e1<T> m8269a(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        C4933n.m24794a(iterable, "iterators");
        C4933n.m24794a(comparator, "comparator");
        return new C7508g(iterable, comparator);
    }

    /* renamed from: a */
    public static <T> AbstractC4978e1<T> m8268a(T t) {
        return new C7505d(t);
    }

    /* renamed from: a */
    public static <T> AbstractC4978e1<T> m8263a(Iterator<T> it, AbstractC4934o<? super T> oVar) {
        C4933n.m24795a(it);
        C4933n.m24795a(oVar);
        return new C7503b(it, oVar);
    }

    /* renamed from: a */
    public static <F, T> Iterator<T> m8264a(Iterator<F> it, AbstractC4920g<? super F, ? extends T> gVar) {
        C4933n.m24795a(gVar);
        return new C7504c(it, gVar);
    }

    /* renamed from: a */
    public static <T> ListIterator<T> m8266a(Iterator<T> it) {
        return (ListIterator) it;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> boolean m8267a(Collection<T> collection, Iterator<? extends T> it) {
        C4933n.m24795a(collection);
        C4933n.m24795a(it);
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m8262a(Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m8261a(Iterator<?> it, Collection<?> collection) {
        C4933n.m24795a(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8260a(java.util.Iterator<?> r3, java.util.Iterator<?> r4) {
        /*
        L_0x0000:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0028
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0014
            r0 = 0
            return r0
        L_0x0014:
            r0 = r3
            java.lang.Object r0 = r0.next()
            r1 = r4
            java.lang.Object r1 = r1.next()
            boolean r0 = p131c.p161d.p266c.p267a.C4928k.m24808a(r0, r1)
            if (r0 != 0) goto L_0x0000
            r0 = 0
            return r0
        L_0x0028:
            r0 = r4
            boolean r0 = r0.hasNext()
            r1 = 1
            r0 = r0 ^ r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Iterators.m8260a(java.util.Iterator, java.util.Iterator):boolean");
    }

    /* renamed from: b */
    public static <T> AbstractC4981f1<T> m8259b() {
        return (AbstractC4981f1<T>) C7506e.f30589e;
    }

    /* renamed from: b */
    public static <T> T m8257b(Iterator<? extends T> it, T t) {
        if (it.hasNext()) {
            t = (T) it.next();
        }
        return t;
    }

    /* renamed from: b */
    public static void m8258b(Iterator<?> it) {
        C4933n.m24795a(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    /* renamed from: b */
    public static boolean m8256b(Iterator<?> it, Collection<?> collection) {
        C4933n.m24795a(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public static <T> Iterator<T> m8255c() {
        return EmptyModifiableIterator.INSTANCE;
    }

    /* renamed from: c */
    public static <T> Iterator<T> m8254c(Iterator<? extends Iterator<? extends T>> it) {
        return new C7507f(it);
    }

    /* renamed from: d */
    public static <T> T m8253d(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    /* renamed from: e */
    public static <T> T m8252e(Iterator<T> it) {
        T next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("expected one element but was: <");
        sb.append(next);
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            sb.append(", ");
            sb.append(it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: f */
    public static <T> AbstractC5007n0<T> m8251f(Iterator<? extends T> it) {
        return it instanceof C7510h ? (C7510h) it : new C7510h(it);
    }

    /* renamed from: g */
    public static <T> T m8250g(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    /* renamed from: h */
    public static int m8249h(Iterator<?> it) {
        long j = 0;
        while (it.hasNext()) {
            it.next();
            j++;
        }
        return Ints.m7808b(j);
    }

    /* renamed from: i */
    public static String m8248i(Iterator<?> it) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(it.next());
        }
        sb.append(']');
        return sb.toString();
    }

    /* renamed from: j */
    public static <T> AbstractC4978e1<T> m8247j(Iterator<? extends T> it) {
        C4933n.m24795a(it);
        return it instanceof AbstractC4978e1 ? (AbstractC4978e1) it : new C7502a(it);
    }
}

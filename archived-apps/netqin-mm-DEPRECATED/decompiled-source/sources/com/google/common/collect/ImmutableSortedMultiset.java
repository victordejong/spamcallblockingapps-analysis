package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC5033w0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p272f.C5058c;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSortedMultiset.class */
public abstract class ImmutableSortedMultiset<E> extends ImmutableSortedMultisetFauxverideShim<E> implements AbstractC5033w0<E> {
    public transient ImmutableSortedMultiset<E> descendingMultiset;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSortedMultiset$SerializedForm.class */
    public static final class SerializedForm<E> implements Serializable {
        public final Comparator<? super E> comparator;
        public final int[] counts;
        public final E[] elements;

        public SerializedForm(AbstractC5033w0<E> w0Var) {
            this.comparator = w0Var.comparator();
            int size = w0Var.entrySet().size();
            this.elements = (E[]) new Object[size];
            this.counts = new int[size];
            int i = 0;
            for (AbstractC4997j0.AbstractC4998a<E> aVar : w0Var.entrySet()) {
                this.elements[i] = aVar.getElement();
                this.counts[i] = aVar.getCount();
                i++;
            }
        }

        public Object readResolve() {
            int length = this.elements.length;
            C7498a aVar = new C7498a(this.comparator);
            for (int i = 0; i < length; i++) {
                aVar.mo8302a((C7498a) this.elements[i], this.counts[i]);
            }
            return aVar.mo8304a();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSortedMultiset$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableSortedMultiset$a.class */
    public static class C7498a<E> extends ImmutableMultiset.C7484b<E> {

        /* renamed from: d */
        public final Comparator<? super E> f30574d;

        /* renamed from: e */
        public E[] f30575e = (E[]) new Object[4];

        /* renamed from: f */
        public int[] f30576f = new int[4];

        /* renamed from: g */
        public int f30577g;

        /* renamed from: h */
        public boolean f30578h;

        public C7498a(Comparator<? super E> comparator) {
            super(true);
            C4933n.m24795a(comparator);
            this.f30574d = comparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMultiset.C7484b, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7498a<E> mo8303a(Iterable<? extends E> iterable) {
            if (iterable instanceof AbstractC4997j0) {
                for (AbstractC4997j0.AbstractC4998a<E> aVar : ((AbstractC4997j0) iterable).entrySet()) {
                    mo8302a((C7498a<E>) aVar.getElement(), aVar.getCount());
                }
            } else {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    mo8284a((C7498a<E>) it.next());
                }
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.C7484b, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7498a<E> mo8284a(E e) {
            mo8302a((C7498a<E>) e, 1);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.C7484b
        /* renamed from: a */
        public C7498a<E> mo8302a(E e, int i) {
            C4933n.m24795a(e);
            C5006n.m24663a(i, "occurrences");
            if (i == 0) {
                return this;
            }
            m8299c();
            E[] eArr = this.f30575e;
            int i2 = this.f30577g;
            eArr[i2] = e;
            this.f30576f[i2] = i;
            this.f30577g = i2 + 1;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMultiset.C7484b, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7498a<E> mo8283a(Iterator<? extends E> it) {
            while (it.hasNext()) {
                mo8284a((C7498a<E>) it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.C7484b, com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public C7498a<E> mo8282a(E... eArr) {
            for (E e : eArr) {
                mo8284a((C7498a<E>) e);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.C7484b
        /* renamed from: a */
        public ImmutableSortedMultiset<E> mo8304a() {
            m8300b();
            int i = this.f30577g;
            if (i == 0) {
                return ImmutableSortedMultiset.emptyMultiset(this.f30574d);
            }
            RegularImmutableSortedSet regularImmutableSortedSet = (RegularImmutableSortedSet) ImmutableSortedSet.construct(this.f30574d, i, this.f30575e);
            long[] jArr = new long[this.f30577g + 1];
            int i2 = 0;
            while (i2 < this.f30577g) {
                int i3 = i2 + 1;
                jArr[i3] = jArr[i2] + this.f30576f[i2];
                i2 = i3;
            }
            this.f30578h = true;
            return new RegularImmutableSortedMultiset(regularImmutableSortedSet, jArr, 0, this.f30577g);
        }

        /* renamed from: a */
        public final void m8301a(boolean z) {
            int i = this.f30577g;
            if (i != 0) {
                Object[] copyOf = Arrays.copyOf(this.f30575e, i);
                Arrays.sort(copyOf, this.f30574d);
                int i2 = 1;
                for (int i3 = 1; i3 < copyOf.length; i3++) {
                    i2 = i2;
                    if (this.f30574d.compare(copyOf[i2 - 1], copyOf[i3]) < 0) {
                        copyOf[i2] = copyOf[i3];
                        i2++;
                    }
                }
                Arrays.fill(copyOf, i2, this.f30577g, (Object) null);
                E[] eArr = (E[]) copyOf;
                if (z) {
                    int i4 = this.f30577g;
                    eArr = (E[]) copyOf;
                    if (i2 * 4 > i4 * 3) {
                        eArr = (E[]) Arrays.copyOf(copyOf, C5058c.m24584c(i4, (i4 / 2) + 1));
                    }
                }
                int[] iArr = new int[eArr.length];
                for (int i5 = 0; i5 < this.f30577g; i5++) {
                    int binarySearch = Arrays.binarySearch(eArr, 0, i2, this.f30575e[i5], this.f30574d);
                    int[] iArr2 = this.f30576f;
                    if (iArr2[i5] >= 0) {
                        iArr[binarySearch] = iArr[binarySearch] + iArr2[i5];
                    } else {
                        iArr[binarySearch] = iArr2[i5] ^ (-1);
                    }
                }
                this.f30575e = eArr;
                this.f30576f = iArr;
                this.f30577g = i2;
            }
        }

        /* renamed from: b */
        public final void m8300b() {
            m8301a(false);
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = this.f30577g;
                if (i < i3) {
                    int[] iArr = this.f30576f;
                    i2 = i2;
                    if (iArr[i] > 0) {
                        E[] eArr = this.f30575e;
                        eArr[i2] = eArr[i];
                        iArr[i2] = iArr[i];
                        i2++;
                    }
                    i++;
                } else {
                    Arrays.fill(this.f30575e, i2, i3, (Object) null);
                    Arrays.fill(this.f30576f, i2, this.f30577g, 0);
                    this.f30577g = i2;
                    return;
                }
            }
        }

        /* renamed from: c */
        public final void m8299c() {
            int i = this.f30577g;
            E[] eArr = this.f30575e;
            if (i == eArr.length) {
                m8301a(true);
            } else if (this.f30578h) {
                this.f30575e = (E[]) Arrays.copyOf(eArr, eArr.length);
            }
            this.f30578h = false;
        }
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(Ordering.natural(), iterable);
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof ImmutableSortedMultiset) {
            ImmutableSortedMultiset<E> immutableSortedMultiset = (ImmutableSortedMultiset) iterable;
            if (comparator.equals(immutableSortedMultiset.comparator())) {
                return immutableSortedMultiset.isPartialView() ? copyOfSortedEntries(comparator, immutableSortedMultiset.entrySet().asList()) : immutableSortedMultiset;
            }
        }
        C7498a aVar = new C7498a(comparator);
        aVar.mo8303a((Iterable) iterable);
        return aVar.mo8304a();
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        C4933n.m24795a(comparator);
        C7498a aVar = new C7498a(comparator);
        aVar.mo8283a((Iterator) it);
        return aVar.mo8304a();
    }

    public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> it) {
        return copyOf(Ordering.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    public static ImmutableSortedMultiset copyOf(Comparable[] comparableArr) {
        return copyOf(Ordering.natural(), Arrays.asList(comparableArr));
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSorted(AbstractC5033w0<E> w0Var) {
        return copyOfSortedEntries(w0Var.comparator(), Lists.m8230a(w0Var.entrySet()));
    }

    public static <E> ImmutableSortedMultiset<E> copyOfSortedEntries(Comparator<? super E> comparator, Collection<AbstractC4997j0.AbstractC4998a<E>> collection) {
        if (collection.isEmpty()) {
            return emptyMultiset(comparator);
        }
        ImmutableList.C7470a aVar = new ImmutableList.C7470a(collection.size());
        long[] jArr = new long[collection.size() + 1];
        int i = 0;
        for (AbstractC4997j0.AbstractC4998a<E> aVar2 : collection) {
            aVar.mo8284a((ImmutableList.C7470a) aVar2.getElement());
            int i2 = i + 1;
            jArr[i2] = jArr[i] + aVar2.getCount();
            i = i2;
        }
        return new RegularImmutableSortedMultiset(new RegularImmutableSortedSet(aVar.m8387a(), comparator), jArr, 0, collection.size());
    }

    public static <E> ImmutableSortedMultiset<E> emptyMultiset(Comparator<? super E> comparator) {
        return Ordering.natural().equals(comparator) ? (ImmutableSortedMultiset<E>) RegularImmutableSortedMultiset.NATURAL_EMPTY_MULTISET : new RegularImmutableSortedMultiset(comparator);
    }

    public static <E extends Comparable<?>> C7498a<E> naturalOrder() {
        return new C7498a<>(Ordering.natural());
    }

    /* renamed from: of */
    public static <E> ImmutableSortedMultiset<E> m8311of() {
        return (ImmutableSortedMultiset<E>) RegularImmutableSortedMultiset.NATURAL_EMPTY_MULTISET;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedMultiset m8310of(Comparable comparable) {
        return new RegularImmutableSortedMultiset((RegularImmutableSortedSet) ImmutableSortedSet.m8291of(comparable), new long[]{0, 1}, 0, 1);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedMultiset m8309of(Comparable comparable, Comparable comparable2) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedMultiset m8308of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedMultiset m8307of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedMultiset m8306of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return copyOf(Ordering.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedMultiset<TE;>; */
    /* renamed from: of */
    public static ImmutableSortedMultiset m8305of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList b = Lists.m8224b(comparableArr.length + 6);
        Collections.addAll(b, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(b, comparableArr);
        return copyOf(Ordering.natural(), b);
    }

    public static <E> C7498a<E> orderedBy(Comparator<E> comparator) {
        return new C7498a<>(comparator);
    }

    public static <E extends Comparable<?>> C7498a<E> reverseOrder() {
        return new C7498a<>(Ordering.natural().reverse());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0, p131c.p161d.p266c.p269c.AbstractC5029u0
    public final Comparator<? super E> comparator() {
        return elementSet().comparator();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public ImmutableSortedMultiset<E> descendingMultiset() {
        ImmutableSortedMultiset<E> immutableSortedMultiset = this.descendingMultiset;
        ImmutableSortedMultiset<E> immutableSortedMultiset2 = immutableSortedMultiset;
        if (immutableSortedMultiset == null) {
            immutableSortedMultiset2 = isEmpty() ? emptyMultiset(Ordering.from(comparator()).reverse()) : new DescendingImmutableSortedMultiset<>(this);
            this.descendingMultiset = immutableSortedMultiset2;
        }
        return immutableSortedMultiset2;
    }

    @Override // com.google.common.collect.ImmutableMultiset, p131c.p161d.p266c.p269c.AbstractC4997j0
    public abstract ImmutableSortedSet<E> elementSet();

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public abstract ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType);

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    @Deprecated
    public final AbstractC4997j0.AbstractC4998a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    @Deprecated
    public final AbstractC4997j0.AbstractC4998a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public ImmutableSortedMultiset<E> subMultiset(E e, BoundType boundType, E e2, BoundType boundType2) {
        C4933n.m24781a(comparator().compare(e, e2) <= 0, "Expected lowerBound <= upperBound but %s > %s", e, e2);
        return tailMultiset((ImmutableSortedMultiset<E>) e, boundType).headMultiset((ImmutableSortedMultiset<E>) e2, boundType2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5033w0
    public abstract ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType);

    @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(this);
    }
}

package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.z1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/z1.class */
public final class C7736z1 extends AbstractC7692t<Long> implements AbstractC7626k1<Long>, RandomAccess {

    /* renamed from: b */
    public long[] f18099b;

    /* renamed from: c */
    public int f18100c;

    static {
        new C7736z1().mo19803k();
    }

    public C7736z1() {
        this(new long[10], 0);
    }

    public C7736z1(long[] jArr, int i) {
        this.f18099b = jArr;
        this.f18100c = i;
    }

    /* renamed from: a */
    public final void m19633a(int i, long j) {
        int i2;
        m19805b();
        if (i < 0 || i > (i2 = this.f18100c)) {
            throw new IndexOutOfBoundsException(m19628i(i));
        }
        long[] jArr = this.f18099b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f18099b, i, jArr2, i + 1, this.f18100c - i);
            this.f18099b = jArr2;
        }
        this.f18099b[i] = j;
        this.f18100c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public final void m19632a(long j) {
        m19633a(this.f18100c, j);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19633a(i, ((Long) obj).longValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        m19805b();
        C7602h1.m20132a(collection);
        if (!(collection instanceof C7736z1)) {
            return super.addAll(collection);
        }
        C7736z1 z1Var = (C7736z1) collection;
        int i = z1Var.f18100c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18100c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f18099b;
            if (i3 > jArr.length) {
                this.f18099b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(z1Var.f18099b, 0, this.f18099b, this.f18100c, z1Var.f18100c);
            this.f18100c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7626k1<Long> mo19631c(int i) {
        if (i >= this.f18100c) {
            return new C7736z1(Arrays.copyOf(this.f18099b, i), this.f18100c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7736z1)) {
            return super.equals(obj);
        }
        C7736z1 z1Var = (C7736z1) obj;
        if (this.f18100c != z1Var.f18100c) {
            return false;
        }
        long[] jArr = z1Var.f18099b;
        for (int i = 0; i < this.f18100c; i++) {
            if (this.f18099b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final long m19630g(int i) {
        m19629h(i);
        return this.f18099b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(m19630g(i));
    }

    /* renamed from: h */
    public final void m19629h(int i) {
        if (i < 0 || i >= this.f18100c) {
            throw new IndexOutOfBoundsException(m19628i(i));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18100c; i2++) {
            i = (i * 31) + C7602h1.m20134a(this.f18099b[i2]);
        }
        return i;
    }

    /* renamed from: i */
    public final String m19628i(int i) {
        int i2 = this.f18100c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m19805b();
        m19629h(i);
        long[] jArr = this.f18099b;
        long j = jArr[i];
        int i2 = this.f18100c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, i2 - i);
        }
        this.f18100c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7692t, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m19805b();
        for (int i = 0; i < this.f18100c; i++) {
            if (obj.equals(Long.valueOf(this.f18099b[i]))) {
                long[] jArr = this.f18099b;
                System.arraycopy(jArr, i + 1, jArr, i, this.f18100c - i);
                this.f18100c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m19805b();
        if (i2 >= i) {
            long[] jArr = this.f18099b;
            System.arraycopy(jArr, i2, jArr, i, this.f18100c - i2);
            this.f18100c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m19805b();
        m19629h(i);
        long[] jArr = this.f18099b;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18100c;
    }
}

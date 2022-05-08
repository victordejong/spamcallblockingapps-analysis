package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.o1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/o1.class */
public final class C7884o1 extends AbstractC7964z<Integer> implements AbstractC7912s1<Integer>, AbstractC7803f3, RandomAccess {

    /* renamed from: b */
    public int[] f18493b;

    /* renamed from: c */
    public int f18494c;

    static {
        new C7884o1().mo18745a();
    }

    public C7884o1() {
        this(new int[10], 0);
    }

    public C7884o1(int[] iArr, int i) {
        this.f18493b = iArr;
        this.f18494c = i;
    }

    /* renamed from: a */
    public final void m19117a(int i, int i2) {
        int i3;
        m18744b();
        if (i < 0 || i > (i3 = this.f18494c)) {
            throw new IndexOutOfBoundsException(m19114h(i));
        }
        int[] iArr = this.f18493b;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f18493b, i, iArr2, i + 1, this.f18494c - i);
            this.f18493b = iArr2;
        }
        this.f18493b[i] = i2;
        this.f18494c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m19117a(i, ((Integer) obj).intValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m18744b();
        C7891p1.m19105a(collection);
        if (!(collection instanceof C7884o1)) {
            return super.addAll(collection);
        }
        C7884o1 o1Var = (C7884o1) collection;
        int i = o1Var.f18494c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18494c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f18493b;
            if (i3 > iArr.length) {
                this.f18493b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(o1Var.f18493b, 0, this.f18493b, this.f18494c, o1Var.f18494c);
            this.f18494c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7912s1
    /* renamed from: c */
    public final /* synthetic */ AbstractC7912s1<Integer> mo18849c(int i) {
        if (i >= this.f18494c) {
            return new C7884o1(Arrays.copyOf(this.f18493b, i), this.f18494c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7884o1)) {
            return super.equals(obj);
        }
        C7884o1 o1Var = (C7884o1) obj;
        if (this.f18494c != o1Var.f18494c) {
            return false;
        }
        int[] iArr = o1Var.f18493b;
        for (int i = 0; i < this.f18494c; i++) {
            if (this.f18493b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m19116f(int i) {
        m19117a(this.f18494c, i);
    }

    /* renamed from: g */
    public final void m19115g(int i) {
        if (i < 0 || i >= this.f18494c) {
            throw new IndexOutOfBoundsException(m19114h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        m19115g(i);
        return this.f18493b[i];
    }

    /* renamed from: h */
    public final String m19114h(int i) {
        int i2 = this.f18494c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18494c; i2++) {
            i = (i * 31) + this.f18493b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m18744b();
        m19115g(i);
        int[] iArr = this.f18493b;
        int i2 = iArr[i];
        int i3 = this.f18494c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, i3 - i);
        }
        this.f18494c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7964z, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m18744b();
        for (int i = 0; i < this.f18494c; i++) {
            if (obj.equals(Integer.valueOf(this.f18493b[i]))) {
                int[] iArr = this.f18493b;
                System.arraycopy(iArr, i + 1, iArr, i, this.f18494c - i);
                this.f18494c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m18744b();
        if (i2 >= i) {
            int[] iArr = this.f18493b;
            System.arraycopy(iArr, i2, iArr, i, this.f18494c - i2);
            this.f18494c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m18744b();
        m19115g(i);
        int[] iArr = this.f18493b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18494c;
    }
}

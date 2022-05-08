package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.d4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/d4.class */
public final class C8582d4 extends AbstractC8690o2<Integer> implements AbstractC8638i4<Integer>, AbstractC8748u5, RandomAccess {

    /* renamed from: b */
    public int[] f19658b;

    /* renamed from: c */
    public int f19659c;

    static {
        new C8582d4().mo17285g();
    }

    public C8582d4() {
        this(new int[10], 0);
    }

    public C8582d4(int[] iArr, int i) {
        this.f19658b = iArr;
        this.f19659c = i;
    }

    /* renamed from: a */
    public final void m17710a(int i, int i2) {
        int i3;
        m17286f();
        if (i < 0 || i > (i3 = this.f19659c)) {
            throw new IndexOutOfBoundsException(m17708h(i));
        }
        int[] iArr = this.f19658b;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f19658b, i, iArr2, i + 1, this.f19659c - i);
            this.f19658b = iArr2;
        }
        this.f19658b[i] = i2;
        this.f19659c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m17710a(i, ((Integer) obj).intValue());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m17286f();
        C8591e4.m17688a(collection);
        if (!(collection instanceof C8582d4)) {
            return super.addAll(collection);
        }
        C8582d4 d4Var = (C8582d4) collection;
        int i = d4Var.f19659c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19659c;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f19658b;
            if (i3 > iArr.length) {
                this.f19658b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(d4Var.f19658b, 0, this.f19658b, this.f19659c, d4Var.f19659c);
            this.f19659c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8582d4)) {
            return super.equals(obj);
        }
        C8582d4 d4Var = (C8582d4) obj;
        if (this.f19659c != d4Var.f19659c) {
            return false;
        }
        int[] iArr = d4Var.f19658b;
        for (int i = 0; i < this.f19659c; i++) {
            if (this.f19658b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: f */
    public final /* synthetic */ AbstractC8638i4<Integer> mo16949f(int i) {
        if (i >= this.f19659c) {
            return new C8582d4(Arrays.copyOf(this.f19658b, i), this.f19659c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: g */
    public final void m17709g(int i) {
        if (i < 0 || i >= this.f19659c) {
            throw new IndexOutOfBoundsException(m17708h(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        m17709g(i);
        return this.f19658b[i];
    }

    /* renamed from: h */
    public final String m17708h(int i) {
        int i2 = this.f19659c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19659c; i2++) {
            i = (i * 31) + this.f19658b[i2];
        }
        return i;
    }

    /* renamed from: i */
    public final void m17707i(int i) {
        m17710a(this.f19659c, i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m17286f();
        m17709g(i);
        int[] iArr = this.f19658b;
        int i2 = iArr[i];
        int i3 = this.f19659c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, i3 - i);
        }
        this.f19659c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8690o2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m17286f();
        for (int i = 0; i < this.f19659c; i++) {
            if (obj.equals(Integer.valueOf(this.f19658b[i]))) {
                int[] iArr = this.f19658b;
                System.arraycopy(iArr, i + 1, iArr, i, this.f19659c - i);
                this.f19659c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m17286f();
        if (i2 >= i) {
            int[] iArr = this.f19658b;
            System.arraycopy(iArr, i2, iArr, i, this.f19659c - i2);
            this.f19659c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m17286f();
        m17709g(i);
        int[] iArr = this.f19658b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19659c;
    }
}

package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekk;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.a.x80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x80.class */
public final class x80<E> extends t60<E> implements RandomAccess {

    /* renamed from: d */
    public static final x80<Object> f16004d;

    /* renamed from: b */
    public E[] f16005b;

    /* renamed from: c */
    public int f16006c;

    static {
        x80<Object> x80Var = new x80<>(new Object[0], 0);
        f16004d = x80Var;
        x80Var.mo12361A();
    }

    public x80(E[] eArr, int i) {
        this.f16005b = eArr;
        this.f16006c = i;
    }

    /* renamed from: b */
    public static <E> x80<E> m26168b() {
        return (x80<E>) f16004d;
    }

    /* renamed from: a */
    public final void m26169a(int i) {
        if (i < 0 || i >= this.f16006c) {
            throw new IndexOutOfBoundsException(m26167f(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m26328a();
        if (i < 0 || i > (i2 = this.f16006c)) {
            throw new IndexOutOfBoundsException(m26167f(i));
        }
        E[] eArr = this.f16005b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f16005b, i, eArr2, i + 1, this.f16006c - i);
            this.f16005b = eArr2;
        }
        this.f16005b[i] = e;
        this.f16006c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m26328a();
        int i = this.f16006c;
        E[] eArr = this.f16005b;
        if (i == eArr.length) {
            this.f16005b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f16005b;
        int i2 = this.f16006c;
        this.f16006c = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzekk
    /* renamed from: e */
    public final /* synthetic */ zzekk mo12357e(int i) {
        if (i >= this.f16006c) {
            return new x80(Arrays.copyOf(this.f16005b, i), this.f16006c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: f */
    public final String m26167f(int i) {
        int i2 = this.f16006c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        m26169a(i);
        return this.f16005b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m26328a();
        m26169a(i);
        E[] eArr = this.f16005b;
        E e = eArr[i];
        int i2 = this.f16006c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f16006c--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m26328a();
        m26169a(i);
        E[] eArr = this.f16005b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16006c;
    }
}

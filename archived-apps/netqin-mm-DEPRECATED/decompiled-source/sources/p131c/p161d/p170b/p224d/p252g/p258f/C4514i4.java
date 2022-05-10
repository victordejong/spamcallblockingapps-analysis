package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzig;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.f.i4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/i4.class */
public final class C4514i4<E> extends AbstractC4498g2<E> implements RandomAccess {

    /* renamed from: d */
    public static final C4514i4<Object> f16774d;

    /* renamed from: b */
    public E[] f16775b;

    /* renamed from: c */
    public int f16776c;

    static {
        C4514i4<Object> i4Var = new C4514i4<>(new Object[0], 0);
        f16774d = i4Var;
        i4Var.mo9631H();
    }

    public C4514i4(E[] eArr, int i) {
        this.f16775b = eArr;
        this.f16776c = i;
    }

    /* renamed from: b */
    public static <E> C4514i4<E> m25445b() {
        return (C4514i4<E>) f16774d;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        int i2;
        m25475a();
        if (i < 0 || i > (i2 = this.f16776c)) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
        E[] eArr = this.f16775b;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.f16775b, i, eArr2, i + 1, this.f16776c - i);
            this.f16775b = eArr2;
        }
        this.f16775b[i] = e;
        this.f16776c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        m25475a();
        int i = this.f16776c;
        E[] eArr = this.f16775b;
        if (i == eArr.length) {
            this.f16775b = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f16775b;
        int i2 = this.f16776c;
        this.f16776c = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        zzb(i);
        return this.f16775b[i];
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m25475a();
        zzb(i);
        E[] eArr = this.f16775b;
        E e = eArr[i];
        int i2 = this.f16776c;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.f16776c--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m25475a();
        zzb(i);
        E[] eArr = this.f16775b;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16776c;
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* synthetic */ zzig zza(int i) {
        if (i >= this.f16776c) {
            return new C4514i4(Arrays.copyOf(this.f16775b, i), this.f16776c);
        }
        throw new IllegalArgumentException();
    }

    public final void zzb(int i) {
        if (i < 0 || i >= this.f16776c) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
    }

    public final String zzc(int i) {
        int i2 = this.f16776c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }
}

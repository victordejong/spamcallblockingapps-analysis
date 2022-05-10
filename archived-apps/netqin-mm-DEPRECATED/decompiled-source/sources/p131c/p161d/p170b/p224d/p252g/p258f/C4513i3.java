package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzie;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.f.i3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/i3.class */
public final class C4513i3 extends AbstractC4498g2<Integer> implements zzie, AbstractC4507h4, RandomAccess {

    /* renamed from: d */
    public static final C4513i3 f16771d;

    /* renamed from: b */
    public int[] f16772b;

    /* renamed from: c */
    public int f16773c;

    static {
        C4513i3 i3Var = new C4513i3(new int[0], 0);
        f16771d = i3Var;
        i3Var.mo9631H();
    }

    public C4513i3() {
        this(new int[10], 0);
    }

    public C4513i3(int[] iArr, int i) {
        this.f16772b = iArr;
        this.f16773c = i;
    }

    /* renamed from: b */
    public static C4513i3 m25448b() {
        return f16771d;
    }

    /* renamed from: a */
    public final void m25449a(int i) {
        m25475a();
        int i2 = this.f16773c;
        int[] iArr = this.f16772b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f16772b = iArr2;
        }
        int[] iArr3 = this.f16772b;
        int i3 = this.f16773c;
        this.f16773c = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m25475a();
        if (i < 0 || i > (i2 = this.f16773c)) {
            throw new IndexOutOfBoundsException(m25446l(i));
        }
        int[] iArr = this.f16772b;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f16772b, i, iArr2, i + 1, this.f16773c - i);
            this.f16772b = iArr2;
        }
        this.f16772b[i] = intValue;
        this.f16773c++;
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        m25449a(((Integer) obj).intValue());
        return true;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        m25475a();
        zzia.m9638a(collection);
        if (!(collection instanceof C4513i3)) {
            return super.addAll(collection);
        }
        C4513i3 i3Var = (C4513i3) collection;
        int i = i3Var.f16773c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16773c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.f16772b;
            if (i3 > iArr.length) {
                this.f16772b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(i3Var.f16772b, 0, this.f16772b, this.f16773c, i3Var.f16773c);
            this.f16773c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4513i3)) {
            return super.equals(obj);
        }
        C4513i3 i3Var = (C4513i3) obj;
        if (this.f16773c != i3Var.f16773c) {
            return false;
        }
        int[] iArr = i3Var.f16772b;
        for (int i = 0; i < this.f16773c; i++) {
            if (this.f16772b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m25447f(int i) {
        if (i < 0 || i >= this.f16773c) {
            throw new IndexOutOfBoundsException(m25446l(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(zzc(i));
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16773c; i2++) {
            i = (i * 31) + this.f16772b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f16772b[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: l */
    public final String m25446l(int i) {
        int i2 = this.f16773c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25475a();
        m25447f(i);
        int[] iArr = this.f16772b;
        int i2 = iArr[i];
        int i3 = this.f16773c;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.f16773c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25475a();
        if (i2 >= i) {
            int[] iArr = this.f16772b;
            System.arraycopy(iArr, i2, iArr, i, this.f16773c - i2);
            this.f16773c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m25475a();
        m25447f(i);
        int[] iArr = this.f16772b;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16773c;
    }

    @Override // com.google.android.gms.internal.measurement.zzie
    /* renamed from: zzb */
    public final zzie zza(int i) {
        if (i >= this.f16773c) {
            return new C4513i3(Arrays.copyOf(this.f16772b, i), this.f16773c);
        }
        throw new IllegalArgumentException();
    }

    public final int zzc(int i) {
        m25447f(i);
        return this.f16772b[i];
    }
}

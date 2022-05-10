package p131c.p161d.p367h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.f0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/f0.class */
public final class C6302f0 extends AbstractC6285c<Long> implements C6381y.AbstractC6389h, RandomAccess, AbstractC6378w0 {

    /* renamed from: d */
    public static final C6302f0 f19887d;

    /* renamed from: b */
    public long[] f19888b;

    /* renamed from: c */
    public int f19889c;

    static {
        C6302f0 f0Var = new C6302f0(new long[0], 0);
        f19887d = f0Var;
        f0Var.mo20999l();
    }

    public C6302f0() {
        this(new long[10], 0);
    }

    public C6302f0(long[] jArr, int i) {
        this.f19888b = jArr;
        this.f19889c = i;
    }

    /* renamed from: a */
    public final void m21539a(int i) {
        if (i < 0 || i >= this.f19889c) {
            throw new IndexOutOfBoundsException(m21531l(i));
        }
    }

    /* renamed from: a */
    public final void m21538a(int i, long j) {
        int i2;
        m21675a();
        if (i < 0 || i > (i2 = this.f19889c)) {
            throw new IndexOutOfBoundsException(m21531l(i));
        }
        long[] jArr = this.f19888b;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f19888b, i, jArr2, i + 1, this.f19889c - i);
            this.f19888b = jArr2;
        }
        this.f19888b[i] = j;
        this.f19889c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public void add(int i, Long l) {
        m21538a(i, l.longValue());
    }

    /* renamed from: a */
    public void m21536a(long j) {
        m21675a();
        int i = this.f19889c;
        long[] jArr = this.f19888b;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f19888b = jArr2;
        }
        long[] jArr3 = this.f19888b;
        int i2 = this.f19889c;
        this.f19889c = i2 + 1;
        jArr3[i2] = j;
    }

    /* renamed from: a */
    public boolean add(Long l) {
        m21536a(l.longValue());
        return true;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        m21675a();
        C6381y.m21009a(collection);
        if (!(collection instanceof C6302f0)) {
            return super.addAll(collection);
        }
        C6302f0 f0Var = (C6302f0) collection;
        int i = f0Var.f19889c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19889c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f19888b;
            if (i3 > jArr.length) {
                this.f19888b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(f0Var.f19888b, 0, this.f19888b, this.f19889c, f0Var.f19889c);
            this.f19889c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: b */
    public long m21534b(int i, long j) {
        m21675a();
        m21539a(i);
        long[] jArr = this.f19888b;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
    /* renamed from: b */
    public C6381y.AbstractC6390i<Long> mo20996b(int i) {
        if (i >= this.f19889c) {
            return new C6302f0(Arrays.copyOf(this.f19888b, i), this.f19889c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public Long set(int i, Long l) {
        return Long.valueOf(m21534b(i, l.longValue()));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6302f0)) {
            return super.equals(obj);
        }
        C6302f0 f0Var = (C6302f0) obj;
        if (this.f19889c != f0Var.f19889c) {
            return false;
        }
        long[] jArr = f0Var.f19888b;
        for (int i = 0; i < this.f19889c; i++) {
            if (this.f19888b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public long m21532f(int i) {
        m21539a(i);
        return this.f19888b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public Long get(int i) {
        return Long.valueOf(m21532f(i));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19889c; i2++) {
            i = (i * 31) + C6381y.m21010a(this.f19888b[i2]);
        }
        return i;
    }

    /* renamed from: l */
    public final String m21531l(int i) {
        return "Index:" + i + ", Size:" + this.f19889c;
    }

    @Override // java.util.AbstractList, java.util.List
    public Long remove(int i) {
        m21675a();
        m21539a(i);
        long[] jArr = this.f19888b;
        long j = jArr[i];
        int i2 = this.f19889c;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.f19889c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m21675a();
        for (int i = 0; i < this.f19889c; i++) {
            if (obj.equals(Long.valueOf(this.f19888b[i]))) {
                long[] jArr = this.f19888b;
                System.arraycopy(jArr, i + 1, jArr, i, (this.f19889c - i) - 1);
                this.f19889c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m21675a();
        if (i2 >= i) {
            long[] jArr = this.f19888b;
            System.arraycopy(jArr, i2, jArr, i, this.f19889c - i2);
            this.f19889c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19889c;
    }
}

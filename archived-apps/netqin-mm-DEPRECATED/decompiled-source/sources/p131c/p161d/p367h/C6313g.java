package p131c.p161d.p367h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.g */
/* loaded from: classes2-dex2jar.jar:c/d/h/g.class */
public final class C6313g extends AbstractC6285c<Boolean> implements C6381y.AbstractC6382a, RandomAccess, AbstractC6378w0 {

    /* renamed from: d */
    public static final C6313g f19911d;

    /* renamed from: b */
    public boolean[] f19912b;

    /* renamed from: c */
    public int f19913c;

    static {
        C6313g gVar = new C6313g(new boolean[0], 0);
        f19911d = gVar;
        gVar.mo20999l();
    }

    public C6313g() {
        this(new boolean[10], 0);
    }

    public C6313g(boolean[] zArr, int i) {
        this.f19912b = zArr;
        this.f19913c = i;
    }

    /* renamed from: a */
    public final void m21504a(int i) {
        if (i < 0 || i >= this.f19913c) {
            throw new IndexOutOfBoundsException(m21496l(i));
        }
    }

    /* renamed from: a */
    public void add(int i, Boolean bool) {
        m21502a(i, bool.booleanValue());
    }

    /* renamed from: a */
    public final void m21502a(int i, boolean z) {
        int i2;
        m21675a();
        if (i < 0 || i > (i2 = this.f19913c)) {
            throw new IndexOutOfBoundsException(m21496l(i));
        }
        boolean[] zArr = this.f19912b;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.f19912b, i, zArr2, i + 1, this.f19913c - i);
            this.f19912b = zArr2;
        }
        this.f19912b[i] = z;
        this.f19913c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public void m21500a(boolean z) {
        m21675a();
        int i = this.f19913c;
        boolean[] zArr = this.f19912b;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f19912b = zArr2;
        }
        boolean[] zArr3 = this.f19912b;
        int i2 = this.f19913c;
        this.f19913c = i2 + 1;
        zArr3[i2] = z;
    }

    /* renamed from: a */
    public boolean add(Boolean bool) {
        m21500a(bool.booleanValue());
        return true;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        m21675a();
        C6381y.m21009a(collection);
        if (!(collection instanceof C6313g)) {
            return super.addAll(collection);
        }
        C6313g gVar = (C6313g) collection;
        int i = gVar.f19913c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f19913c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f19912b;
            if (i3 > zArr.length) {
                this.f19912b = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(gVar.f19912b, 0, this.f19912b, this.f19913c, gVar.f19913c);
            this.f19913c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
    /* renamed from: b */
    public C6381y.AbstractC6390i<Boolean> mo20996b(int i) {
        if (i >= this.f19913c) {
            return new C6313g(Arrays.copyOf(this.f19912b, i), this.f19913c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public Boolean set(int i, Boolean bool) {
        return Boolean.valueOf(m21498b(i, bool.booleanValue()));
    }

    /* renamed from: b */
    public boolean m21498b(int i, boolean z) {
        m21675a();
        m21504a(i);
        boolean[] zArr = this.f19912b;
        boolean z2 = zArr[i];
        zArr[i] = z;
        return z2;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6313g)) {
            return super.equals(obj);
        }
        C6313g gVar = (C6313g) obj;
        if (this.f19913c != gVar.f19913c) {
            return false;
        }
        boolean[] zArr = gVar.f19912b;
        for (int i = 0; i < this.f19913c; i++) {
            if (this.f19912b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public boolean m21497f(int i) {
        m21504a(i);
        return this.f19912b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public Boolean get(int i) {
        return Boolean.valueOf(m21497f(i));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f19913c; i2++) {
            i = (i * 31) + C6381y.m21006a(this.f19912b[i2]);
        }
        return i;
    }

    /* renamed from: l */
    public final String m21496l(int i) {
        return "Index:" + i + ", Size:" + this.f19913c;
    }

    @Override // java.util.AbstractList, java.util.List
    public Boolean remove(int i) {
        m21675a();
        m21504a(i);
        boolean[] zArr = this.f19912b;
        boolean z = zArr[i];
        int i2 = this.f19913c;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.f19913c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m21675a();
        for (int i = 0; i < this.f19913c; i++) {
            if (obj.equals(Boolean.valueOf(this.f19912b[i]))) {
                boolean[] zArr = this.f19912b;
                System.arraycopy(zArr, i + 1, zArr, i, (this.f19913c - i) - 1);
                this.f19913c--;
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
            boolean[] zArr = this.f19912b;
            System.arraycopy(zArr, i2, zArr, i, this.f19913c - i2);
            this.f19913c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f19913c;
    }
}

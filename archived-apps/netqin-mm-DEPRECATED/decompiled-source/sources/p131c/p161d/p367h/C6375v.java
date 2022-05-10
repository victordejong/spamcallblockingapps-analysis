package p131c.p161d.p367h;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.v */
/* loaded from: classes2-dex2jar.jar:c/d/h/v.class */
public final class C6375v extends AbstractC6285c<Float> implements C6381y.AbstractC6387f, RandomAccess, AbstractC6378w0 {

    /* renamed from: d */
    public static final C6375v f20043d;

    /* renamed from: b */
    public float[] f20044b;

    /* renamed from: c */
    public int f20045c;

    static {
        C6375v vVar = new C6375v(new float[0], 0);
        f20043d = vVar;
        vVar.mo20999l();
    }

    public C6375v() {
        this(new float[10], 0);
    }

    public C6375v(float[] fArr, int i) {
        this.f20044b = fArr;
        this.f20045c = i;
    }

    /* renamed from: a */
    public void m21039a(float f) {
        m21675a();
        int i = this.f20045c;
        float[] fArr = this.f20044b;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f20044b = fArr2;
        }
        float[] fArr3 = this.f20044b;
        int i2 = this.f20045c;
        this.f20045c = i2 + 1;
        fArr3[i2] = f;
    }

    /* renamed from: a */
    public final void m21038a(int i) {
        if (i < 0 || i >= this.f20045c) {
            throw new IndexOutOfBoundsException(m21031l(i));
        }
    }

    /* renamed from: a */
    public final void m21037a(int i, float f) {
        int i2;
        m21675a();
        if (i < 0 || i > (i2 = this.f20045c)) {
            throw new IndexOutOfBoundsException(m21031l(i));
        }
        float[] fArr = this.f20044b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f20044b, i, fArr2, i + 1, this.f20045c - i);
            this.f20044b = fArr2;
        }
        this.f20044b[i] = f;
        this.f20045c++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: a */
    public void add(int i, Float f) {
        m21037a(i, f.floatValue());
    }

    /* renamed from: a */
    public boolean add(Float f) {
        m21039a(f.floatValue());
        return true;
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        m21675a();
        C6381y.m21009a(collection);
        if (!(collection instanceof C6375v)) {
            return super.addAll(collection);
        }
        C6375v vVar = (C6375v) collection;
        int i = vVar.f20045c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f20045c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f20044b;
            if (i3 > fArr.length) {
                this.f20044b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(vVar.f20044b, 0, this.f20044b, this.f20045c, vVar.f20045c);
            this.f20045c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    /* renamed from: b */
    public float m21034b(int i, float f) {
        m21675a();
        m21038a(i);
        float[] fArr = this.f20044b;
        float f2 = fArr[i];
        fArr[i] = f;
        return f2;
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6390i
    /* renamed from: b */
    public C6381y.AbstractC6390i<Float> mo20996b(int i) {
        if (i >= this.f20045c) {
            return new C6375v(Arrays.copyOf(this.f20044b, i), this.f20045c);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public Float set(int i, Float f) {
        return Float.valueOf(m21034b(i, f.floatValue()));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6375v)) {
            return super.equals(obj);
        }
        C6375v vVar = (C6375v) obj;
        if (this.f20045c != vVar.f20045c) {
            return false;
        }
        float[] fArr = vVar.f20044b;
        for (int i = 0; i < this.f20045c; i++) {
            if (Float.floatToIntBits(this.f20044b[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public float m21032f(int i) {
        m21038a(i);
        return this.f20044b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public Float get(int i) {
        return Float.valueOf(m21032f(i));
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f20045c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f20044b[i2]);
        }
        return i;
    }

    /* renamed from: l */
    public final String m21031l(int i) {
        return "Index:" + i + ", Size:" + this.f20045c;
    }

    @Override // java.util.AbstractList, java.util.List
    public Float remove(int i) {
        m21675a();
        m21038a(i);
        float[] fArr = this.f20044b;
        float f = fArr[i];
        int i2 = this.f20045c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.f20045c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // p131c.p161d.p367h.AbstractC6285c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m21675a();
        for (int i = 0; i < this.f20045c; i++) {
            if (obj.equals(Float.valueOf(this.f20044b[i]))) {
                float[] fArr = this.f20044b;
                System.arraycopy(fArr, i + 1, fArr, i, (this.f20045c - i) - 1);
                this.f20045c--;
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
            float[] fArr = this.f20044b;
            System.arraycopy(fArr, i2, fArr, i, this.f20045c - i2);
            this.f20045c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f20045c;
    }
}

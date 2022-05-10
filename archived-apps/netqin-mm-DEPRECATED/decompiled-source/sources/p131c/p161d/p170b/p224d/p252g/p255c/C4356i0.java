package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcn;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: c.d.b.d.g.c.i0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/i0.class */
public final class C4356i0 extends AbstractC4374l<Float> implements zzcn<Float>, RandomAccess {

    /* renamed from: b */
    public float[] f16525b;

    /* renamed from: c */
    public int f16526c;

    static {
        new C4356i0().zzv();
    }

    public C4356i0() {
        this(new float[10], 0);
    }

    public C4356i0(float[] fArr, int i) {
        this.f16525b = fArr;
        this.f16526c = i;
    }

    /* renamed from: a */
    public final void m25902a(float f) {
        m25900a(this.f16526c, f);
    }

    /* renamed from: a */
    public final void m25901a(int i) {
        if (i < 0 || i >= this.f16526c) {
            throw new IndexOutOfBoundsException(m25899f(i));
        }
    }

    /* renamed from: a */
    public final void m25900a(int i, float f) {
        int i2;
        m25822a();
        if (i < 0 || i > (i2 = this.f16526c)) {
            throw new IndexOutOfBoundsException(m25899f(i));
        }
        float[] fArr = this.f16525b;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f16525b, i, fArr2, i + 1, this.f16526c - i);
            this.f16525b = fArr2;
        }
        this.f16525b[i] = f;
        this.f16526c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m25900a(i, ((Float) obj).floatValue());
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        m25822a();
        zzci.m10701a(collection);
        if (!(collection instanceof C4356i0)) {
            return super.addAll(collection);
        }
        C4356i0 i0Var = (C4356i0) collection;
        int i = i0Var.f16526c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16526c;
        if (MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f16525b;
            if (i3 > fArr.length) {
                this.f16525b = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(i0Var.f16525b, 0, this.f16525b, this.f16526c, i0Var.f16526c);
            this.f16526c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    /* renamed from: c */
    public final /* synthetic */ zzcn<Float> mo10687c(int i) {
        if (i >= this.f16526c) {
            return new C4356i0(Arrays.copyOf(this.f16525b, i), this.f16526c);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4356i0)) {
            return super.equals(obj);
        }
        C4356i0 i0Var = (C4356i0) obj;
        if (this.f16526c != i0Var.f16526c) {
            return false;
        }
        float[] fArr = i0Var.f16525b;
        for (int i = 0; i < this.f16526c; i++) {
            if (this.f16525b[i] != fArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final String m25899f(int i) {
        int i2 = this.f16526c;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m25901a(i);
        return Float.valueOf(this.f16525b[i]);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f16526c; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f16525b[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25822a();
        m25901a(i);
        float[] fArr = this.f16525b;
        float f = fArr[i];
        int i2 = this.f16526c;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, i2 - i);
        }
        this.f16526c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m25822a();
        for (int i = 0; i < this.f16526c; i++) {
            if (obj.equals(Float.valueOf(this.f16525b[i]))) {
                float[] fArr = this.f16525b;
                System.arraycopy(fArr, i + 1, fArr, i, this.f16526c - i);
                this.f16526c--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m25822a();
        if (i2 >= i) {
            float[] fArr = this.f16525b;
            System.arraycopy(fArr, i2, fArr, i, this.f16526c - i2);
            this.f16526c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        m25822a();
        m25901a(i);
        float[] fArr = this.f16525b;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16526c;
    }
}

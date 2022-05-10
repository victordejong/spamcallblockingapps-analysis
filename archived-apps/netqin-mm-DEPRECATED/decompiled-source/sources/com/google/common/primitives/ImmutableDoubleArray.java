package com.google.common.primitives;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableDoubleArray.class */
public final class ImmutableDoubleArray implements Serializable {
    public static final ImmutableDoubleArray EMPTY = new ImmutableDoubleArray(new double[0]);
    public final double[] array;
    public final int end;
    public final transient int start;

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableDoubleArray$AsList.class */
    public static class AsList extends AbstractList<Double> implements RandomAccess, Serializable {
        public final ImmutableDoubleArray parent;

        public AsList(ImmutableDoubleArray immutableDoubleArray) {
            this.parent = immutableDoubleArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj instanceof AsList) {
                return this.parent.equals(((AsList) obj).parent);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i = this.parent.start;
            for (Object obj2 : list) {
                if (!(obj2 instanceof Double) || !ImmutableDoubleArray.areEqual(this.parent.array[i], ((Double) obj2).doubleValue())) {
                    return false;
                }
                i++;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double get(int i) {
            return Double.valueOf(this.parent.get(i));
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.parent.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            return obj instanceof Double ? this.parent.indexOf(((Double) obj).doubleValue()) : -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            return obj instanceof Double ? this.parent.lastIndexOf(((Double) obj).doubleValue()) : -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parent.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i, int i2) {
            return this.parent.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.parent.toString();
        }
    }

    /* renamed from: com.google.common.primitives.ImmutableDoubleArray$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableDoubleArray$b.class */
    public static final class C7709b {

        /* renamed from: a */
        public double[] f30876a;

        /* renamed from: b */
        public int f30877b = 0;

        public C7709b(int i) {
            this.f30876a = new double[i];
        }

        /* renamed from: a */
        public static int m7846a(int i, int i2) {
            if (i2 >= 0) {
                int i3 = i + (i >> 1) + 1;
                int i4 = i3;
                if (i3 < i2) {
                    i4 = Integer.highestOneBit(i2 - 1) << 1;
                }
                int i5 = i4;
                if (i4 < 0) {
                    i5 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                }
                return i5;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        /* renamed from: a */
        public C7709b m7848a(double d) {
            m7847a(1);
            double[] dArr = this.f30876a;
            int i = this.f30877b;
            dArr[i] = d;
            this.f30877b = i + 1;
            return this;
        }

        /* renamed from: a */
        public C7709b m7845a(Iterable<Double> iterable) {
            if (iterable instanceof Collection) {
                m7844a((Collection) iterable);
                return this;
            }
            for (Double d : iterable) {
                m7848a(d.doubleValue());
            }
            return this;
        }

        /* renamed from: a */
        public C7709b m7844a(Collection<Double> collection) {
            m7847a(collection.size());
            for (Double d : collection) {
                double[] dArr = this.f30876a;
                int i = this.f30877b;
                this.f30877b = i + 1;
                dArr[i] = d.doubleValue();
            }
            return this;
        }

        /* renamed from: a */
        public ImmutableDoubleArray m7849a() {
            return this.f30877b == 0 ? ImmutableDoubleArray.EMPTY : new ImmutableDoubleArray(this.f30876a, 0, this.f30877b);
        }

        /* renamed from: a */
        public final void m7847a(int i) {
            int i2 = this.f30877b + i;
            double[] dArr = this.f30876a;
            if (i2 > dArr.length) {
                double[] dArr2 = new double[m7846a(dArr.length, i2)];
                System.arraycopy(this.f30876a, 0, dArr2, 0, this.f30877b);
                this.f30876a = dArr2;
            }
        }
    }

    public ImmutableDoubleArray(double[] dArr) {
        this(dArr, 0, dArr.length);
    }

    public ImmutableDoubleArray(double[] dArr, int i, int i2) {
        this.array = dArr;
        this.start = i;
        this.end = i2;
    }

    public static boolean areEqual(double d, double d2) {
        return Double.doubleToLongBits(d) == Double.doubleToLongBits(d2);
    }

    public static C7709b builder() {
        return new C7709b(10);
    }

    public static C7709b builder(int i) {
        C4933n.m24787a(i >= 0, "Invalid initialCapacity: %s", i);
        return new C7709b(i);
    }

    public static ImmutableDoubleArray copyOf(Iterable<Double> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Double>) iterable);
        }
        C7709b builder = builder();
        builder.m7845a(iterable);
        return builder.m7849a();
    }

    public static ImmutableDoubleArray copyOf(Collection<Double> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableDoubleArray(Doubles.m7868a(collection));
    }

    public static ImmutableDoubleArray copyOf(double[] dArr) {
        return dArr.length == 0 ? EMPTY : new ImmutableDoubleArray(Arrays.copyOf(dArr, dArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7857of() {
        return EMPTY;
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7856of(double d) {
        return new ImmutableDoubleArray(new double[]{d});
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7855of(double d, double d2) {
        return new ImmutableDoubleArray(new double[]{d, d2});
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7854of(double d, double d2, double d3) {
        return new ImmutableDoubleArray(new double[]{d, d2, d3});
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7853of(double d, double d2, double d3, double d4) {
        return new ImmutableDoubleArray(new double[]{d, d2, d3, d4});
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7852of(double d, double d2, double d3, double d4, double d5) {
        return new ImmutableDoubleArray(new double[]{d, d2, d3, d4, d5});
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7851of(double d, double d2, double d3, double d4, double d5, double d6) {
        return new ImmutableDoubleArray(new double[]{d, d2, d3, d4, d5, d6});
    }

    /* renamed from: of */
    public static ImmutableDoubleArray m7850of(double d, double... dArr) {
        C4933n.m24790a(dArr.length <= 2147483646, "the total number of elements must fit in an int");
        double[] dArr2 = new double[dArr.length + 1];
        dArr2[0] = d;
        System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
        return new ImmutableDoubleArray(dArr2);
    }

    public List<Double> asList() {
        return new AsList();
    }

    public boolean contains(double d) {
        return indexOf(d) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableDoubleArray)) {
            return false;
        }
        ImmutableDoubleArray immutableDoubleArray = (ImmutableDoubleArray) obj;
        if (length() != immutableDoubleArray.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (!areEqual(get(i), immutableDoubleArray.get(i))) {
                return false;
            }
        }
        return true;
    }

    public double get(int i) {
        C4933n.m24798a(i, length());
        return this.array[this.start + i];
    }

    public int hashCode() {
        int i = 1;
        for (int i2 = this.start; i2 < this.end; i2++) {
            i = (i * 31) + Doubles.m7869a(this.array[i2]);
        }
        return i;
    }

    public int indexOf(double d) {
        for (int i = this.start; i < this.end; i++) {
            if (areEqual(this.array[i], d)) {
                return i - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(double d) {
        for (int i = this.end - 1; i >= this.start; i--) {
            if (areEqual(this.array[i], d)) {
                return i - this.start;
            }
        }
        return -1;
    }

    public int length() {
        return this.end - this.start;
    }

    public Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public ImmutableDoubleArray subArray(int i, int i2) {
        ImmutableDoubleArray immutableDoubleArray;
        C4933n.m24778b(i, i2, length());
        if (i == i2) {
            immutableDoubleArray = EMPTY;
        } else {
            double[] dArr = this.array;
            int i3 = this.start;
            immutableDoubleArray = new ImmutableDoubleArray(dArr, i + i3, i3 + i2);
        }
        return immutableDoubleArray;
    }

    public double[] toArray() {
        return Arrays.copyOfRange(this.array, this.start, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.array[this.start]);
        int i = this.start;
        while (true) {
            i++;
            if (i < this.end) {
                sb.append(", ");
                sb.append(this.array[i]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableDoubleArray trimmed() {
        return isPartialView() ? new ImmutableDoubleArray(toArray()) : this;
    }

    public Object writeReplace() {
        return trimmed();
    }
}

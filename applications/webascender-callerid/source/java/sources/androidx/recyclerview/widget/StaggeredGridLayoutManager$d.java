package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d.class */
public class StaggeredGridLayoutManager$d {

    /* renamed from: a */
    int[] f2001a;

    /* renamed from: b */
    List<C0368a> f2002b;

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d$a.class */
    public static class C0368a implements Parcelable {
        public static final Parcelable.Creator<C0368a> CREATOR = new C0369a();

        /* renamed from: f */
        int f2003f;

        /* renamed from: g */
        int f2004g;

        /* renamed from: h */
        int[] f2005h;

        /* renamed from: i */
        boolean f2006i;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$d$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$d$a$a.class */
        static final class C0369a implements Parcelable.Creator<C0368a> {
            C0369a() {
            }

            /* renamed from: a */
            public C0368a createFromParcel(Parcel parcel) {
                return new C0368a(parcel);
            }

            /* renamed from: b */
            public C0368a[] newArray(int i) {
                return new C0368a[i];
            }
        }

        C0368a() {
        }

        C0368a(Parcel parcel) {
            this.f2003f = parcel.readInt();
            this.f2004g = parcel.readInt();
            this.f2006i = parcel.readInt() != 1 ? false : true;
            int readInt = parcel.readInt();
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f2005h = iArr;
                parcel.readIntArray(iArr);
            }
        }

        /* renamed from: a */
        public int m5028a(int i) {
            int[] iArr = this.f2005h;
            return iArr == null ? 0 : iArr[i];
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "FullSpanItem{mPosition=" + this.f2003f + ", mGapDir=" + this.f2004g + ", mHasUnwantedGapAfter=" + this.f2006i + ", mGapPerSpan=" + Arrays.toString(this.f2005h) + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2003f);
            parcel.writeInt(this.f2004g);
            parcel.writeInt(this.f2006i ? 1 : 0);
            int[] iArr = this.f2005h;
            if (iArr == null || iArr.length <= 0) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f2005h);
        }
    }

    StaggeredGridLayoutManager$d() {
    }

    /* renamed from: i */
    private int m5035i(int i) {
        if (this.f2002b == null) {
            return -1;
        }
        C0368a m5038f = m5038f(i);
        if (m5038f != null) {
            this.f2002b.remove(m5038f);
        }
        int size = this.f2002b.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f2002b.get(i2).f2003f >= i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return -1;
        }
        C0368a c0368a = this.f2002b.get(i2);
        this.f2002b.remove(i2);
        return c0368a.f2003f;
    }

    /* renamed from: l */
    private void m5032l(int i, int i2) {
        List<C0368a> list = this.f2002b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            C0368a c0368a = this.f2002b.get(size);
            int i3 = c0368a.f2003f;
            if (i3 >= i) {
                c0368a.f2003f = i3 + i2;
            }
        }
    }

    /* renamed from: m */
    private void m5031m(int i, int i2) {
        List<C0368a> list = this.f2002b;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            C0368a c0368a = this.f2002b.get(size);
            int i3 = c0368a.f2003f;
            if (i3 >= i) {
                if (i3 < i + i2) {
                    this.f2002b.remove(size);
                } else {
                    c0368a.f2003f = i3 - i2;
                }
            }
        }
    }

    /* renamed from: a */
    public void m5043a(C0368a c0368a) {
        if (this.f2002b == null) {
            this.f2002b = new ArrayList();
        }
        int size = this.f2002b.size();
        for (int i = 0; i < size; i++) {
            C0368a c0368a2 = this.f2002b.get(i);
            if (c0368a2.f2003f == c0368a.f2003f) {
                this.f2002b.remove(i);
            }
            if (c0368a2.f2003f >= c0368a.f2003f) {
                this.f2002b.add(i, c0368a);
                return;
            }
        }
        this.f2002b.add(c0368a);
    }

    /* renamed from: b */
    void m5042b() {
        int[] iArr = this.f2001a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f2002b = null;
    }

    /* renamed from: c */
    void m5041c(int i) {
        int[] iArr = this.f2001a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.f2001a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i < iArr.length) {
        } else {
            int[] iArr3 = new int[m5029o(i)];
            this.f2001a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f2001a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    /* renamed from: d */
    int m5040d(int i) {
        List<C0368a> list = this.f2002b;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (this.f2002b.get(size).f2003f >= i) {
                    this.f2002b.remove(size);
                }
            }
        }
        return m5036h(i);
    }

    /* renamed from: e */
    public C0368a m5039e(int i, int i2, int i3, boolean z) {
        C0368a c0368a;
        int i4;
        List<C0368a> list = this.f2002b;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i5 = 0; i5 < size && (i4 = (c0368a = this.f2002b.get(i5)).f2003f) < i2; i5++) {
            if (i4 >= i && (i3 == 0 || c0368a.f2004g == i3 || (z && c0368a.f2006i))) {
                return c0368a;
            }
        }
        return null;
    }

    /* renamed from: f */
    public C0368a m5038f(int i) {
        List<C0368a> list = this.f2002b;
        if (list == null) {
            return null;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            C0368a c0368a = this.f2002b.get(size);
            if (c0368a.f2003f == i) {
                return c0368a;
            }
        }
        return null;
    }

    /* renamed from: g */
    int m5037g(int i) {
        int[] iArr = this.f2001a;
        if (iArr == null || i >= iArr.length) {
            return -1;
        }
        return iArr[i];
    }

    /* renamed from: h */
    int m5036h(int i) {
        int[] iArr = this.f2001a;
        if (iArr != null && i < iArr.length) {
            int m5035i = m5035i(i);
            if (m5035i == -1) {
                int[] iArr2 = this.f2001a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f2001a.length;
            }
            int i2 = m5035i + 1;
            Arrays.fill(this.f2001a, i, i2, -1);
            return i2;
        }
        return -1;
    }

    /* renamed from: j */
    void m5034j(int i, int i2) {
        int[] iArr = this.f2001a;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m5041c(i3);
        int[] iArr2 = this.f2001a;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill(this.f2001a, i, i3, -1);
        m5032l(i, i2);
    }

    /* renamed from: k */
    void m5033k(int i, int i2) {
        int[] iArr = this.f2001a;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m5041c(i3);
        int[] iArr2 = this.f2001a;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = this.f2001a;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        m5031m(i, i2);
    }

    /* renamed from: n */
    void m5030n(int i, StaggeredGridLayoutManager$f staggeredGridLayoutManager$f) {
        m5041c(i);
        this.f2001a[i] = staggeredGridLayoutManager$f.f2021e;
    }

    /* renamed from: o */
    int m5029o(int i) {
        int length = this.f2001a.length;
        while (true) {
            int i2 = length;
            if (i2 <= i) {
                length = i2 * 2;
            } else {
                return i2;
            }
        }
    }
}

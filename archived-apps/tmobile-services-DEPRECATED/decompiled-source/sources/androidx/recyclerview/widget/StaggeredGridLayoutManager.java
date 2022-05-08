package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* renamed from: B */
    private BitSet f4852B;

    /* renamed from: G */
    private boolean f4857G;

    /* renamed from: H */
    private boolean f4858H;

    /* renamed from: I */
    private SavedState f4859I;

    /* renamed from: J */
    private int f4860J;

    /* renamed from: O */
    private int[] f4865O;

    /* renamed from: t */
    Span[] f4868t;
    @NonNull

    /* renamed from: u */
    OrientationHelper f4869u;
    @NonNull

    /* renamed from: v */
    OrientationHelper f4870v;

    /* renamed from: w */
    private int f4871w;

    /* renamed from: x */
    private int f4872x;

    /* renamed from: s */
    private int f4867s = -1;

    /* renamed from: z */
    boolean f4874z = false;

    /* renamed from: A */
    boolean f4851A = false;

    /* renamed from: C */
    int f4853C = -1;

    /* renamed from: D */
    int f4854D = Integer.MIN_VALUE;

    /* renamed from: E */
    LazySpanLookup f4855E = new LazySpanLookup();

    /* renamed from: F */
    private int f4856F = 2;

    /* renamed from: K */
    private final Rect f4861K = new Rect();

    /* renamed from: L */
    private final AnchorInfo f4862L = new AnchorInfo();

    /* renamed from: M */
    private boolean f4863M = false;

    /* renamed from: N */
    private boolean f4864N = true;

    /* renamed from: P */
    private final Runnable f4866P = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m17173T1();
        }
    };
    @NonNull

    /* renamed from: y */
    private final LayoutState f4873y = new LayoutState();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo.class */
    public class AnchorInfo {

        /* renamed from: a */
        int f4876a;

        /* renamed from: b */
        int f4877b;

        /* renamed from: c */
        boolean f4878c;

        /* renamed from: d */
        boolean f4879d;

        /* renamed from: e */
        boolean f4880e;

        /* renamed from: f */
        int[] f4881f;

        AnchorInfo() {
            m17113c();
        }

        /* renamed from: a */
        void m17115a() {
            this.f4877b = this.f4878c ? StaggeredGridLayoutManager.this.f4869u.mo17536i() : StaggeredGridLayoutManager.this.f4869u.mo17532m();
        }

        /* renamed from: b */
        void m17114b(int i) {
            if (this.f4878c) {
                this.f4877b = StaggeredGridLayoutManager.this.f4869u.mo17536i() - i;
            } else {
                this.f4877b = StaggeredGridLayoutManager.this.f4869u.mo17532m() + i;
            }
        }

        /* renamed from: c */
        void m17113c() {
            this.f4876a = -1;
            this.f4877b = Integer.MIN_VALUE;
            this.f4878c = false;
            this.f4879d = false;
            this.f4880e = false;
            int[] iArr = this.f4881f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        /* renamed from: d */
        void m17112d(Span[] spanArr) {
            int length = spanArr.length;
            int[] iArr = this.f4881f;
            if (iArr == null || iArr.length < length) {
                this.f4881f = new int[StaggeredGridLayoutManager.this.f4868t.length];
            }
            for (int i = 0; i < length; i++) {
                this.f4881f[i] = spanArr[i].m17072p(Integer.MIN_VALUE);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e */
        Span f4883e;

        /* renamed from: f */
        boolean f4884f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        /* renamed from: e */
        public final int m17111e() {
            Span span = this.f4883e;
            if (span == null) {
                return -1;
            }
            return span.f4905e;
        }

        /* renamed from: f */
        public boolean m17110f() {
            return this.f4884f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static class LazySpanLookup {

        /* renamed from: a */
        int[] f4885a;

        /* renamed from: b */
        List<FullSpanItem> f4886b;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                /* renamed from: a */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                /* renamed from: b */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };

            /* renamed from: f */
            int f4887f;

            /* renamed from: g */
            int f4888g;

            /* renamed from: h */
            int[] f4889h;

            /* renamed from: i */
            boolean f4890i;

            FullSpanItem() {
            }

            FullSpanItem(Parcel parcel) {
                this.f4887f = parcel.readInt();
                this.f4888g = parcel.readInt();
                this.f4890i = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.f4889h = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            /* renamed from: a */
            int m17094a(int i) {
                int[] iArr = this.f4889h;
                return iArr == null ? 0 : iArr[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f4887f + ", mGapDir=" + this.f4888g + ", mHasUnwantedGapAfter=" + this.f4890i + ", mGapPerSpan=" + Arrays.toString(this.f4889h) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f4887f);
                parcel.writeInt(this.f4888g);
                parcel.writeInt(this.f4890i ? 1 : 0);
                int[] iArr = this.f4889h;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f4889h);
            }
        }

        LazySpanLookup() {
        }

        /* renamed from: i */
        private int m17101i(int i) {
            if (this.f4886b == null) {
                return -1;
            }
            FullSpanItem f = m17104f(i);
            if (f != null) {
                this.f4886b.remove(f);
            }
            int size = this.f4886b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f4886b.get(i2).f4887f >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f4886b.get(i2);
            this.f4886b.remove(i2);
            return fullSpanItem.f4887f;
        }

        /* renamed from: l */
        private void m17098l(int i, int i2) {
            List<FullSpanItem> list = this.f4886b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f4886b.get(size);
                    int i3 = fullSpanItem.f4887f;
                    if (i3 >= i) {
                        fullSpanItem.f4887f = i3 + i2;
                    }
                }
            }
        }

        /* renamed from: m */
        private void m17097m(int i, int i2) {
            List<FullSpanItem> list = this.f4886b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.f4886b.get(size);
                    int i3 = fullSpanItem.f4887f;
                    if (i3 >= i) {
                        if (i3 < i + i2) {
                            this.f4886b.remove(size);
                        } else {
                            fullSpanItem.f4887f = i3 - i2;
                        }
                    }
                }
            }
        }

        /* renamed from: a */
        public void m17109a(FullSpanItem fullSpanItem) {
            if (this.f4886b == null) {
                this.f4886b = new ArrayList();
            }
            int size = this.f4886b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f4886b.get(i);
                if (fullSpanItem2.f4887f == fullSpanItem.f4887f) {
                    this.f4886b.remove(i);
                }
                if (fullSpanItem2.f4887f >= fullSpanItem.f4887f) {
                    this.f4886b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f4886b.add(fullSpanItem);
        }

        /* renamed from: b */
        void m17108b() {
            int[] iArr = this.f4885a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f4886b = null;
        }

        /* renamed from: c */
        void m17107c(int i) {
            int[] iArr = this.f4885a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f4885a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[m17095o(i)];
                this.f4885a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f4885a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* renamed from: d */
        int m17106d(int i) {
            List<FullSpanItem> list = this.f4886b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f4886b.get(size).f4887f >= i) {
                        this.f4886b.remove(size);
                    }
                }
            }
            return m17102h(i);
        }

        /* renamed from: e */
        public FullSpanItem m17105e(int i, int i2, int i3, boolean z) {
            FullSpanItem fullSpanItem;
            int i4;
            List<FullSpanItem> list = this.f4886b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i5 = 0; i5 < size && (i4 = (fullSpanItem = this.f4886b.get(i5)).f4887f) < i2; i5++) {
                if (i4 >= i && (i3 == 0 || fullSpanItem.f4888g == i3 || (z && fullSpanItem.f4890i))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: f */
        public FullSpanItem m17104f(int i) {
            List<FullSpanItem> list = this.f4886b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f4886b.get(size);
                if (fullSpanItem.f4887f == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: g */
        int m17103g(int i) {
            int[] iArr = this.f4885a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: h */
        int m17102h(int i) {
            int[] iArr = this.f4885a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int i2 = m17101i(i);
            if (i2 == -1) {
                int[] iArr2 = this.f4885a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f4885a.length;
            }
            int i3 = i2 + 1;
            Arrays.fill(this.f4885a, i, i3, -1);
            return i3;
        }

        /* renamed from: j */
        void m17100j(int i, int i2) {
            int[] iArr = this.f4885a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                m17107c(i3);
                int[] iArr2 = this.f4885a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.f4885a, i, i3, -1);
                m17098l(i, i2);
            }
        }

        /* renamed from: k */
        void m17099k(int i, int i2) {
            int[] iArr = this.f4885a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                m17107c(i3);
                int[] iArr2 = this.f4885a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.f4885a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                m17097m(i, i2);
            }
        }

        /* renamed from: n */
        void m17096n(int i, Span span) {
            m17107c(i);
            this.f4885a[i] = span.f4905e;
        }

        /* renamed from: o */
        int m17095o(int i) {
            int length = this.f4885a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        int f4891f;

        /* renamed from: g */
        int f4892g;

        /* renamed from: h */
        int f4893h;

        /* renamed from: i */
        int[] f4894i;

        /* renamed from: j */
        int f4895j;

        /* renamed from: k */
        int[] f4896k;

        /* renamed from: l */
        List<LazySpanLookup.FullSpanItem> f4897l;

        /* renamed from: m */
        boolean f4898m;

        /* renamed from: n */
        boolean f4899n;

        /* renamed from: o */
        boolean f4900o;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f4891f = parcel.readInt();
            this.f4892g = parcel.readInt();
            int readInt = parcel.readInt();
            this.f4893h = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.f4894i = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.f4895j = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.f4896k = iArr2;
                parcel.readIntArray(iArr2);
            }
            boolean z = false;
            this.f4898m = parcel.readInt() == 1;
            this.f4899n = parcel.readInt() == 1;
            this.f4900o = parcel.readInt() == 1 ? true : z;
            this.f4897l = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f4893h = savedState.f4893h;
            this.f4891f = savedState.f4891f;
            this.f4892g = savedState.f4892g;
            this.f4894i = savedState.f4894i;
            this.f4895j = savedState.f4895j;
            this.f4896k = savedState.f4896k;
            this.f4898m = savedState.f4898m;
            this.f4899n = savedState.f4899n;
            this.f4900o = savedState.f4900o;
            this.f4897l = savedState.f4897l;
        }

        /* renamed from: a */
        void m17091a() {
            this.f4894i = null;
            this.f4893h = 0;
            this.f4891f = -1;
            this.f4892g = -1;
        }

        /* renamed from: b */
        void m17090b() {
            this.f4894i = null;
            this.f4893h = 0;
            this.f4895j = 0;
            this.f4896k = null;
            this.f4897l = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f4891f);
            parcel.writeInt(this.f4892g);
            parcel.writeInt(this.f4893h);
            if (this.f4893h > 0) {
                parcel.writeIntArray(this.f4894i);
            }
            parcel.writeInt(this.f4895j);
            if (this.f4895j > 0) {
                parcel.writeIntArray(this.f4896k);
            }
            parcel.writeInt(this.f4898m ? 1 : 0);
            parcel.writeInt(this.f4899n ? 1 : 0);
            parcel.writeInt(this.f4900o ? 1 : 0);
            parcel.writeList(this.f4897l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$Span.class */
    public class Span {

        /* renamed from: a */
        ArrayList<View> f4901a = new ArrayList<>();

        /* renamed from: b */
        int f4902b = Integer.MIN_VALUE;

        /* renamed from: c */
        int f4903c = Integer.MIN_VALUE;

        /* renamed from: d */
        int f4904d = 0;

        /* renamed from: e */
        final int f4905e;

        Span(int i) {
            this.f4905e = i;
        }

        /* renamed from: a */
        void m17087a(View view) {
            LayoutParams n = m17074n(view);
            n.f4883e = this;
            this.f4901a.add(view);
            this.f4903c = Integer.MIN_VALUE;
            if (this.f4901a.size() == 1) {
                this.f4902b = Integer.MIN_VALUE;
            }
            if (n.m17361c() || n.m17362b()) {
                this.f4904d += StaggeredGridLayoutManager.this.f4869u.mo17540e(view);
            }
        }

        /* renamed from: b */
        void m17086b(boolean z, int i) {
            int l = z ? m17076l(Integer.MIN_VALUE) : m17072p(Integer.MIN_VALUE);
            m17083e();
            if (l != Integer.MIN_VALUE) {
                if (z && l < StaggeredGridLayoutManager.this.f4869u.mo17536i()) {
                    return;
                }
                if (z || l <= StaggeredGridLayoutManager.this.f4869u.mo17532m()) {
                    int i2 = l;
                    if (i != Integer.MIN_VALUE) {
                        i2 = l + i;
                    }
                    this.f4903c = i2;
                    this.f4902b = i2;
                }
            }
        }

        /* renamed from: c */
        void m17085c() {
            LazySpanLookup.FullSpanItem f;
            ArrayList<View> arrayList = this.f4901a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams n = m17074n(view);
            this.f4903c = StaggeredGridLayoutManager.this.f4869u.mo17541d(view);
            if (n.f4884f && (f = StaggeredGridLayoutManager.this.f4855E.m17104f(n.m17363a())) != null && f.f4888g == 1) {
                this.f4903c += f.m17094a(this.f4905e);
            }
        }

        /* renamed from: d */
        void m17084d() {
            LazySpanLookup.FullSpanItem f;
            View view = this.f4901a.get(0);
            LayoutParams n = m17074n(view);
            this.f4902b = StaggeredGridLayoutManager.this.f4869u.mo17538g(view);
            if (n.f4884f && (f = StaggeredGridLayoutManager.this.f4855E.m17104f(n.m17363a())) != null && f.f4888g == -1) {
                this.f4902b -= f.m17094a(this.f4905e);
            }
        }

        /* renamed from: e */
        void m17083e() {
            this.f4901a.clear();
            m17071q();
            this.f4904d = 0;
        }

        /* renamed from: f */
        public int m17082f() {
            return StaggeredGridLayoutManager.this.f4874z ? m17079i(this.f4901a.size() - 1, -1, true) : m17079i(0, this.f4901a.size(), true);
        }

        /* renamed from: g */
        public int m17081g() {
            return StaggeredGridLayoutManager.this.f4874z ? m17079i(0, this.f4901a.size(), true) : m17079i(this.f4901a.size() - 1, -1, true);
        }

        /* renamed from: h */
        int m17080h(int i, int i2, boolean z, boolean z2, boolean z3) {
            int m = StaggeredGridLayoutManager.this.f4869u.mo17532m();
            int i3 = StaggeredGridLayoutManager.this.f4869u.mo17536i();
            int i4 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f4901a.get(i);
                int g = StaggeredGridLayoutManager.this.f4869u.mo17538g(view);
                int d = StaggeredGridLayoutManager.this.f4869u.mo17541d(view);
                boolean z4 = false;
                boolean z5 = !z3 ? g < i3 : g <= i3;
                if (!z3 ? d > m : d >= m) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (!z || !z2) {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.m17400i0(view);
                        }
                        if (g < m || d > i3) {
                            return StaggeredGridLayoutManager.this.m17400i0(view);
                        }
                    } else if (g >= m && d <= i3) {
                        return StaggeredGridLayoutManager.this.m17400i0(view);
                    }
                }
                i += i4;
            }
            return -1;
        }

        /* renamed from: i */
        int m17079i(int i, int i2, boolean z) {
            return m17080h(i, i2, false, false, z);
        }

        /* renamed from: j */
        public int m17078j() {
            return this.f4904d;
        }

        /* renamed from: k */
        int m17077k() {
            int i = this.f4903c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m17085c();
            return this.f4903c;
        }

        /* renamed from: l */
        int m17076l(int i) {
            int i2 = this.f4903c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f4901a.size() == 0) {
                return i;
            }
            m17085c();
            return this.f4903c;
        }

        /* renamed from: m */
        public View m17075m(int i, int i2) {
            View view;
            View view2 = null;
            View view3 = null;
            if (i2 != -1) {
                int size = this.f4901a.size() - 1;
                while (true) {
                    view = view2;
                    if (size < 0) {
                        break;
                    }
                    View view4 = this.f4901a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f4874z) {
                        view = view2;
                        if (staggeredGridLayoutManager.m17400i0(view4) >= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager2.f4874z && staggeredGridLayoutManager2.m17400i0(view4) <= i) {
                        view = view2;
                        break;
                    }
                    view = view2;
                    if (!view4.hasFocusable()) {
                        break;
                    }
                    size--;
                    view2 = view4;
                }
            } else {
                int size2 = this.f4901a.size();
                int i3 = 0;
                while (true) {
                    view = view3;
                    if (i3 >= size2) {
                        break;
                    }
                    View view5 = this.f4901a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f4874z) {
                        view = view3;
                        if (staggeredGridLayoutManager3.m17400i0(view5) <= i) {
                            break;
                        }
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if (!staggeredGridLayoutManager4.f4874z && staggeredGridLayoutManager4.m17400i0(view5) >= i) {
                        view = view3;
                        break;
                    }
                    view = view3;
                    if (!view5.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view3 = view5;
                }
            }
            return view;
        }

        /* renamed from: n */
        LayoutParams m17074n(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        /* renamed from: o */
        int m17073o() {
            int i = this.f4902b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m17084d();
            return this.f4902b;
        }

        /* renamed from: p */
        int m17072p(int i) {
            int i2 = this.f4902b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f4901a.size() == 0) {
                return i;
            }
            m17084d();
            return this.f4902b;
        }

        /* renamed from: q */
        void m17071q() {
            this.f4902b = Integer.MIN_VALUE;
            this.f4903c = Integer.MIN_VALUE;
        }

        /* renamed from: r */
        void m17070r(int i) {
            int i2 = this.f4902b;
            if (i2 != Integer.MIN_VALUE) {
                this.f4902b = i2 + i;
            }
            int i3 = this.f4903c;
            if (i3 != Integer.MIN_VALUE) {
                this.f4903c = i3 + i;
            }
        }

        /* renamed from: s */
        void m17069s() {
            int size = this.f4901a.size();
            View remove = this.f4901a.remove(size - 1);
            LayoutParams n = m17074n(remove);
            n.f4883e = null;
            if (n.m17361c() || n.m17362b()) {
                this.f4904d -= StaggeredGridLayoutManager.this.f4869u.mo17540e(remove);
            }
            if (size == 1) {
                this.f4902b = Integer.MIN_VALUE;
            }
            this.f4903c = Integer.MIN_VALUE;
        }

        /* renamed from: t */
        void m17068t() {
            View remove = this.f4901a.remove(0);
            LayoutParams n = m17074n(remove);
            n.f4883e = null;
            if (this.f4901a.size() == 0) {
                this.f4903c = Integer.MIN_VALUE;
            }
            if (n.m17361c() || n.m17362b()) {
                this.f4904d -= StaggeredGridLayoutManager.this.f4869u.mo17540e(remove);
            }
            this.f4902b = Integer.MIN_VALUE;
        }

        /* renamed from: u */
        void m17067u(View view) {
            LayoutParams n = m17074n(view);
            n.f4883e = this;
            this.f4901a.add(0, view);
            this.f4902b = Integer.MIN_VALUE;
            if (this.f4901a.size() == 1) {
                this.f4903c = Integer.MIN_VALUE;
            }
            if (n.m17361c() || n.m17362b()) {
                this.f4904d += StaggeredGridLayoutManager.this.f4869u.mo17540e(view);
            }
        }

        /* renamed from: v */
        void m17066v(int i) {
            this.f4902b = i;
            this.f4903c = i;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.LayoutManager.Properties j0 = RecyclerView.LayoutManager.m17398j0(context, attributeSet, i, i2);
        m17198I2(j0.f4773a);
        m17194K2(j0.f4774b);
        m17196J2(j0.f4775c);
        m17159b2();
    }

    /* renamed from: A2 */
    private void m17212A2(View view) {
        for (int i = this.f4867s - 1; i >= 0; i--) {
            this.f4868t[i].m17067u(view);
        }
    }

    /* renamed from: B2 */
    private void m17211B2(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (layoutState.f4648a && !layoutState.f4656i) {
            if (layoutState.f4649b == 0) {
                if (layoutState.f4652e == -1) {
                    m17210C2(recycler, layoutState.f4654g);
                } else {
                    m17207D2(recycler, layoutState.f4653f);
                }
            } else if (layoutState.f4652e == -1) {
                int i = layoutState.f4653f;
                int n2 = i - m17139n2(i);
                m17210C2(recycler, n2 < 0 ? layoutState.f4654g : layoutState.f4654g - Math.min(n2, layoutState.f4649b));
            } else {
                int o2 = m17138o2(layoutState.f4654g) - layoutState.f4654g;
                m17207D2(recycler, o2 < 0 ? layoutState.f4653f : Math.min(o2, layoutState.f4649b) + layoutState.f4653f);
            }
        }
    }

    /* renamed from: C2 */
    private void m17210C2(RecyclerView.Recycler recycler, int i) {
        for (int K = m17441K() - 1; K >= 0; K--) {
            View J = m17442J(K);
            if (this.f4869u.mo17538g(J) >= i && this.f4869u.mo17529q(J) >= i) {
                LayoutParams layoutParams = (LayoutParams) J.getLayoutParams();
                if (layoutParams.f4884f) {
                    for (int i2 = 0; i2 < this.f4867s; i2++) {
                        if (this.f4868t[i2].f4901a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.f4867s; i3++) {
                        this.f4868t[i3].m17069s();
                    }
                } else if (layoutParams.f4883e.f4901a.size() != 1) {
                    layoutParams.f4883e.m17069s();
                } else {
                    return;
                }
                m17389n1(J, recycler);
            } else {
                return;
            }
        }
    }

    /* renamed from: D2 */
    private void m17207D2(RecyclerView.Recycler recycler, int i) {
        while (m17441K() > 0) {
            View J = m17442J(0);
            if (this.f4869u.mo17541d(J) <= i && this.f4869u.mo17530p(J) <= i) {
                LayoutParams layoutParams = (LayoutParams) J.getLayoutParams();
                if (layoutParams.f4884f) {
                    for (int i2 = 0; i2 < this.f4867s; i2++) {
                        if (this.f4868t[i2].f4901a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.f4867s; i3++) {
                        this.f4868t[i3].m17068t();
                    }
                } else if (layoutParams.f4883e.f4901a.size() != 1) {
                    layoutParams.f4883e.m17068t();
                } else {
                    return;
                }
                m17389n1(J, recycler);
            } else {
                return;
            }
        }
    }

    /* renamed from: E2 */
    private void m17204E2() {
        if (this.f4870v.mo17534k() != 1073741824) {
            float f = 0.0f;
            int K = m17441K();
            for (int i = 0; i < K; i++) {
                View J = m17442J(i);
                float e = this.f4870v.mo17540e(J);
                if (e >= f) {
                    float f2 = e;
                    if (((LayoutParams) J.getLayoutParams()).m17110f()) {
                        f2 = (e * 1.0f) / this.f4867s;
                    }
                    f = Math.max(f, f2);
                }
            }
            int i2 = this.f4872x;
            int round = Math.round(f * this.f4867s);
            int i3 = round;
            if (this.f4870v.mo17534k() == Integer.MIN_VALUE) {
                i3 = Math.min(round, this.f4870v.mo17531n());
            }
            m17180Q2(i3);
            if (this.f4872x != i2) {
                for (int i4 = 0; i4 < K; i4++) {
                    View J2 = m17442J(i4);
                    LayoutParams layoutParams = (LayoutParams) J2.getLayoutParams();
                    if (!layoutParams.f4884f) {
                        if (!m17126u2() || this.f4871w != 1) {
                            int i5 = layoutParams.f4883e.f4905e;
                            int i6 = this.f4872x * i5;
                            int i7 = i5 * i2;
                            if (this.f4871w == 1) {
                                J2.offsetLeftAndRight(i6 - i7);
                            } else {
                                J2.offsetTopAndBottom(i6 - i7);
                            }
                        } else {
                            int i8 = this.f4867s;
                            int i9 = layoutParams.f4883e.f4905e;
                            J2.offsetLeftAndRight(((-((i8 - 1) - i9)) * this.f4872x) - ((-((i8 - 1) - i9)) * i2));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: F2 */
    private void m17202F2() {
        if (this.f4871w == 1 || !m17126u2()) {
            this.f4851A = this.f4874z;
        } else {
            this.f4851A = !this.f4874z;
        }
    }

    /* renamed from: H2 */
    private void m17199H2(int i) {
        LayoutState layoutState = this.f4873y;
        layoutState.f4652e = i;
        int i2 = 1;
        if (this.f4851A != (i == -1)) {
            i2 = -1;
        }
        layoutState.f4651d = i2;
    }

    /* renamed from: L2 */
    private void m17192L2(int i, int i2) {
        for (int i3 = 0; i3 < this.f4867s; i3++) {
            if (!this.f4868t[i3].f4901a.isEmpty()) {
                m17178R2(this.f4868t[i3], i, i2);
            }
        }
    }

    /* renamed from: M2 */
    private boolean m17190M2(RecyclerView.State state, AnchorInfo anchorInfo) {
        anchorInfo.f4876a = this.f4857G ? m17149h2(state.m17275b()) : m17156d2(state.m17275b());
        anchorInfo.f4877b = Integer.MIN_VALUE;
        return true;
    }

    /* renamed from: N1 */
    private void m17189N1(View view) {
        for (int i = this.f4867s - 1; i >= 0; i--) {
            this.f4868t[i].m17087a(view);
        }
    }

    /* renamed from: O1 */
    private void m17186O1(AnchorInfo anchorInfo) {
        SavedState savedState = this.f4859I;
        int i = savedState.f4893h;
        if (i > 0) {
            if (i == this.f4867s) {
                for (int i2 = 0; i2 < this.f4867s; i2++) {
                    this.f4868t[i2].m17083e();
                    SavedState savedState2 = this.f4859I;
                    int i3 = savedState2.f4894i[i2];
                    int i4 = i3;
                    if (i3 != Integer.MIN_VALUE) {
                        i4 = i3 + (savedState2.f4899n ? this.f4869u.mo17536i() : this.f4869u.mo17532m());
                    }
                    this.f4868t[i2].m17066v(i4);
                }
            } else {
                savedState.m17090b();
                SavedState savedState3 = this.f4859I;
                savedState3.f4891f = savedState3.f4892g;
            }
        }
        SavedState savedState4 = this.f4859I;
        this.f4858H = savedState4.f4900o;
        m17196J2(savedState4.f4898m);
        m17202F2();
        SavedState savedState5 = this.f4859I;
        int i5 = savedState5.f4891f;
        if (i5 != -1) {
            this.f4853C = i5;
            anchorInfo.f4878c = savedState5.f4899n;
        } else {
            anchorInfo.f4878c = this.f4851A;
        }
        SavedState savedState6 = this.f4859I;
        if (savedState6.f4895j > 1) {
            LazySpanLookup lazySpanLookup = this.f4855E;
            lazySpanLookup.f4885a = savedState6.f4896k;
            lazySpanLookup.f4886b = savedState6.f4897l;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c1  */
    /* renamed from: P2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m17183P2(int r5, androidx.recyclerview.widget.RecyclerView.State r6) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m17183P2(int, androidx.recyclerview.widget.RecyclerView$State):void");
    }

    /* renamed from: R1 */
    private void m17179R1(View view, LayoutParams layoutParams, LayoutState layoutState) {
        if (layoutState.f4652e == 1) {
            if (layoutParams.f4884f) {
                m17189N1(view);
            } else {
                layoutParams.f4883e.m17087a(view);
            }
        } else if (layoutParams.f4884f) {
            m17212A2(view);
        } else {
            layoutParams.f4883e.m17067u(view);
        }
    }

    /* renamed from: R2 */
    private void m17178R2(Span span, int i, int i2) {
        int j = span.m17078j();
        if (i == -1) {
            if (span.m17073o() + j <= i2) {
                this.f4852B.set(span.f4905e, false);
            }
        } else if (span.m17077k() - j >= i2) {
            this.f4852B.set(span.f4905e, false);
        }
    }

    /* renamed from: S1 */
    private int m17176S1(int i) {
        int i2 = -1;
        if (m17441K() == 0) {
            if (this.f4851A) {
                i2 = 1;
            }
            return i2;
        }
        if ((i < m17146k2()) == this.f4851A) {
            i2 = 1;
        }
        return i2;
    }

    /* renamed from: S2 */
    private int m17175S2(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* renamed from: U1 */
    private boolean m17171U1(Span span) {
        if (this.f4851A) {
            if (span.m17077k() >= this.f4869u.mo17536i()) {
                return false;
            }
            ArrayList<View> arrayList = span.f4901a;
            return !span.m17074n(arrayList.get(arrayList.size() - 1)).f4884f;
        } else if (span.m17073o() > this.f4869u.mo17532m()) {
            return !span.m17074n(span.f4901a.get(0)).f4884f;
        } else {
            return false;
        }
    }

    /* renamed from: V1 */
    private int m17169V1(RecyclerView.State state) {
        if (m17441K() == 0) {
            return 0;
        }
        return ScrollbarHelper.m17257a(state, this.f4869u, m17152f2(!this.f4864N), m17154e2(!this.f4864N), this, this.f4864N);
    }

    /* renamed from: W1 */
    private int m17168W1(RecyclerView.State state) {
        if (m17441K() == 0) {
            return 0;
        }
        return ScrollbarHelper.m17256b(state, this.f4869u, m17152f2(!this.f4864N), m17154e2(!this.f4864N), this, this.f4864N, this.f4851A);
    }

    /* renamed from: X1 */
    private int m17166X1(RecyclerView.State state) {
        if (m17441K() == 0) {
            return 0;
        }
        return ScrollbarHelper.m17255c(state, this.f4869u, m17152f2(!this.f4864N), m17154e2(!this.f4864N), this, this.f4864N);
    }

    /* renamed from: Y1 */
    private int m17164Y1(int i) {
        int i2 = -1;
        int i3 = 1;
        int i4 = 1;
        if (i == 1) {
            return (this.f4871w != 1 && m17126u2()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.f4871w != 1 && m17126u2()) ? -1 : 1;
        }
        if (i == 17) {
            if (this.f4871w != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f4871w != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            if (this.f4871w != 0) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            if (this.f4871w != 1) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        }
    }

    /* renamed from: Z1 */
    private LazySpanLookup.FullSpanItem m17162Z1(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f4889h = new int[this.f4867s];
        for (int i2 = 0; i2 < this.f4867s; i2++) {
            fullSpanItem.f4889h[i2] = i - this.f4868t[i2].m17076l(i);
        }
        return fullSpanItem;
    }

    /* renamed from: a2 */
    private LazySpanLookup.FullSpanItem m17160a2(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f4889h = new int[this.f4867s];
        for (int i2 = 0; i2 < this.f4867s; i2++) {
            fullSpanItem.f4889h[i2] = this.f4868t[i2].m17072p(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: b2 */
    private void m17159b2() {
        this.f4869u = OrientationHelper.m17545b(this, this.f4871w);
        this.f4870v = OrientationHelper.m17545b(this, 1 - this.f4871w);
    }

    /* renamed from: c2 */
    private int m17158c2(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state) {
        Span span;
        int i;
        int i2;
        int i3;
        int i4;
        this.f4852B.set(0, this.f4867s, true);
        int i5 = this.f4873y.f4656i ? layoutState.f4652e == 1 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : Integer.MIN_VALUE : layoutState.f4652e == 1 ? layoutState.f4654g + layoutState.f4649b : layoutState.f4653f - layoutState.f4649b;
        m17192L2(layoutState.f4652e, i5);
        int i6 = this.f4851A ? this.f4869u.mo17536i() : this.f4869u.mo17532m();
        boolean z = false;
        while (layoutState.m17656a(state) && (this.f4873y.f4656i || !this.f4852B.isEmpty())) {
            View b = layoutState.m17655b(recycler);
            LayoutParams layoutParams = (LayoutParams) b.getLayoutParams();
            int a = layoutParams.m17363a();
            int g = this.f4855E.m17103g(a);
            boolean z2 = g == -1;
            if (z2) {
                span = layoutParams.f4884f ? this.f4868t[0] : m17135q2(layoutState);
                this.f4855E.m17096n(a, span);
            } else {
                span = this.f4868t[g];
            }
            layoutParams.f4883e = span;
            if (layoutState.f4652e == 1) {
                m17410e(b);
            } else {
                m17408f(b, 0);
            }
            m17122w2(b, layoutParams, false);
            if (layoutState.f4652e == 1) {
                int m2 = layoutParams.f4884f ? m17141m2(i6) : span.m17076l(i6);
                int e = this.f4869u.mo17540e(b);
                if (z2 && layoutParams.f4884f) {
                    LazySpanLookup.FullSpanItem Z1 = m17162Z1(m2);
                    Z1.f4888g = -1;
                    Z1.f4887f = a;
                    this.f4855E.m17109a(Z1);
                }
                i2 = e + m2;
                i = m2;
            } else {
                int p2 = layoutParams.f4884f ? m17136p2(i6) : span.m17072p(i6);
                i = p2 - this.f4869u.mo17540e(b);
                if (z2 && layoutParams.f4884f) {
                    LazySpanLookup.FullSpanItem a2 = m17160a2(p2);
                    a2.f4888g = 1;
                    a2.f4887f = a;
                    this.f4855E.m17109a(a2);
                }
                i2 = p2;
            }
            if (layoutParams.f4884f && layoutState.f4651d == -1) {
                if (z2) {
                    this.f4863M = true;
                } else {
                    if (!(layoutState.f4652e == 1 ? m17184P1() : m17181Q1())) {
                        LazySpanLookup.FullSpanItem f = this.f4855E.m17104f(a);
                        if (f != null) {
                            f.f4890i = true;
                        }
                        this.f4863M = true;
                    }
                }
            }
            m17179R1(b, layoutParams, layoutState);
            if (!m17126u2() || this.f4871w != 1) {
                int m = layoutParams.f4884f ? this.f4870v.mo17532m() : (span.f4905e * this.f4872x) + this.f4870v.mo17532m();
                i3 = this.f4870v.mo17540e(b) + m;
                i4 = m;
            } else {
                int i7 = layoutParams.f4884f ? this.f4870v.mo17536i() : this.f4870v.mo17536i() - (((this.f4867s - 1) - span.f4905e) * this.f4872x);
                i4 = i7 - this.f4870v.mo17540e(b);
                i3 = i7;
            }
            if (this.f4871w == 1) {
                m17462A0(b, i4, i, i3, i2);
            } else {
                m17462A0(b, i, i4, i2, i3);
            }
            if (layoutParams.f4884f) {
                m17192L2(this.f4873y.f4652e, i5);
            } else {
                m17178R2(span, this.f4873y.f4652e, i5);
            }
            m17211B2(recycler, this.f4873y);
            if (this.f4873y.f4655h && b.hasFocusable()) {
                if (layoutParams.f4884f) {
                    this.f4852B.clear();
                } else {
                    this.f4852B.set(span.f4905e, false);
                }
            }
            z = true;
        }
        if (!z) {
            m17211B2(recycler, this.f4873y);
        }
        int m3 = this.f4873y.f4652e == -1 ? this.f4869u.mo17532m() - m17136p2(this.f4869u.mo17532m()) : m17141m2(this.f4869u.mo17536i()) - this.f4869u.mo17536i();
        return m3 > 0 ? Math.min(layoutState.f4649b, m3) : 0;
    }

    /* renamed from: d2 */
    private int m17156d2(int i) {
        int K = m17441K();
        for (int i2 = 0; i2 < K; i2++) {
            int i0 = m17400i0(m17442J(i2));
            if (i0 >= 0 && i0 < i) {
                return i0;
            }
        }
        return 0;
    }

    /* renamed from: h2 */
    private int m17149h2(int i) {
        for (int K = m17441K() - 1; K >= 0; K--) {
            int i0 = m17400i0(m17442J(K));
            if (i0 >= 0 && i0 < i) {
                return i0;
            }
        }
        return 0;
    }

    /* renamed from: i2 */
    private void m17148i2(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i;
        int m2 = m17141m2(Integer.MIN_VALUE);
        if (m2 != Integer.MIN_VALUE && (i = this.f4869u.mo17536i() - m2) > 0) {
            int i2 = i - (-m17200G2(-i, recycler, state));
            if (z && i2 > 0) {
                this.f4869u.mo17528r(i2);
            }
        }
    }

    /* renamed from: j2 */
    private void m17147j2(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int m;
        int p2 = m17136p2(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (p2 != Integer.MAX_VALUE && (m = p2 - this.f4869u.mo17532m()) > 0) {
            int G2 = m - m17200G2(m, recycler, state);
            if (z && G2 > 0) {
                this.f4869u.mo17528r(-G2);
            }
        }
    }

    /* renamed from: m2 */
    private int m17141m2(int i) {
        int l = this.f4868t[0].m17076l(i);
        for (int i2 = 1; i2 < this.f4867s; i2++) {
            int l2 = this.f4868t[i2].m17076l(i);
            l = l;
            if (l2 > l) {
                l = l2;
            }
        }
        return l;
    }

    /* renamed from: n2 */
    private int m17139n2(int i) {
        int p = this.f4868t[0].m17072p(i);
        for (int i2 = 1; i2 < this.f4867s; i2++) {
            int p2 = this.f4868t[i2].m17072p(i);
            p = p;
            if (p2 > p) {
                p = p2;
            }
        }
        return p;
    }

    /* renamed from: o2 */
    private int m17138o2(int i) {
        int l = this.f4868t[0].m17076l(i);
        for (int i2 = 1; i2 < this.f4867s; i2++) {
            int l2 = this.f4868t[i2].m17076l(i);
            l = l;
            if (l2 < l) {
                l = l2;
            }
        }
        return l;
    }

    /* renamed from: p2 */
    private int m17136p2(int i) {
        int p = this.f4868t[0].m17072p(i);
        for (int i2 = 1; i2 < this.f4867s; i2++) {
            int p2 = this.f4868t[i2].m17072p(i);
            p = p;
            if (p2 < p) {
                p = p2;
            }
        }
        return p;
    }

    /* renamed from: q2 */
    private Span m17135q2(LayoutState layoutState) {
        int i;
        int i2;
        int i3 = -1;
        if (m17118y2(layoutState.f4652e)) {
            i2 = this.f4867s - 1;
            i = -1;
        } else {
            i2 = 0;
            i3 = this.f4867s;
            i = 1;
        }
        int i4 = layoutState.f4652e;
        Span span = null;
        Span span2 = null;
        if (i4 == 1) {
            int i5 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int m = this.f4869u.mo17532m();
            for (int i6 = i2; i6 != i3; i6 += i) {
                Span span3 = this.f4868t[i6];
                int l = span3.m17076l(m);
                i5 = i5;
                if (l < i5) {
                    span2 = span3;
                    i5 = l;
                }
            }
            return span2;
        }
        int i7 = Integer.MIN_VALUE;
        int i8 = this.f4869u.mo17536i();
        for (int i9 = i2; i9 != i3; i9 += i) {
            Span span4 = this.f4868t[i9];
            int p = span4.m17072p(i8);
            i7 = i7;
            if (p > i7) {
                span = span4;
                i7 = p;
            }
        }
        return span;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* renamed from: r2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m17133r2(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f4851A
            if (r0 == 0) goto L_0x0010
            r0 = r4
            int r0 = r0.m17143l2()
            r8 = r0
            goto L_0x0016
        L_0x0010:
            r0 = r4
            int r0 = r0.m17146k2()
            r8 = r0
        L_0x0016:
            r0 = r7
            r1 = 8
            if (r0 != r1) goto L_0x0034
            r0 = r5
            r1 = r6
            if (r0 >= r1) goto L_0x0029
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            goto L_0x0039
        L_0x0029:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r10 = r0
            goto L_0x003c
        L_0x0034:
            r0 = r5
            r1 = r6
            int r0 = r0 + r1
            r9 = r0
        L_0x0039:
            r0 = r5
            r10 = r0
        L_0x003c:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4855E
            r1 = r10
            int r0 = r0.m17102h(r1)
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x007a
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x006e
            r0 = r7
            r1 = 8
            if (r0 == r1) goto L_0x0059
            goto L_0x0083
        L_0x0059:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4855E
            r1 = r5
            r2 = 1
            r0.m17099k(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4855E
            r1 = r6
            r2 = 1
            r0.m17100j(r1, r2)
            goto L_0x0083
        L_0x006e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4855E
            r1 = r5
            r2 = r6
            r0.m17099k(r1, r2)
            goto L_0x0083
        L_0x007a:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4855E
            r1 = r5
            r2 = r6
            r0.m17100j(r1, r2)
        L_0x0083:
            r0 = r9
            r1 = r8
            if (r0 > r1) goto L_0x008b
            return
        L_0x008b:
            r0 = r4
            boolean r0 = r0.f4851A
            if (r0 == 0) goto L_0x009a
            r0 = r4
            int r0 = r0.m17146k2()
            r5 = r0
            goto L_0x009f
        L_0x009a:
            r0 = r4
            int r0 = r0.m17143l2()
            r5 = r0
        L_0x009f:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto L_0x00a9
            r0 = r4
            r0.m17375u1()
        L_0x00a9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m17133r2(int, int, int):void");
    }

    /* renamed from: v2 */
    private void m17124v2(View view, int i, int i2, boolean z) {
        m17396k(view, this.f4861K);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.f4861K;
        int S2 = m17175S2(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.f4861K;
        int S22 = m17175S2(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z ? m17443I1(view, S2, S22, layoutParams) : m17449G1(view, S2, S22, layoutParams)) {
            view.measure(S2, S22);
        }
    }

    /* renamed from: w2 */
    private void m17122w2(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.f4884f) {
            if (this.f4871w == 1) {
                m17124v2(view, this.f4860J, RecyclerView.LayoutManager.m17439L(m17422X(), m17421Y(), m17403h0() + m17409e0(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
            } else {
                m17124v2(view, RecyclerView.LayoutManager.m17439L(m17385p0(), m17382q0(), m17407f0() + m17405g0(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), this.f4860J, z);
            }
        } else if (this.f4871w == 1) {
            m17124v2(view, RecyclerView.LayoutManager.m17439L(this.f4872x, m17382q0(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.LayoutManager.m17439L(m17422X(), m17421Y(), m17403h0() + m17409e0(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
        } else {
            m17124v2(view, RecyclerView.LayoutManager.m17439L(m17385p0(), m17382q0(), m17407f0() + m17405g0(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.LayoutManager.m17439L(this.f4872x, m17421Y(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false), z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02c0  */
    /* renamed from: x2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m17120x2(androidx.recyclerview.widget.RecyclerView.Recycler r6, androidx.recyclerview.widget.RecyclerView.State r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m17120x2(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, boolean):void");
    }

    /* renamed from: y2 */
    private boolean m17118y2(int i) {
        boolean z = true;
        boolean z2 = true;
        if (this.f4871w == 0) {
            if ((i == -1) == this.f4851A) {
                z2 = false;
            }
            return z2;
        }
        if (((i == -1) == this.f4851A) != m17126u2()) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: D0 */
    public void mo17209D0(int i) {
        super.mo17209D0(i);
        for (int i2 = 0; i2 < this.f4867s; i2++) {
            this.f4868t[i2].m17070r(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: D1 */
    public void mo17208D1(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int f0 = m17407f0() + m17405g0();
        int h0 = m17403h0() + m17409e0();
        if (this.f4871w == 1) {
            i3 = RecyclerView.LayoutManager.m17388o(i2, rect.height() + h0, m17414c0());
            i4 = RecyclerView.LayoutManager.m17388o(i, (this.f4872x * this.f4867s) + f0, m17411d0());
        } else {
            i4 = RecyclerView.LayoutManager.m17388o(i, rect.width() + f0, m17411d0());
            i3 = RecyclerView.LayoutManager.m17388o(i2, (this.f4872x * this.f4867s) + h0, m17414c0());
        }
        m17455C1(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: E */
    public RecyclerView.LayoutParams mo17206E() {
        return this.f4871w == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: E0 */
    public void mo17205E0(int i) {
        super.mo17205E0(i);
        for (int i2 = 0; i2 < this.f4867s; i2++) {
            this.f4868t[i2].m17070r(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: F */
    public RecyclerView.LayoutParams mo17203F(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: G */
    public RecyclerView.LayoutParams mo17201G(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: G2 */
    int m17200G2(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (m17441K() == 0 || i == 0) {
            return 0;
        }
        m17116z2(i, state);
        int c2 = m17158c2(recycler, this.f4873y, state);
        if (this.f4873y.f4649b >= c2) {
            i = i < 0 ? -c2 : c2;
        }
        this.f4869u.mo17528r(-i);
        this.f4857G = this.f4851A;
        LayoutState layoutState = this.f4873y;
        layoutState.f4649b = 0;
        m17211B2(recycler, layoutState);
        return i;
    }

    /* renamed from: I2 */
    public void m17198I2(int i) {
        if (i == 0 || i == 1) {
            mo17150h(null);
            if (i != this.f4871w) {
                this.f4871w = i;
                OrientationHelper orientationHelper = this.f4869u;
                this.f4869u = this.f4870v;
                this.f4870v = orientationHelper;
                m17375u1();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: J0 */
    public void mo17197J0(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.mo17197J0(recyclerView, recycler);
        m17384p1(this.f4866P);
        for (int i = 0; i < this.f4867s; i++) {
            this.f4868t[i].m17083e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: J1 */
    public void mo9858J1(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.m17284p(i);
        m17440K1(linearSmoothScroller);
    }

    /* renamed from: J2 */
    public void m17196J2(boolean z) {
        mo17150h(null);
        SavedState savedState = this.f4859I;
        if (!(savedState == null || savedState.f4898m == z)) {
            savedState.f4898m = z;
        }
        this.f4874z = z;
        m17375u1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    /* renamed from: K0 */
    public View mo17195K0(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View C;
        View m;
        if (m17441K() == 0 || (C = m17457C(view)) == null) {
            return null;
        }
        m17202F2();
        int Y1 = m17164Y1(i);
        if (Y1 == Integer.MIN_VALUE) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) C.getLayoutParams();
        boolean z = layoutParams.f4884f;
        Span span = layoutParams.f4883e;
        int l2 = Y1 == 1 ? m17143l2() : m17146k2();
        m17183P2(l2, state);
        m17199H2(Y1);
        LayoutState layoutState = this.f4873y;
        layoutState.f4650c = layoutState.f4651d + l2;
        layoutState.f4649b = (int) (this.f4869u.mo17531n() * 0.33333334f);
        LayoutState layoutState2 = this.f4873y;
        layoutState2.f4655h = true;
        layoutState2.f4648a = false;
        m17158c2(recycler, layoutState2, state);
        this.f4857G = this.f4851A;
        if (!(z || (m = span.m17075m(l2, Y1)) == null || m == C)) {
            return m;
        }
        if (m17118y2(Y1)) {
            for (int i2 = this.f4867s - 1; i2 >= 0; i2--) {
                View m2 = this.f4868t[i2].m17075m(l2, Y1);
                if (!(m2 == null || m2 == C)) {
                    return m2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.f4867s; i3++) {
                View m3 = this.f4868t[i3].m17075m(l2, Y1);
                if (!(m3 == null || m3 == C)) {
                    return m3;
                }
            }
        }
        boolean z2 = (this.f4874z ^ true) == (Y1 == -1);
        if (!z) {
            View D = mo17454D(z2 ? span.m17082f() : span.m17081g());
            if (!(D == null || D == C)) {
                return D;
            }
        }
        if (m17118y2(Y1)) {
            for (int i4 = this.f4867s - 1; i4 >= 0; i4--) {
                if (i4 != span.f4905e) {
                    View D2 = mo17454D(z2 ? this.f4868t[i4].m17082f() : this.f4868t[i4].m17081g());
                    if (!(D2 == null || D2 == C)) {
                        return D2;
                    }
                }
            }
            return null;
        }
        for (int i5 = 0; i5 < this.f4867s; i5++) {
            View D3 = mo17454D(z2 ? this.f4868t[i5].m17082f() : this.f4868t[i5].m17081g());
            if (!(D3 == null || D3 == C)) {
                return D3;
            }
        }
        return null;
    }

    /* renamed from: K2 */
    public void m17194K2(int i) {
        mo17150h(null);
        if (i != this.f4867s) {
            m17128t2();
            this.f4867s = i;
            this.f4852B = new BitSet(this.f4867s);
            this.f4868t = new Span[this.f4867s];
            for (int i2 = 0; i2 < this.f4867s; i2++) {
                this.f4868t[i2] = new Span(i2);
            }
            m17375u1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: L0 */
    public void mo17193L0(AccessibilityEvent accessibilityEvent) {
        super.mo17193L0(accessibilityEvent);
        if (m17441K() > 0) {
            View f2 = m17152f2(false);
            View e2 = m17154e2(false);
            if (f2 != null && e2 != null) {
                int i0 = m17400i0(f2);
                int i02 = m17400i0(e2);
                if (i0 < i02) {
                    accessibilityEvent.setFromIndex(i0);
                    accessibilityEvent.setToIndex(i02);
                    return;
                }
                accessibilityEvent.setFromIndex(i02);
                accessibilityEvent.setToIndex(i0);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: M1 */
    public boolean mo17191M1() {
        return this.f4859I == null;
    }

    /* renamed from: N2 */
    boolean m17188N2(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i;
        boolean z = false;
        if (state.m17272e() || (i = this.f4853C) == -1) {
            return false;
        }
        if (i < 0 || i >= state.m17275b()) {
            this.f4853C = -1;
            this.f4854D = Integer.MIN_VALUE;
            return false;
        }
        SavedState savedState = this.f4859I;
        if (savedState == null || savedState.f4891f == -1 || savedState.f4893h < 1) {
            View D = mo17454D(this.f4853C);
            if (D != null) {
                anchorInfo.f4876a = this.f4851A ? m17143l2() : m17146k2();
                if (this.f4854D != Integer.MIN_VALUE) {
                    if (anchorInfo.f4878c) {
                        anchorInfo.f4877b = (this.f4869u.mo17536i() - this.f4854D) - this.f4869u.mo17541d(D);
                        return true;
                    }
                    anchorInfo.f4877b = (this.f4869u.mo17532m() + this.f4854D) - this.f4869u.mo17538g(D);
                    return true;
                } else if (this.f4869u.mo17540e(D) > this.f4869u.mo17531n()) {
                    anchorInfo.f4877b = anchorInfo.f4878c ? this.f4869u.mo17536i() : this.f4869u.mo17532m();
                    return true;
                } else {
                    int g = this.f4869u.mo17538g(D) - this.f4869u.mo17532m();
                    if (g < 0) {
                        anchorInfo.f4877b = -g;
                        return true;
                    }
                    int i2 = this.f4869u.mo17536i() - this.f4869u.mo17541d(D);
                    if (i2 < 0) {
                        anchorInfo.f4877b = i2;
                        return true;
                    }
                    anchorInfo.f4877b = Integer.MIN_VALUE;
                    return true;
                }
            } else {
                int i3 = this.f4853C;
                anchorInfo.f4876a = i3;
                int i4 = this.f4854D;
                if (i4 == Integer.MIN_VALUE) {
                    if (m17176S1(i3) == 1) {
                        z = true;
                    }
                    anchorInfo.f4878c = z;
                    anchorInfo.m17115a();
                } else {
                    anchorInfo.m17114b(i4);
                }
                anchorInfo.f4879d = true;
                return true;
            }
        } else {
            anchorInfo.f4877b = Integer.MIN_VALUE;
            anchorInfo.f4876a = this.f4853C;
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: O */
    public int mo17187O(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.f4871w == 1 ? this.f4867s : super.mo17187O(recycler, state);
    }

    /* renamed from: O2 */
    void m17185O2(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (!m17188N2(state, anchorInfo) && !m17190M2(state, anchorInfo)) {
            anchorInfo.m17115a();
            anchorInfo.f4876a = 0;
        }
    }

    /* renamed from: P1 */
    boolean m17184P1() {
        int l = this.f4868t[0].m17076l(Integer.MIN_VALUE);
        for (int i = 1; i < this.f4867s; i++) {
            if (this.f4868t[i].m17076l(Integer.MIN_VALUE) != l) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Q0 */
    public void mo17182Q0(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m17432P0(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.f4871w == 0) {
            accessibilityNodeInfoCompat.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(layoutParams2.m17111e(), layoutParams2.f4884f ? this.f4867s : 1, -1, -1, false, false));
        } else {
            accessibilityNodeInfoCompat.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(-1, -1, layoutParams2.m17111e(), layoutParams2.f4884f ? this.f4867s : 1, false, false));
        }
    }

    /* renamed from: Q1 */
    boolean m17181Q1() {
        int p = this.f4868t[0].m17072p(Integer.MIN_VALUE);
        for (int i = 1; i < this.f4867s; i++) {
            if (this.f4868t[i].m17072p(Integer.MIN_VALUE) != p) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: Q2 */
    void m17180Q2(int i) {
        this.f4872x = i / this.f4867s;
        this.f4860J = View.MeasureSpec.makeMeasureSpec(i, this.f4870v.mo17534k());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: S0 */
    public void mo17177S0(RecyclerView recyclerView, int i, int i2) {
        m17133r2(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: T0 */
    public void mo17174T0(RecyclerView recyclerView) {
        this.f4855E.m17108b();
        m17375u1();
    }

    /* renamed from: T1 */
    boolean m17173T1() {
        int i;
        int i2;
        if (m17441K() == 0 || this.f4856F == 0 || !m17378s0()) {
            return false;
        }
        if (this.f4851A) {
            i2 = m17143l2();
            i = m17146k2();
        } else {
            i2 = m17146k2();
            i = m17143l2();
        }
        if (i2 == 0 && m17131s2() != null) {
            this.f4855E.m17108b();
            m17373v1();
            m17375u1();
            return true;
        } else if (!this.f4863M) {
            return false;
        } else {
            int i3 = this.f4851A ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem e = this.f4855E.m17105e(i2, i4, i3, true);
            if (e == null) {
                this.f4863M = false;
                this.f4855E.m17106d(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem e2 = this.f4855E.m17105e(i2, e.f4887f, i3 * (-1), true);
            if (e2 == null) {
                this.f4855E.m17106d(e.f4887f);
            } else {
                this.f4855E.m17106d(e2.f4887f + 1);
            }
            m17373v1();
            m17375u1();
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: U0 */
    public void mo17172U0(RecyclerView recyclerView, int i, int i2, int i3) {
        m17133r2(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: V0 */
    public void mo17170V0(RecyclerView recyclerView, int i, int i2) {
        m17133r2(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: X0 */
    public void mo17167X0(RecyclerView recyclerView, int i, int i2, Object obj) {
        m17133r2(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Y0 */
    public void mo17165Y0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        m17120x2(recycler, state, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Z0 */
    public void mo17163Z0(RecyclerView.State state) {
        super.mo17163Z0(state);
        this.f4853C = -1;
        this.f4854D = Integer.MIN_VALUE;
        this.f4859I = null;
        this.f4862L.m17113c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    /* renamed from: a */
    public PointF mo17161a(int i) {
        int S1 = m17176S1(i);
        PointF pointF = new PointF();
        if (S1 == 0) {
            return null;
        }
        if (this.f4871w == 0) {
            pointF.x = S1;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = S1;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: d1 */
    public void mo17157d1(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f4859I = (SavedState) parcelable;
            m17375u1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: e1 */
    public Parcelable mo17155e1() {
        int i;
        int i2;
        int i3;
        int[] iArr;
        if (this.f4859I != null) {
            return new SavedState(this.f4859I);
        }
        SavedState savedState = new SavedState();
        savedState.f4898m = this.f4874z;
        savedState.f4899n = this.f4857G;
        savedState.f4900o = this.f4858H;
        LazySpanLookup lazySpanLookup = this.f4855E;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f4885a) == null) {
            savedState.f4895j = 0;
        } else {
            savedState.f4896k = iArr;
            savedState.f4895j = iArr.length;
            savedState.f4897l = lazySpanLookup.f4886b;
        }
        if (m17441K() > 0) {
            savedState.f4891f = this.f4857G ? m17143l2() : m17146k2();
            savedState.f4892g = m17151g2();
            int i4 = this.f4867s;
            savedState.f4893h = i4;
            savedState.f4894i = new int[i4];
            for (int i5 = 0; i5 < this.f4867s; i5++) {
                if (this.f4857G) {
                    i2 = this.f4868t[i5].m17076l(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f4869u.mo17536i();
                        i = i2 - i3;
                        savedState.f4894i[i5] = i;
                    } else {
                        savedState.f4894i[i5] = i;
                    }
                } else {
                    i2 = this.f4868t[i5].m17072p(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f4869u.mo17532m();
                        i = i2 - i3;
                        savedState.f4894i[i5] = i;
                    } else {
                        savedState.f4894i[i5] = i;
                    }
                }
            }
        } else {
            savedState.f4891f = -1;
            savedState.f4892g = -1;
            savedState.f4893h = 0;
        }
        return savedState;
    }

    /* renamed from: e2 */
    View m17154e2(boolean z) {
        int m = this.f4869u.mo17532m();
        int i = this.f4869u.mo17536i();
        View view = null;
        for (int K = m17441K() - 1; K >= 0; K--) {
            View J = m17442J(K);
            int g = this.f4869u.mo17538g(J);
            int d = this.f4869u.mo17541d(J);
            view = view;
            if (d > m) {
                if (g >= i) {
                    view = view;
                } else if (d <= i || !z) {
                    return J;
                } else {
                    view = view;
                    if (view == null) {
                        view = J;
                    }
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: f1 */
    public void mo17153f1(int i) {
        if (i == 0) {
            m17173T1();
        }
    }

    /* renamed from: f2 */
    View m17152f2(boolean z) {
        int m = this.f4869u.mo17532m();
        int i = this.f4869u.mo17536i();
        int K = m17441K();
        View view = null;
        for (int i2 = 0; i2 < K; i2++) {
            View J = m17442J(i2);
            int g = this.f4869u.mo17538g(J);
            view = view;
            if (this.f4869u.mo17541d(J) > m) {
                if (g >= i) {
                    view = view;
                } else if (g >= m || !z) {
                    return J;
                } else {
                    view = view;
                    if (view == null) {
                        view = J;
                    }
                }
            }
        }
        return view;
    }

    /* renamed from: g2 */
    int m17151g2() {
        View e2 = this.f4851A ? m17154e2(true) : m17152f2(true);
        return e2 == null ? -1 : m17400i0(e2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: h */
    public void mo17150h(String str) {
        if (this.f4859I == null) {
            super.mo17150h(str);
        }
    }

    /* renamed from: k2 */
    int m17146k2() {
        int i = 0;
        if (m17441K() != 0) {
            i = m17400i0(m17442J(0));
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: l */
    public boolean mo17145l() {
        return this.f4871w == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: l0 */
    public int mo17144l0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.f4871w == 0 ? this.f4867s : super.mo17144l0(recycler, state);
    }

    /* renamed from: l2 */
    int m17143l2() {
        int K = m17441K();
        return K == 0 ? 0 : m17400i0(m17442J(K - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: m */
    public boolean mo17142m() {
        boolean z = true;
        if (this.f4871w != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: n */
    public boolean mo17140n(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo
    /* renamed from: p */
    public void mo17137p(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i3;
        int i4;
        if (this.f4871w != 0) {
            i = i2;
        }
        if (!(m17441K() == 0 || i == 0)) {
            m17116z2(i, state);
            int[] iArr = this.f4865O;
            if (iArr == null || iArr.length < this.f4867s) {
                this.f4865O = new int[this.f4867s];
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.f4867s; i6++) {
                LayoutState layoutState = this.f4873y;
                if (layoutState.f4651d == -1) {
                    i4 = layoutState.f4653f;
                    i3 = this.f4868t[i6].m17072p(i4);
                } else {
                    i4 = this.f4868t[i6].m17076l(layoutState.f4654g);
                    i3 = this.f4873y.f4654g;
                }
                int i7 = i4 - i3;
                i5 = i5;
                if (i7 >= 0) {
                    this.f4865O[i5] = i7;
                    i5++;
                }
            }
            Arrays.sort(this.f4865O, 0, i5);
            for (int i8 = 0; i8 < i5 && this.f4873y.m17656a(state); i8++) {
                layoutPrefetchRegistry.mo17364a(this.f4873y.f4650c, this.f4865O[i8]);
                LayoutState layoutState2 = this.f4873y;
                layoutState2.f4650c += layoutState2.f4651d;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: r */
    public int mo17134r(RecyclerView.State state) {
        return m17169V1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: s */
    public int mo17132s(RecyclerView.State state) {
        return m17168W1(state);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e4, code lost:
        if (r0 == r0) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010b, code lost:
        if (r0 == r0) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010e, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0113, code lost:
        r6 = false;
     */
    /* renamed from: s2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View m17131s2() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m17131s2():android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: t */
    public int mo17130t(RecyclerView.State state) {
        return m17166X1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: t0 */
    public boolean mo17129t0() {
        return this.f4856F != 0;
    }

    /* renamed from: t2 */
    public void m17128t2() {
        this.f4855E.m17108b();
        m17375u1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: u */
    public int mo17127u(RecyclerView.State state) {
        return m17169V1(state);
    }

    /* renamed from: u2 */
    boolean m17126u2() {
        boolean z = true;
        if (m17419a0() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: v */
    public int mo17125v(RecyclerView.State state) {
        return m17168W1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: w */
    public int mo17123w(RecyclerView.State state) {
        return m17166X1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: x1 */
    public int mo17121x1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return m17200G2(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: y1 */
    public void mo17119y1(int i) {
        SavedState savedState = this.f4859I;
        if (!(savedState == null || savedState.f4891f == i)) {
            savedState.m17091a();
        }
        this.f4853C = i;
        this.f4854D = Integer.MIN_VALUE;
        m17375u1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: z1 */
    public int mo17117z1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return m17200G2(i, recycler, state);
    }

    /* renamed from: z2 */
    void m17116z2(int i, RecyclerView.State state) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m17143l2();
            i2 = 1;
        } else {
            i3 = m17146k2();
            i2 = -1;
        }
        this.f4873y.f4648a = true;
        m17183P2(i3, state);
        m17199H2(i2);
        LayoutState layoutState = this.f4873y;
        layoutState.f4650c = i3 + layoutState.f4651d;
        layoutState.f4649b = Math.abs(i);
    }
}

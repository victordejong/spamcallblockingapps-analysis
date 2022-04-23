package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager.class */
public class StaggeredGridLayoutManager extends RecyclerView.AbstractC1066i implements RecyclerView.AbstractC1076p.AbstractC1078b {

    /* renamed from: A */
    private SavedState f4676A;

    /* renamed from: B */
    private int f4677B;

    /* renamed from: G */
    private int[] f4682G;

    /* renamed from: a */
    C1084b[] f4684a;

    /* renamed from: b */
    AbstractC1148y f4685b;

    /* renamed from: c */
    AbstractC1148y f4686c;

    /* renamed from: j */
    private int f4693j;

    /* renamed from: k */
    private int f4694k;

    /* renamed from: l */
    private final C1143u f4695l;

    /* renamed from: m */
    private BitSet f4696m;

    /* renamed from: o */
    private boolean f4698o;

    /* renamed from: z */
    private boolean f4699z;

    /* renamed from: i */
    private int f4692i = -1;

    /* renamed from: d */
    boolean f4687d = false;

    /* renamed from: e */
    boolean f4688e = false;

    /* renamed from: f */
    int f4689f = -1;

    /* renamed from: g */
    int f4690g = Integer.MIN_VALUE;

    /* renamed from: h */
    LazySpanLookup f4691h = new LazySpanLookup();

    /* renamed from: n */
    private int f4697n = 2;

    /* renamed from: C */
    private final Rect f4678C = new Rect();

    /* renamed from: D */
    private final C1083a f4679D = new C1083a();

    /* renamed from: E */
    private boolean f4680E = false;

    /* renamed from: F */
    private boolean f4681F = true;

    /* renamed from: H */
    private final Runnable f4683H = new RunnableC1102an(this);

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a */
        C1084b f4700a;

        /* renamed from: b */
        boolean f4701b;

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

        /* renamed from: a */
        public final int m6914a() {
            C1084b bVar = this.f4700a;
            if (bVar == null) {
                return -1;
            }
            return bVar.f4729e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup.class */
    public static final class LazySpanLookup {

        /* renamed from: a */
        int[] f4702a;

        /* renamed from: b */
        List<FullSpanItem> f4703b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new C1103ao();

            /* renamed from: a */
            int f4704a;

            /* renamed from: b */
            int f4705b;

            /* renamed from: c */
            int[] f4706c;

            /* renamed from: d */
            boolean f4707d;

            FullSpanItem() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public FullSpanItem(Parcel parcel) {
                this.f4704a = parcel.readInt();
                this.f4705b = parcel.readInt();
                this.f4707d = parcel.readInt() != 1 ? false : true;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    this.f4706c = new int[readInt];
                    parcel.readIntArray(this.f4706c);
                }
            }

            /* renamed from: a */
            final int m6900a(int i) {
                int[] iArr = this.f4706c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f4704a + ", mGapDir=" + this.f4705b + ", mHasUnwantedGapAfter=" + this.f4707d + ", mGapPerSpan=" + Arrays.toString(this.f4706c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f4704a);
                parcel.writeInt(this.f4705b);
                parcel.writeInt(this.f4707d ? 1 : 0);
                int[] iArr = this.f4706c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                    return;
                }
                parcel.writeInt(iArr.length);
                parcel.writeIntArray(this.f4706c);
            }
        }

        LazySpanLookup() {
        }

        /* renamed from: e */
        private int m6903e(int i) {
            int length = this.f4702a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        /* renamed from: f */
        private void m6902f(int i) {
            int[] iArr = this.f4702a;
            if (iArr == null) {
                this.f4702a = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.f4702a, -1);
            } else if (i >= iArr.length) {
                this.f4702a = new int[m6903e(i)];
                System.arraycopy(iArr, 0, this.f4702a, 0, iArr.length);
                int[] iArr2 = this.f4702a;
                Arrays.fill(iArr2, iArr.length, iArr2.length, -1);
            }
        }

        /* renamed from: g */
        private int m6901g(int i) {
            if (this.f4703b == null) {
                return -1;
            }
            FullSpanItem d = m6904d(i);
            if (d != null) {
                this.f4703b.remove(d);
            }
            int size = this.f4703b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                } else if (this.f4703b.get(i2).f4704a >= i) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f4703b.get(i2);
            this.f4703b.remove(i2);
            return fullSpanItem.f4704a;
        }

        /* renamed from: a */
        final int m6912a(int i) {
            List<FullSpanItem> list = this.f4703b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f4703b.get(size).f4704a >= i) {
                        this.f4703b.remove(size);
                    }
                }
            }
            return m6907b(i);
        }

        /* renamed from: a */
        public final FullSpanItem m6910a(int i, int i2, int i3) {
            List<FullSpanItem> list = this.f4703b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f4703b.get(i4);
                if (fullSpanItem.f4704a >= i2) {
                    return null;
                }
                if (fullSpanItem.f4704a >= i && (i3 == 0 || fullSpanItem.f4705b == i3 || fullSpanItem.f4707d)) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: a */
        final void m6913a() {
            int[] iArr = this.f4702a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f4703b = null;
        }

        /* renamed from: a */
        final void m6911a(int i, int i2) {
            int[] iArr = this.f4702a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                m6902f(i3);
                int[] iArr2 = this.f4702a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.f4702a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                List<FullSpanItem> list = this.f4703b;
                if (list != null) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = this.f4703b.get(size);
                        if (fullSpanItem.f4704a >= i) {
                            if (fullSpanItem.f4704a < i3) {
                                this.f4703b.remove(size);
                            } else {
                                fullSpanItem.f4704a -= i2;
                            }
                        }
                    }
                }
            }
        }

        /* renamed from: a */
        final void m6909a(int i, C1084b bVar) {
            m6902f(i);
            this.f4702a[i] = bVar.f4729e;
        }

        /* renamed from: a */
        public final void m6908a(FullSpanItem fullSpanItem) {
            if (this.f4703b == null) {
                this.f4703b = new ArrayList();
            }
            int size = this.f4703b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f4703b.get(i);
                if (fullSpanItem2.f4704a == fullSpanItem.f4704a) {
                    this.f4703b.remove(i);
                }
                if (fullSpanItem2.f4704a >= fullSpanItem.f4704a) {
                    this.f4703b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f4703b.add(fullSpanItem);
        }

        /* renamed from: b */
        final int m6907b(int i) {
            int[] iArr = this.f4702a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int g = m6901g(i);
            if (g == -1) {
                int[] iArr2 = this.f4702a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f4702a.length;
            }
            int i2 = g + 1;
            Arrays.fill(this.f4702a, i, i2, -1);
            return i2;
        }

        /* renamed from: b */
        final void m6906b(int i, int i2) {
            int[] iArr = this.f4702a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                m6902f(i3);
                int[] iArr2 = this.f4702a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.f4702a, i, i3, -1);
                List<FullSpanItem> list = this.f4703b;
                if (list != null) {
                    for (int size = list.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = this.f4703b.get(size);
                        if (fullSpanItem.f4704a >= i) {
                            fullSpanItem.f4704a += i2;
                        }
                    }
                }
            }
        }

        /* renamed from: c */
        final int m6905c(int i) {
            int[] iArr = this.f4702a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: d */
        public final FullSpanItem m6904d(int i) {
            List<FullSpanItem> list = this.f4703b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f4703b.get(size);
                if (fullSpanItem.f4704a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1104ap();

        /* renamed from: a */
        int f4708a;

        /* renamed from: b */
        int f4709b;

        /* renamed from: c */
        int f4710c;

        /* renamed from: d */
        int[] f4711d;

        /* renamed from: e */
        int f4712e;

        /* renamed from: f */
        int[] f4713f;

        /* renamed from: g */
        List<LazySpanLookup.FullSpanItem> f4714g;

        /* renamed from: h */
        boolean f4715h;

        /* renamed from: i */
        boolean f4716i;

        /* renamed from: j */
        boolean f4717j;

        public SavedState() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            this.f4708a = parcel.readInt();
            this.f4709b = parcel.readInt();
            this.f4710c = parcel.readInt();
            int i = this.f4710c;
            if (i > 0) {
                this.f4711d = new int[i];
                parcel.readIntArray(this.f4711d);
            }
            this.f4712e = parcel.readInt();
            int i2 = this.f4712e;
            if (i2 > 0) {
                this.f4713f = new int[i2];
                parcel.readIntArray(this.f4713f);
            }
            boolean z = false;
            this.f4715h = parcel.readInt() == 1;
            this.f4716i = parcel.readInt() == 1;
            this.f4717j = parcel.readInt() == 1 ? true : z;
            this.f4714g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f4710c = savedState.f4710c;
            this.f4708a = savedState.f4708a;
            this.f4709b = savedState.f4709b;
            this.f4711d = savedState.f4711d;
            this.f4712e = savedState.f4712e;
            this.f4713f = savedState.f4713f;
            this.f4715h = savedState.f4715h;
            this.f4716i = savedState.f4716i;
            this.f4717j = savedState.f4717j;
            this.f4714g = savedState.f4714g;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f4708a);
            parcel.writeInt(this.f4709b);
            parcel.writeInt(this.f4710c);
            if (this.f4710c > 0) {
                parcel.writeIntArray(this.f4711d);
            }
            parcel.writeInt(this.f4712e);
            if (this.f4712e > 0) {
                parcel.writeIntArray(this.f4713f);
            }
            parcel.writeInt(this.f4715h ? 1 : 0);
            parcel.writeInt(this.f4716i ? 1 : 0);
            parcel.writeInt(this.f4717j ? 1 : 0);
            parcel.writeList(this.f4714g);
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
    final class C1083a {

        /* renamed from: a */
        int f4718a;

        /* renamed from: b */
        int f4719b;

        /* renamed from: c */
        boolean f4720c;

        /* renamed from: d */
        boolean f4721d;

        /* renamed from: e */
        boolean f4722e;

        /* renamed from: f */
        int[] f4723f;

        C1083a() {
            m6899a();
        }

        /* renamed from: a */
        final void m6899a() {
            this.f4718a = -1;
            this.f4719b = Integer.MIN_VALUE;
            this.f4720c = false;
            this.f4721d = false;
            this.f4722e = false;
            int[] iArr = this.f4723f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
    public final class C1084b {

        /* renamed from: a */
        ArrayList<View> f4725a = new ArrayList<>();

        /* renamed from: b */
        int f4726b = Integer.MIN_VALUE;

        /* renamed from: c */
        int f4727c = Integer.MIN_VALUE;

        /* renamed from: d */
        int f4728d = 0;

        /* renamed from: e */
        final int f4729e;

        C1084b(int i) {
            this.f4729e = i;
        }

        /* renamed from: b */
        private int m6892b(int i, int i2) {
            int c = StaggeredGridLayoutManager.this.f4685b.mo6711c();
            int d = StaggeredGridLayoutManager.this.f4685b.mo6709d();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f4725a.get(i);
                int a = StaggeredGridLayoutManager.this.f4685b.mo6713a(view);
                int b = StaggeredGridLayoutManager.this.f4685b.mo6712b(view);
                boolean z = false;
                boolean z2 = a <= d;
                if (b >= c) {
                    z = true;
                }
                if (z2 && z && (a < c || b > d)) {
                    return StaggeredGridLayoutManager.m7120e(view);
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: h */
        private void m6883h() {
            LazySpanLookup.FullSpanItem d;
            View view = this.f4725a.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f4726b = StaggeredGridLayoutManager.this.f4685b.mo6713a(view);
            if (layoutParams.f4701b && (d = StaggeredGridLayoutManager.this.f4691h.m6904d(layoutParams.f4563c.m7016f())) != null && d.f4705b == -1) {
                this.f4726b -= d.m6900a(this.f4729e);
            }
        }

        /* renamed from: i */
        private void m6882i() {
            LazySpanLookup.FullSpanItem d;
            ArrayList<View> arrayList = this.f4725a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.f4727c = StaggeredGridLayoutManager.this.f4685b.mo6712b(view);
            if (layoutParams.f4701b && (d = StaggeredGridLayoutManager.this.f4691h.m6904d(layoutParams.f4563c.m7016f())) != null && d.f4705b == 1) {
                this.f4727c += d.m6900a(this.f4729e);
            }
        }

        /* renamed from: a */
        final int m6898a() {
            int i = this.f4726b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m6883h();
            return this.f4726b;
        }

        /* renamed from: a */
        final int m6897a(int i) {
            int i2 = this.f4726b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f4725a.size() == 0) {
                return i;
            }
            m6883h();
            return this.f4726b;
        }

        /* renamed from: a */
        public final View m6896a(int i, int i2) {
            View view;
            View view2 = null;
            View view3 = null;
            if (i2 != -1) {
                int size = this.f4725a.size() - 1;
                while (true) {
                    view = view2;
                    if (size < 0) {
                        break;
                    }
                    View view4 = this.f4725a.get(size);
                    if (StaggeredGridLayoutManager.this.f4687d) {
                        view = view2;
                        if (StaggeredGridLayoutManager.m7120e(view4) >= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f4687d) {
                        view = view2;
                        if (StaggeredGridLayoutManager.m7120e(view4) <= i) {
                            break;
                        }
                    }
                    view = view2;
                    if (!view4.hasFocusable()) {
                        break;
                    }
                    size--;
                    view2 = view4;
                }
            } else {
                int size2 = this.f4725a.size();
                int i3 = 0;
                while (true) {
                    view = view3;
                    if (i3 >= size2) {
                        break;
                    }
                    View view5 = this.f4725a.get(i3);
                    if (StaggeredGridLayoutManager.this.f4687d) {
                        view = view3;
                        if (StaggeredGridLayoutManager.m7120e(view5) <= i) {
                            break;
                        }
                    }
                    if (!StaggeredGridLayoutManager.this.f4687d) {
                        view = view3;
                        if (StaggeredGridLayoutManager.m7120e(view5) >= i) {
                            break;
                        }
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

        /* renamed from: a */
        final void m6895a(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f4700a = this;
            this.f4725a.add(0, view);
            this.f4726b = Integer.MIN_VALUE;
            if (this.f4725a.size() == 1) {
                this.f4727c = Integer.MIN_VALUE;
            }
            if (layoutParams.f4563c.m7006p() || layoutParams.f4563c.m6999w()) {
                this.f4728d += StaggeredGridLayoutManager.this.f4685b.mo6706e(view);
            }
        }

        /* renamed from: b */
        final int m6894b() {
            int i = this.f4727c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m6882i();
            return this.f4727c;
        }

        /* renamed from: b */
        final int m6893b(int i) {
            int i2 = this.f4727c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f4725a.size() == 0) {
                return i;
            }
            m6882i();
            return this.f4727c;
        }

        /* renamed from: b */
        final void m6891b(View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f4700a = this;
            this.f4725a.add(view);
            this.f4727c = Integer.MIN_VALUE;
            if (this.f4725a.size() == 1) {
                this.f4726b = Integer.MIN_VALUE;
            }
            if (layoutParams.f4563c.m7006p() || layoutParams.f4563c.m6999w()) {
                this.f4728d += StaggeredGridLayoutManager.this.f4685b.mo6706e(view);
            }
        }

        /* renamed from: c */
        final void m6890c() {
            this.f4725a.clear();
            this.f4726b = Integer.MIN_VALUE;
            this.f4727c = Integer.MIN_VALUE;
            this.f4728d = 0;
        }

        /* renamed from: c */
        final void m6889c(int i) {
            this.f4726b = i;
            this.f4727c = i;
        }

        /* renamed from: d */
        final void m6888d() {
            int size = this.f4725a.size();
            View remove = this.f4725a.remove(size - 1);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.f4700a = null;
            if (layoutParams.f4563c.m7006p() || layoutParams.f4563c.m6999w()) {
                this.f4728d -= StaggeredGridLayoutManager.this.f4685b.mo6706e(remove);
            }
            if (size == 1) {
                this.f4726b = Integer.MIN_VALUE;
            }
            this.f4727c = Integer.MIN_VALUE;
        }

        /* renamed from: d */
        final void m6887d(int i) {
            int i2 = this.f4726b;
            if (i2 != Integer.MIN_VALUE) {
                this.f4726b = i2 + i;
            }
            int i3 = this.f4727c;
            if (i3 != Integer.MIN_VALUE) {
                this.f4727c = i3 + i;
            }
        }

        /* renamed from: e */
        final void m6886e() {
            View remove = this.f4725a.remove(0);
            LayoutParams layoutParams = (LayoutParams) remove.getLayoutParams();
            layoutParams.f4700a = null;
            if (this.f4725a.size() == 0) {
                this.f4727c = Integer.MIN_VALUE;
            }
            if (layoutParams.f4563c.m7006p() || layoutParams.f4563c.m6999w()) {
                this.f4728d -= StaggeredGridLayoutManager.this.f4685b.mo6706e(remove);
            }
            this.f4726b = Integer.MIN_VALUE;
        }

        /* renamed from: f */
        public final int m6885f() {
            return StaggeredGridLayoutManager.this.f4687d ? m6892b(this.f4725a.size() - 1, -1) : m6892b(0, this.f4725a.size());
        }

        /* renamed from: g */
        public final int m6884g() {
            return StaggeredGridLayoutManager.this.f4687d ? m6892b(0, this.f4725a.size()) : m6892b(this.f4725a.size() - 1, -1);
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.AbstractC1066i.C1068b a = m7147a(context, attributeSet, i, i2);
        int i3 = a.f4599a;
        if (i3 == 0 || i3 == 1) {
            mo6967a((String) null);
            if (i3 != this.f4693j) {
                this.f4693j = i3;
                AbstractC1148y yVar = this.f4685b;
                this.f4685b = this.f4686c;
                this.f4686c = yVar;
                m7108k();
            }
            m6945d(a.f4600b);
            m6966a(a.f4601c);
            this.f4695l = new C1143u();
            this.f4685b = AbstractC1148y.m6716a(this, this.f4693j);
            this.f4686c = AbstractC1148y.m6716a(this, 1 - this.f4693j);
            return;
        }
        throw new IllegalArgumentException("invalid orientation.");
    }

    /* renamed from: A */
    private boolean m6998A() {
        return C0741t.m8325g(this.f4590q) == 1;
    }

    /* renamed from: B */
    private boolean m6997B() {
        int b = this.f4684a[0].m6893b(Integer.MIN_VALUE);
        for (int i = 1; i < this.f4692i; i++) {
            if (this.f4684a[i].m6893b(Integer.MIN_VALUE) != b) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: C */
    private boolean m6996C() {
        int a = this.f4684a[0].m6897a(Integer.MIN_VALUE);
        for (int i = 1; i < this.f4692i; i++) {
            if (this.f4684a[i].m6897a(Integer.MIN_VALUE) != a) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: D */
    private int m6995D() {
        int o = m7102o();
        if (o == 0) {
            return 0;
        }
        return m7120e(m7122e(o - 1));
    }

    /* renamed from: E */
    private int m6994E() {
        if (m7102o() == 0) {
            return 0;
        }
        return m7120e(m7122e(0));
    }

    /* renamed from: a */
    private int m6973a(RecyclerView.C1074n nVar, C1143u uVar, RecyclerView.C1079q qVar) {
        C1084b bVar;
        int i;
        int i2;
        int i3;
        int i4;
        this.f4696m.set(0, this.f4692i, true);
        int i5 = this.f4695l.f4909i ? uVar.f4905e == 1 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : Integer.MIN_VALUE : uVar.f4905e == 1 ? uVar.f4907g + uVar.f4902b : uVar.f4906f - uVar.f4902b;
        m6930i(uVar.f4905e, i5);
        int d = this.f4688e ? this.f4685b.mo6709d() : this.f4685b.mo6711c();
        boolean z = false;
        while (uVar.m6724a(qVar) && (this.f4695l.f4909i || !this.f4696m.isEmpty())) {
            View a = uVar.m6725a(nVar);
            LayoutParams layoutParams = (LayoutParams) a.getLayoutParams();
            int f = layoutParams.f4563c.m7016f();
            int c = this.f4691h.m6905c(f);
            boolean z2 = c == -1;
            if (z2) {
                bVar = layoutParams.f4701b ? this.f4684a[0] : m6968a(uVar);
                this.f4691h.m6909a(f, bVar);
            } else {
                bVar = this.f4684a[c];
            }
            layoutParams.f4700a = bVar;
            if (uVar.f4905e == 1) {
                m7126c(a);
            } else {
                m7123d(a);
            }
            m6983a(a, layoutParams);
            if (uVar.f4905e == 1) {
                int p = layoutParams.f4701b ? m6919p(d) : bVar.m6893b(d);
                int e = this.f4685b.mo6706e(a) + p;
                i2 = p;
                i = e;
                if (z2) {
                    i2 = p;
                    i = e;
                    if (layoutParams.f4701b) {
                        LazySpanLookup.FullSpanItem l = m6925l(p);
                        l.f4705b = -1;
                        l.f4704a = f;
                        this.f4691h.m6908a(l);
                        i2 = p;
                        i = e;
                    }
                }
            } else {
                int o = layoutParams.f4701b ? m6920o(d) : bVar.m6897a(d);
                int e2 = o - this.f4685b.mo6706e(a);
                i2 = e2;
                i = o;
                if (z2) {
                    i2 = e2;
                    i = o;
                    if (layoutParams.f4701b) {
                        LazySpanLookup.FullSpanItem m = m6924m(o);
                        m.f4705b = 1;
                        m.f4704a = f;
                        this.f4691h.m6908a(m);
                        i = o;
                        i2 = e2;
                    }
                }
            }
            if (layoutParams.f4701b && uVar.f4904d == -1) {
                if (!z2) {
                    if (!(uVar.f4905e == 1 ? m6997B() : m6996C())) {
                        LazySpanLookup.FullSpanItem d2 = this.f4691h.m6904d(f);
                        if (d2 != null) {
                            d2.f4707d = true;
                        }
                    }
                }
                this.f4680E = true;
            }
            m6982a(a, layoutParams, uVar);
            if (!m6998A() || this.f4693j != 1) {
                i4 = layoutParams.f4701b ? this.f4686c.mo6711c() : (bVar.f4729e * this.f4694k) + this.f4686c.mo6711c();
                i3 = this.f4686c.mo6706e(a) + i4;
            } else {
                int d3 = layoutParams.f4701b ? this.f4686c.mo6709d() : this.f4686c.mo6709d() - (((this.f4692i - 1) - bVar.f4729e) * this.f4694k);
                i4 = d3 - this.f4686c.mo6706e(a);
                i3 = d3;
            }
            if (this.f4693j == 1) {
                m7144a(a, i4, i2, i3, i);
            } else {
                m7144a(a, i2, i4, i, i3);
            }
            if (layoutParams.f4701b) {
                m6930i(this.f4695l.f4905e, i5);
            } else {
                m6969a(bVar, this.f4695l.f4905e, i5);
            }
            m6974a(nVar, this.f4695l);
            if (this.f4695l.f4908h && a.hasFocusable()) {
                if (layoutParams.f4701b) {
                    this.f4696m.clear();
                } else {
                    this.f4696m.set(bVar.f4729e, false);
                }
            }
            z = true;
        }
        if (!z) {
            m6974a(nVar, this.f4695l);
        }
        int c2 = this.f4695l.f4905e == -1 ? this.f4685b.mo6711c() - m6920o(this.f4685b.mo6711c()) : m6919p(this.f4685b.mo6709d()) - this.f4685b.mo6709d();
        if (c2 > 0) {
            return Math.min(uVar.f4902b, c2);
        }
        return 0;
    }

    /* renamed from: a */
    private C1084b m6968a(C1143u uVar) {
        int i;
        int i2;
        int i3 = -1;
        if (m6917r(uVar.f4905e)) {
            i2 = this.f4692i - 1;
            i = -1;
        } else {
            i2 = 0;
            i3 = this.f4692i;
            i = 1;
        }
        int i4 = uVar.f4905e;
        C1084b bVar = null;
        C1084b bVar2 = null;
        if (i4 == 1) {
            int i5 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int c = this.f4685b.mo6711c();
            for (int i6 = i2; i6 != i3; i6 += i) {
                C1084b bVar3 = this.f4684a[i6];
                int b = bVar3.m6893b(c);
                i5 = i5;
                if (b < i5) {
                    bVar2 = bVar3;
                    i5 = b;
                }
            }
            return bVar2;
        }
        int i7 = Integer.MIN_VALUE;
        int d = this.f4685b.mo6709d();
        for (int i8 = i2; i8 != i3; i8 += i) {
            C1084b bVar4 = this.f4684a[i8];
            int a = bVar4.m6897a(d);
            i7 = i7;
            if (a > i7) {
                bVar = bVar4;
                i7 = a;
            }
        }
        return bVar;
    }

    /* renamed from: a */
    private void m6989a(int i, RecyclerView.C1079q qVar) {
        int i2;
        int i3;
        int i4;
        C1143u uVar = this.f4695l;
        uVar.f4902b = 0;
        uVar.f4903c = i;
        if (!m7103n() || (i4 = qVar.f4633a) == -1) {
            i3 = 0;
            i2 = 0;
        } else {
            if (this.f4688e == (i4 < i)) {
                i3 = this.f4685b.mo6705f();
                i2 = 0;
            } else {
                i2 = this.f4685b.mo6705f();
                i3 = 0;
            }
        }
        if (m7104m()) {
            this.f4695l.f4906f = this.f4685b.mo6711c() - i2;
            this.f4695l.f4907g = this.f4685b.mo6709d() + i3;
        } else {
            this.f4695l.f4907g = this.f4685b.mo6707e() + i3;
            this.f4695l.f4906f = -i2;
        }
        C1143u uVar2 = this.f4695l;
        uVar2.f4908h = false;
        uVar2.f4901a = true;
        boolean z = false;
        if (this.f4685b.mo6702h() == 0) {
            z = false;
            if (this.f4685b.mo6707e() == 0) {
                z = true;
            }
        }
        uVar2.f4909i = z;
    }

    /* renamed from: a */
    private void m6985a(View view, int i, int i2) {
        m7130b(view, this.f4678C);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int b = m6962b(i, layoutParams.leftMargin + this.f4678C.left, layoutParams.rightMargin + this.f4678C.right);
        int b2 = m6962b(i2, layoutParams.topMargin + this.f4678C.top, layoutParams.bottomMargin + this.f4678C.bottom);
        if (m7131b(view, b, b2, layoutParams)) {
            view.measure(b, b2);
        }
    }

    /* renamed from: a */
    private void m6983a(View view, LayoutParams layoutParams) {
        if (layoutParams.f4701b) {
            if (this.f4693j == 1) {
                m6985a(view, this.f4677B, m7150a(m7098s(), m7100q(), m7096u() + m7094w(), layoutParams.height, true));
            } else {
                m6985a(view, m7150a(m7099r(), m7101p(), m7097t() + m7095v(), layoutParams.width, true), this.f4677B);
            }
        } else if (this.f4693j == 1) {
            m6985a(view, m7150a(this.f4694k, m7101p(), 0, layoutParams.width, false), m7150a(m7098s(), m7100q(), m7096u() + m7094w(), layoutParams.height, true));
        } else {
            m6985a(view, m7150a(m7099r(), m7101p(), m7097t() + m7095v(), layoutParams.width, true), m7150a(this.f4694k, m7100q(), 0, layoutParams.height, false));
        }
    }

    /* renamed from: a */
    private void m6982a(View view, LayoutParams layoutParams, C1143u uVar) {
        if (uVar.f4905e == 1) {
            if (layoutParams.f4701b) {
                m6923m(view);
            } else {
                layoutParams.f4700a.m6891b(view);
            }
        } else if (layoutParams.f4701b) {
            m6921n(view);
        } else {
            layoutParams.f4700a.m6895a(view);
        }
    }

    /* renamed from: a */
    private void m6978a(RecyclerView.C1074n nVar, int i) {
        while (m7102o() > 0) {
            View e = m7122e(0);
            if (this.f4685b.mo6712b(e) <= i && this.f4685b.mo6710c(e) <= i) {
                LayoutParams layoutParams = (LayoutParams) e.getLayoutParams();
                if (layoutParams.f4701b) {
                    for (int i2 = 0; i2 < this.f4692i; i2++) {
                        if (this.f4684a[i2].f4725a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.f4692i; i3++) {
                        this.f4684a[i3].m6886e();
                    }
                } else if (layoutParams.f4700a.f4725a.size() != 1) {
                    layoutParams.f4700a.m6886e();
                } else {
                    return;
                }
                m7139a(e, nVar);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m6975a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, boolean z) {
        int d;
        int p = m6919p(Integer.MIN_VALUE);
        if (p != Integer.MIN_VALUE && (d = this.f4685b.mo6709d() - p) > 0) {
            int i = d - (-m6950c(-d, nVar, qVar));
            if (z && i > 0) {
                this.f4685b.mo6714a(i);
            }
        }
    }

    /* renamed from: a */
    private void m6974a(RecyclerView.C1074n nVar, C1143u uVar) {
        if (uVar.f4901a && !uVar.f4909i) {
            if (uVar.f4902b == 0) {
                if (uVar.f4905e == -1) {
                    m6959b(nVar, uVar.f4907g);
                } else {
                    m6978a(nVar, uVar.f4906f);
                }
            } else if (uVar.f4905e == -1) {
                int n = uVar.f4906f - m6922n(uVar.f4906f);
                m6959b(nVar, n < 0 ? uVar.f4907g : uVar.f4907g - Math.min(n, uVar.f4902b));
            } else {
                int q = m6918q(uVar.f4907g) - uVar.f4907g;
                m6978a(nVar, q < 0 ? uVar.f4906f : Math.min(q, uVar.f4902b) + uVar.f4906f);
            }
        }
    }

    /* renamed from: a */
    private void m6969a(C1084b bVar, int i, int i2) {
        int i3 = bVar.f4728d;
        if (i == -1) {
            if (bVar.m6898a() + i3 <= i2) {
                this.f4696m.set(bVar.f4729e, false);
            }
        } else if (bVar.m6894b() - i3 >= i2) {
            this.f4696m.set(bVar.f4729e, false);
        }
    }

    /* renamed from: a */
    private void m6966a(boolean z) {
        mo6967a((String) null);
        SavedState savedState = this.f4676A;
        if (!(savedState == null || savedState.f4715h == z)) {
            this.f4676A.f4715h = z;
        }
        this.f4687d = z;
        m7108k();
    }

    /* renamed from: a */
    private boolean m6970a(C1084b bVar) {
        return this.f4688e ? bVar.m6894b() < this.f4685b.mo6709d() && !((LayoutParams) bVar.f4725a.get(bVar.f4725a.size() - 1).getLayoutParams()).f4701b : bVar.m6898a() > this.f4685b.mo6711c() && !((LayoutParams) bVar.f4725a.get(0).getLayoutParams()).f4701b;
    }

    /* renamed from: b */
    private static int m6962b(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* renamed from: b */
    private View m6955b(boolean z) {
        int c = this.f4685b.mo6711c();
        int d = this.f4685b.mo6709d();
        int o = m7102o();
        View view = null;
        for (int i = 0; i < o; i++) {
            View e = m7122e(i);
            int a = this.f4685b.mo6713a(e);
            view = view;
            if (this.f4685b.mo6712b(e) > c) {
                view = view;
                if (a >= d) {
                    continue;
                } else if (a >= c || !z) {
                    return e;
                } else {
                    view = view;
                    if (view == null) {
                        view = e;
                    }
                }
            }
        }
        return view;
    }

    /* renamed from: b */
    private void m6960b(int i, RecyclerView.C1079q qVar) {
        int i2;
        int i3;
        if (i > 0) {
            i3 = m6995D();
            i2 = 1;
        } else {
            i3 = m6994E();
            i2 = -1;
        }
        this.f4695l.f4901a = true;
        m6989a(i3, qVar);
        m6926k(i2);
        C1143u uVar = this.f4695l;
        uVar.f4903c = i3 + uVar.f4904d;
        this.f4695l.f4902b = Math.abs(i);
    }

    /* renamed from: b */
    private void m6959b(RecyclerView.C1074n nVar, int i) {
        for (int o = m7102o() - 1; o >= 0; o--) {
            View e = m7122e(o);
            if (this.f4685b.mo6713a(e) >= i && this.f4685b.mo6708d(e) >= i) {
                LayoutParams layoutParams = (LayoutParams) e.getLayoutParams();
                if (layoutParams.f4701b) {
                    for (int i2 = 0; i2 < this.f4692i; i2++) {
                        if (this.f4684a[i2].f4725a.size() == 1) {
                            return;
                        }
                    }
                    for (int i3 = 0; i3 < this.f4692i; i3++) {
                        this.f4684a[i3].m6888d();
                    }
                } else if (layoutParams.f4700a.f4725a.size() != 1) {
                    layoutParams.f4700a.m6888d();
                } else {
                    return;
                }
                m7139a(e, nVar);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    private void m6957b(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, boolean z) {
        int c;
        int o = m6920o(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (o != Integer.MAX_VALUE && (c = o - this.f4685b.mo6711c()) > 0) {
            int c2 = c - m6950c(c, nVar, qVar);
            if (z && c2 > 0) {
                this.f4685b.mo6714a(-c2);
            }
        }
    }

    /* renamed from: c */
    private int m6950c(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        if (m7102o() == 0 || i == 0) {
            return 0;
        }
        m6960b(i, qVar);
        int a = m6973a(nVar, this.f4695l, qVar);
        int i2 = i;
        if (this.f4695l.f4902b >= a) {
            i2 = i < 0 ? -a : a;
        }
        this.f4685b.mo6714a(-i2);
        this.f4698o = this.f4688e;
        C1143u uVar = this.f4695l;
        uVar.f4902b = 0;
        m6974a(nVar, uVar);
        return i2;
    }

    /* renamed from: c */
    private View m6947c(boolean z) {
        int c = this.f4685b.mo6711c();
        int d = this.f4685b.mo6709d();
        View view = null;
        for (int o = m7102o() - 1; o >= 0; o--) {
            View e = m7122e(o);
            int a = this.f4685b.mo6713a(e);
            int b = this.f4685b.mo6712b(e);
            view = view;
            if (b > c) {
                view = view;
                if (a >= d) {
                    continue;
                } else if (b <= d || !z) {
                    return e;
                } else {
                    view = view;
                    if (view == null) {
                        view = e;
                    }
                }
            }
        }
        return view;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6951c(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.f4688e
            if (r0 == 0) goto L_0x0010
            r0 = r4
            int r0 = r0.m6995D()
            r8 = r0
            goto L_0x0016
        L_0x0010:
            r0 = r4
            int r0 = r0.m6994E()
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
            r10 = r0
            r0 = r6
            r9 = r0
            goto L_0x0040
        L_0x0034:
            r0 = r5
            r1 = r6
            int r0 = r0 + r1
            r9 = r0
        L_0x0039:
            r0 = r9
            r10 = r0
            r0 = r5
            r9 = r0
        L_0x0040:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4691h
            r1 = r9
            int r0 = r0.m6907b(r1)
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x007e
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x0072
            r0 = r7
            r1 = 8
            if (r0 == r1) goto L_0x005d
            goto L_0x0087
        L_0x005d:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4691h
            r1 = r5
            r2 = 1
            r0.m6911a(r1, r2)
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4691h
            r1 = r6
            r2 = 1
            r0.m6906b(r1, r2)
            goto L_0x0087
        L_0x0072:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4691h
            r1 = r5
            r2 = r6
            r0.m6911a(r1, r2)
            goto L_0x0087
        L_0x007e:
            r0 = r4
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r0 = r0.f4691h
            r1 = r5
            r2 = r6
            r0.m6906b(r1, r2)
        L_0x0087:
            r0 = r10
            r1 = r8
            if (r0 > r1) goto L_0x008f
            return
        L_0x008f:
            r0 = r4
            boolean r0 = r0.f4688e
            if (r0 == 0) goto L_0x009e
            r0 = r4
            int r0 = r0.m6994E()
            r5 = r0
            goto L_0x00a3
        L_0x009e:
            r0 = r4
            int r0 = r0.m6995D()
            r5 = r0
        L_0x00a3:
            r0 = r9
            r1 = r5
            if (r0 > r1) goto L_0x00ad
            r0 = r4
            r0.m7108k()
        L_0x00ad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m6951c(int, int, int):void");
    }

    /* renamed from: d */
    private void m6945d(int i) {
        mo6967a((String) null);
        if (i != this.f4692i) {
            this.f4691h.m6913a();
            m7108k();
            this.f4692i = i;
            this.f4696m = new BitSet(this.f4692i);
            this.f4684a = new C1084b[this.f4692i];
            for (int i2 = 0; i2 < this.f4692i; i2++) {
                this.f4684a[i2] = new C1084b(i2);
            }
            m7108k();
        }
    }

    /* renamed from: h */
    private int m6932h(RecyclerView.C1079q qVar) {
        if (m7102o() == 0) {
            return 0;
        }
        return C1100al.m6850a(qVar, this.f4685b, m6955b(!this.f4681F), m6947c(!this.f4681F), this, this.f4681F, this.f4688e);
    }

    /* renamed from: i */
    private int m6929i(RecyclerView.C1079q qVar) {
        if (m7102o() == 0) {
            return 0;
        }
        return C1100al.m6851a(qVar, this.f4685b, m6955b(!this.f4681F), m6947c(!this.f4681F), this, this.f4681F);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e1, code lost:
        if (r0 == r0) goto L_0x010b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0108, code lost:
        if (r0 == r0) goto L_0x010b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010b, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0110, code lost:
        r6 = false;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.view.View m6931i() {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m6931i():android.view.View");
    }

    /* renamed from: i */
    private void m6930i(int i, int i2) {
        for (int i3 = 0; i3 < this.f4692i; i3++) {
            if (!this.f4684a[i3].f4725a.isEmpty()) {
                m6969a(this.f4684a[i3], i, i2);
            }
        }
    }

    /* renamed from: j */
    private int m6927j(RecyclerView.C1079q qVar) {
        if (m7102o() == 0) {
            return 0;
        }
        return C1100al.m6849b(qVar, this.f4685b, m6955b(!this.f4681F), m6947c(!this.f4681F), this, this.f4681F);
    }

    /* renamed from: j */
    private void m6928j(int i) {
        this.f4694k = i / this.f4692i;
        this.f4677B = View.MeasureSpec.makeMeasureSpec(i, this.f4686c.mo6702h());
    }

    /* renamed from: k */
    private void m6926k(int i) {
        C1143u uVar = this.f4695l;
        uVar.f4905e = i;
        int i2 = 1;
        if (this.f4688e != (i == -1)) {
            i2 = -1;
        }
        uVar.f4904d = i2;
    }

    /* renamed from: l */
    private LazySpanLookup.FullSpanItem m6925l(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f4706c = new int[this.f4692i];
        for (int i2 = 0; i2 < this.f4692i; i2++) {
            fullSpanItem.f4706c[i2] = i - this.f4684a[i2].m6893b(i);
        }
        return fullSpanItem;
    }

    /* renamed from: m */
    private LazySpanLookup.FullSpanItem m6924m(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f4706c = new int[this.f4692i];
        for (int i2 = 0; i2 < this.f4692i; i2++) {
            fullSpanItem.f4706c[i2] = this.f4684a[i2].m6897a(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: m */
    private void m6923m(View view) {
        for (int i = this.f4692i - 1; i >= 0; i--) {
            this.f4684a[i].m6891b(view);
        }
    }

    /* renamed from: n */
    private int m6922n(int i) {
        int a = this.f4684a[0].m6897a(i);
        for (int i2 = 1; i2 < this.f4692i; i2++) {
            int a2 = this.f4684a[i2].m6897a(i);
            a = a;
            if (a2 > a) {
                a = a2;
            }
        }
        return a;
    }

    /* renamed from: n */
    private void m6921n(View view) {
        for (int i = this.f4692i - 1; i >= 0; i--) {
            this.f4684a[i].m6895a(view);
        }
    }

    /* renamed from: o */
    private int m6920o(int i) {
        int a = this.f4684a[0].m6897a(i);
        for (int i2 = 1; i2 < this.f4692i; i2++) {
            int a2 = this.f4684a[i2].m6897a(i);
            a = a;
            if (a2 < a) {
                a = a2;
            }
        }
        return a;
    }

    /* renamed from: p */
    private int m6919p(int i) {
        int b = this.f4684a[0].m6893b(i);
        for (int i2 = 1; i2 < this.f4692i; i2++) {
            int b2 = this.f4684a[i2].m6893b(i);
            b = b;
            if (b2 > b) {
                b = b2;
            }
        }
        return b;
    }

    /* renamed from: q */
    private int m6918q(int i) {
        int b = this.f4684a[0].m6893b(i);
        for (int i2 = 1; i2 < this.f4692i; i2++) {
            int b2 = this.f4684a[i2].m6893b(i);
            b = b;
            if (b2 < b) {
                b = b2;
            }
        }
        return b;
    }

    /* renamed from: r */
    private boolean m6917r(int i) {
        if (this.f4693j == 0) {
            return (i == -1) != this.f4688e;
        }
        return ((i == -1) == this.f4688e) == m6998A();
    }

    /* renamed from: s */
    private int m6916s(int i) {
        if (m7102o() == 0) {
            return this.f4688e ? 1 : -1;
        }
        return (i < m6994E()) != this.f4688e ? -1 : 1;
    }

    /* renamed from: z */
    private void m6915z() {
        boolean z = true;
        if (this.f4693j == 1 || !m6998A()) {
            z = this.f4687d;
        } else if (this.f4687d) {
            z = false;
        }
        this.f4688e = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final int mo6990a(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        return m6950c(i, nVar, qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final int mo6977a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        return this.f4693j == 0 ? this.f4692i : super.mo6977a(nVar, qVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
        if (r5.f4693j == 1) goto L_0x008b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
        if (r5.f4693j == 0) goto L_0x008b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
        if (m6998A() == false) goto L_0x0074;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
        if (m6998A() == false) goto L_0x008b;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo6984a(android.view.View r6, int r7, androidx.recyclerview.widget.RecyclerView.C1074n r8, androidx.recyclerview.widget.RecyclerView.C1079q r9) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo6984a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$n, androidx.recyclerview.widget.RecyclerView$q):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo6988a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo6981a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6993a() {
        this.f4691h.m6913a();
        m7108k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6992a(int i, int i2) {
        m6951c(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6991a(int i, int i2, RecyclerView.C1079q qVar, RecyclerView.AbstractC1066i.AbstractC1067a aVar) {
        int i3;
        int i4;
        if (this.f4693j != 0) {
            i = i2;
        }
        if (!(m7102o() == 0 || i == 0)) {
            m6960b(i, qVar);
            int[] iArr = this.f4682G;
            if (iArr == null || iArr.length < this.f4692i) {
                this.f4682G = new int[this.f4692i];
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.f4692i; i6++) {
                if (this.f4695l.f4904d == -1) {
                    i4 = this.f4695l.f4906f;
                    i3 = this.f4684a[i6].m6897a(this.f4695l.f4906f);
                } else {
                    i4 = this.f4684a[i6].m6893b(this.f4695l.f4907g);
                    i3 = this.f4695l.f4907g;
                }
                int i7 = i4 - i3;
                i5 = i5;
                if (i7 >= 0) {
                    this.f4682G[i5] = i7;
                    i5++;
                }
            }
            Arrays.sort(this.f4682G, 0, i5);
            for (int i8 = 0; i8 < i5 && this.f4695l.m6724a(qVar); i8++) {
                aVar.mo6727a(this.f4695l.f4903c, this.f4682G[i8]);
                this.f4695l.f4903c += this.f4695l.f4904d;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6987a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        int t = m7097t() + m7095v();
        int u = m7096u() + m7094w();
        if (this.f4693j == 1) {
            i3 = m7151a(i2, rect.height() + u, C0741t.m8318m(this.f4590q));
            i4 = m7151a(i, (this.f4694k * this.f4692i) + t, C0741t.m8319l(this.f4590q));
        } else {
            i4 = m7151a(i, rect.width() + t, C0741t.m8319l(this.f4590q));
            i3 = m7151a(i2, (this.f4694k * this.f4692i) + u, C0741t.m8318m(this.f4590q));
        }
        m7115h(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6986a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f4676A = (SavedState) parcelable;
            m7108k();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6980a(AccessibilityEvent accessibilityEvent) {
        super.mo6980a(accessibilityEvent);
        if (m7102o() > 0) {
            View b = m6955b(false);
            View c = m6947c(false);
            if (b != null && c != null) {
                int e = m7120e(b);
                int e2 = m7120e(c);
                if (e < e2) {
                    accessibilityEvent.setFromIndex(e);
                    accessibilityEvent.setToIndex(e2);
                    return;
                }
                accessibilityEvent.setFromIndex(e2);
                accessibilityEvent.setToIndex(e);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6976a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, View view, C0696d dVar) {
        int i;
        int i2;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m7140a(view, dVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int i3 = 1;
        int i4 = 1;
        if (this.f4693j == 0) {
            i = layoutParams2.m6914a();
            if (layoutParams2.f4701b) {
                i4 = this.f4692i;
            }
            i2 = -1;
            i3 = -1;
        } else {
            i2 = layoutParams2.m6914a();
            if (layoutParams2.f4701b) {
                i3 = this.f4692i;
            }
            i = -1;
            i4 = -1;
        }
        dVar.m8513b(C0696d.C0699c.m8460a(i, i4, i2, i3, layoutParams2.f4701b, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6972a(RecyclerView.C1079q qVar) {
        super.mo6972a(qVar);
        this.f4689f = -1;
        this.f4690g = Integer.MIN_VALUE;
        this.f4676A = null;
        this.f4679D.m6899a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6971a(RecyclerView recyclerView, RecyclerView.C1074n nVar) {
        super.mo6971a(recyclerView, nVar);
        m7135a(this.f4683H);
        for (int i = 0; i < this.f4692i; i++) {
            this.f4684a[i].m6890c();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6967a(String str) {
        if (this.f4676A == null) {
            super.mo6967a(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final boolean mo6979a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final int mo6961b(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        return m6950c(i, nVar, qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final int mo6958b(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        return this.f4693j == 1 ? this.f4692i : super.mo6958b(nVar, qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final int mo6956b(RecyclerView.C1079q qVar) {
        return m6932h(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1076p.AbstractC1078b
    /* renamed from: b */
    public final PointF mo6964b(int i) {
        int s = m6916s(i);
        PointF pointF = new PointF();
        if (s == 0) {
            return null;
        }
        if (this.f4693j == 0) {
            pointF.x = s;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = s;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final RecyclerView.LayoutParams mo6965b() {
        return this.f4693j == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final void mo6963b(int i, int i2) {
        m6951c(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final int mo6948c(RecyclerView.C1079q qVar) {
        return m6932h(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final void mo6953c(int i) {
        SavedState savedState = this.f4676A;
        if (!(savedState == null || savedState.f4708a == i)) {
            SavedState savedState2 = this.f4676A;
            savedState2.f4711d = null;
            savedState2.f4710c = 0;
            savedState2.f4708a = -1;
            savedState2.f4709b = -1;
        }
        this.f4689f = i;
        this.f4690g = Integer.MIN_VALUE;
        m7108k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final void mo6952c(int i, int i2) {
        m6951c(i, i2, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x083e  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x085b A[LOOP:0: B:3:0x0002->B:264:0x085b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0867 A[SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo6949c(androidx.recyclerview.widget.RecyclerView.C1074n r6, androidx.recyclerview.widget.RecyclerView.C1079q r7) {
        /*
            Method dump skipped, instructions count: 2152
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo6949c(androidx.recyclerview.widget.RecyclerView$n, androidx.recyclerview.widget.RecyclerView$q):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final boolean mo6954c() {
        return this.f4676A == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: d */
    public final int mo6943d(RecyclerView.C1079q qVar) {
        return m6929i(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: d */
    public final void mo6944d(int i, int i2) {
        m6951c(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: d */
    public final boolean mo6946d() {
        return this.f4697n != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: e */
    public final int mo6941e(RecyclerView.C1079q qVar) {
        return m6929i(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: e */
    public final Parcelable mo6942e() {
        int i;
        int i2;
        int i3;
        SavedState savedState = this.f4676A;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.f4715h = this.f4687d;
        savedState2.f4716i = this.f4698o;
        savedState2.f4717j = this.f4699z;
        LazySpanLookup lazySpanLookup = this.f4691h;
        if (lazySpanLookup == null || lazySpanLookup.f4702a == null) {
            savedState2.f4712e = 0;
        } else {
            savedState2.f4713f = this.f4691h.f4702a;
            savedState2.f4712e = savedState2.f4713f.length;
            savedState2.f4714g = this.f4691h.f4703b;
        }
        int i4 = -1;
        if (m7102o() > 0) {
            savedState2.f4708a = this.f4698o ? m6995D() : m6994E();
            View c = this.f4688e ? m6947c(true) : m6955b(true);
            if (c != null) {
                i4 = m7120e(c);
            }
            savedState2.f4709b = i4;
            int i5 = this.f4692i;
            savedState2.f4710c = i5;
            savedState2.f4711d = new int[i5];
            for (int i6 = 0; i6 < this.f4692i; i6++) {
                if (this.f4698o) {
                    i2 = this.f4684a[i6].m6893b(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f4685b.mo6709d();
                        i = i2 - i3;
                        savedState2.f4711d[i6] = i;
                    } else {
                        savedState2.f4711d[i6] = i;
                    }
                } else {
                    i2 = this.f4684a[i6].m6897a(Integer.MIN_VALUE);
                    i = i2;
                    if (i2 != Integer.MIN_VALUE) {
                        i3 = this.f4685b.mo6711c();
                        i = i2 - i3;
                        savedState2.f4711d[i6] = i;
                    } else {
                        savedState2.f4711d[i6] = i;
                    }
                }
            }
        } else {
            savedState2.f4708a = -1;
            savedState2.f4709b = -1;
            savedState2.f4710c = 0;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: f */
    public final int mo6938f(RecyclerView.C1079q qVar) {
        return m6927j(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: f */
    public final void mo6939f(int i) {
        super.mo6939f(i);
        for (int i2 = 0; i2 < this.f4692i; i2++) {
            this.f4684a[i2].m6887d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: f */
    public final boolean mo6940f() {
        return this.f4693j == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: g */
    public final int mo6935g(RecyclerView.C1079q qVar) {
        return m6927j(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: g */
    public final void mo6936g(int i) {
        super.mo6936g(i);
        for (int i2 = 0; i2 < this.f4692i; i2++) {
            this.f4684a[i2].m6887d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: g */
    public final boolean mo6937g() {
        return this.f4693j == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: h */
    public final void mo6933h(int i) {
        if (i == 0) {
            m6934h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final boolean m6934h() {
        int i;
        int i2;
        if (m7102o() == 0 || this.f4697n == 0 || !this.f4595v) {
            return false;
        }
        if (this.f4688e) {
            i2 = m6995D();
            i = m6994E();
        } else {
            i2 = m6994E();
            i = m6995D();
        }
        if (i2 == 0 && m6931i() != null) {
            this.f4691h.m6913a();
        } else if (!this.f4680E) {
            return false;
        } else {
            int i3 = this.f4688e ? -1 : 1;
            int i4 = i + 1;
            LazySpanLookup.FullSpanItem a = this.f4691h.m6910a(i2, i4, i3);
            if (a == null) {
                this.f4680E = false;
                this.f4691h.m6912a(i4);
                return false;
            }
            LazySpanLookup.FullSpanItem a2 = this.f4691h.m6910a(i2, a.f4704a, i3 * (-1));
            if (a2 == null) {
                this.f4691h.m6912a(a.f4704a);
            } else {
                this.f4691h.m6912a(a2.f4704a + 1);
            }
        }
        this.f4594u = true;
        m7108k();
        return true;
    }
}

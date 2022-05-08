package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* renamed from: A */
    int f4657A;

    /* renamed from: B */
    int f4658B;

    /* renamed from: C */
    private boolean f4659C;

    /* renamed from: D */
    SavedState f4660D;

    /* renamed from: E */
    final AnchorInfo f4661E;

    /* renamed from: F */
    private final LayoutChunkResult f4662F;

    /* renamed from: G */
    private int f4663G;

    /* renamed from: H */
    private int[] f4664H;

    /* renamed from: s */
    int f4665s;

    /* renamed from: t */
    private LayoutState f4666t;

    /* renamed from: u */
    OrientationHelper f4667u;

    /* renamed from: v */
    private boolean f4668v;

    /* renamed from: w */
    private boolean f4669w;

    /* renamed from: x */
    boolean f4670x;

    /* renamed from: y */
    private boolean f4671y;

    /* renamed from: z */
    private boolean f4672z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo.class */
    public static class AnchorInfo {

        /* renamed from: a */
        OrientationHelper f4673a;

        /* renamed from: b */
        int f4674b;

        /* renamed from: c */
        int f4675c;

        /* renamed from: d */
        boolean f4676d;

        /* renamed from: e */
        boolean f4677e;

        AnchorInfo() {
            m17595e();
        }

        /* renamed from: a */
        void m17599a() {
            this.f4675c = this.f4676d ? this.f4673a.mo17536i() : this.f4673a.mo17532m();
        }

        /* renamed from: b */
        public void m17598b(View view, int i) {
            if (this.f4676d) {
                this.f4675c = this.f4673a.mo17541d(view) + this.f4673a.m17543o();
            } else {
                this.f4675c = this.f4673a.mo17538g(view);
            }
            this.f4674b = i;
        }

        /* renamed from: c */
        public void m17597c(View view, int i) {
            int o = this.f4673a.m17543o();
            if (o >= 0) {
                m17598b(view, i);
                return;
            }
            this.f4674b = i;
            if (this.f4676d) {
                int i2 = (this.f4673a.mo17536i() - o) - this.f4673a.mo17541d(view);
                this.f4675c = this.f4673a.mo17536i() - i2;
                if (i2 > 0) {
                    int e = this.f4673a.mo17540e(view);
                    int i3 = this.f4675c;
                    int m = this.f4673a.mo17532m();
                    int min = (i3 - e) - (m + Math.min(this.f4673a.mo17538g(view) - m, 0));
                    if (min < 0) {
                        this.f4675c += Math.min(i2, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int g = this.f4673a.mo17538g(view);
            int m2 = g - this.f4673a.mo17532m();
            this.f4675c = g;
            if (m2 > 0) {
                int e2 = this.f4673a.mo17540e(view);
                int i4 = (this.f4673a.mo17536i() - Math.min(0, (this.f4673a.mo17536i() - o) - this.f4673a.mo17541d(view))) - (g + e2);
                if (i4 < 0) {
                    this.f4675c -= Math.min(m2, -i4);
                }
            }
        }

        /* renamed from: d */
        boolean m17596d(View view, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.m17361c() && layoutParams.m17363a() >= 0 && layoutParams.m17363a() < state.m17275b();
        }

        /* renamed from: e */
        void m17595e() {
            this.f4674b = -1;
            this.f4675c = Integer.MIN_VALUE;
            this.f4676d = false;
            this.f4677e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f4674b + ", mCoordinate=" + this.f4675c + ", mLayoutFromEnd=" + this.f4676d + ", mValid=" + this.f4677e + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult.class */
    public static class LayoutChunkResult {

        /* renamed from: a */
        public int f4678a;

        /* renamed from: b */
        public boolean f4679b;

        /* renamed from: c */
        public boolean f4680c;

        /* renamed from: d */
        public boolean f4681d;

        protected LayoutChunkResult() {
        }

        /* renamed from: a */
        void m17594a() {
            this.f4678a = 0;
            this.f4679b = false;
            this.f4680c = false;
            this.f4681d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$LayoutState.class */
    public static class LayoutState {

        /* renamed from: b */
        int f4683b;

        /* renamed from: c */
        int f4684c;

        /* renamed from: d */
        int f4685d;

        /* renamed from: e */
        int f4686e;

        /* renamed from: f */
        int f4687f;

        /* renamed from: g */
        int f4688g;

        /* renamed from: j */
        boolean f4691j;

        /* renamed from: k */
        int f4692k;

        /* renamed from: m */
        boolean f4694m;

        /* renamed from: a */
        boolean f4682a = true;

        /* renamed from: h */
        int f4689h = 0;

        /* renamed from: i */
        int f4690i = 0;

        /* renamed from: l */
        List<RecyclerView.ViewHolder> f4693l = null;

        LayoutState() {
        }

        /* renamed from: e */
        private View m17589e() {
            int size = this.f4693l.size();
            for (int i = 0; i < size; i++) {
                View view = this.f4693l.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.m17361c() && this.f4685d == layoutParams.m17363a()) {
                    m17592b(view);
                    return view;
                }
            }
            return null;
        }

        /* renamed from: a */
        public void m17593a() {
            m17592b(null);
        }

        /* renamed from: b */
        public void m17592b(View view) {
            View f = m17588f(view);
            if (f == null) {
                this.f4685d = -1;
            } else {
                this.f4685d = ((RecyclerView.LayoutParams) f.getLayoutParams()).m17363a();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public boolean m17591c(RecyclerView.State state) {
            int i = this.f4685d;
            return i >= 0 && i < state.m17275b();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d */
        public View m17590d(RecyclerView.Recycler recycler) {
            if (this.f4693l != null) {
                return m17589e();
            }
            View o = recycler.m17319o(this.f4685d);
            this.f4685d += this.f4686e;
            return o;
        }

        /* renamed from: f */
        public View m17588f(View view) {
            View view2;
            int size = this.f4693l.size();
            View view3 = null;
            int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f4693l.get(i2).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                view3 = view3;
                i = i;
                if (view4 != view) {
                    if (layoutParams.m17361c()) {
                        view3 = view3;
                        i = i;
                    } else {
                        int a = (layoutParams.m17363a() - this.f4685d) * this.f4686e;
                        if (a < 0) {
                            view3 = view3;
                            i = i;
                        } else {
                            view3 = view3;
                            i = i;
                            if (a >= i) {
                                continue;
                            } else if (a == 0) {
                                view2 = view4;
                                break;
                            } else {
                                i = a;
                                view3 = view4;
                            }
                        }
                    }
                }
                i2++;
            }
            return view2;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
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
        int f4695f;

        /* renamed from: g */
        int f4696g;

        /* renamed from: h */
        boolean f4697h;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f4695f = parcel.readInt();
            this.f4696g = parcel.readInt();
            this.f4697h = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.f4695f = savedState.f4695f;
            this.f4696g = savedState.f4696g;
            this.f4697h = savedState.f4697h;
        }

        /* renamed from: a */
        boolean m17587a() {
            return this.f4695f >= 0;
        }

        /* renamed from: b */
        void m17586b() {
            this.f4695f = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f4695f);
            parcel.writeInt(this.f4696g);
            parcel.writeInt(this.f4697h ? 1 : 0);
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.f4665s = 1;
        this.f4669w = false;
        this.f4670x = false;
        this.f4671y = false;
        this.f4672z = true;
        this.f4657A = -1;
        this.f4658B = Integer.MIN_VALUE;
        this.f4660D = null;
        this.f4661E = new AnchorInfo();
        this.f4662F = new LayoutChunkResult();
        this.f4663G = 2;
        this.f4664H = new int[2];
        m17649F2(i);
        m17648G2(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f4665s = 1;
        this.f4669w = false;
        this.f4670x = false;
        this.f4671y = false;
        this.f4672z = true;
        this.f4657A = -1;
        this.f4658B = Integer.MIN_VALUE;
        this.f4660D = null;
        this.f4661E = new AnchorInfo();
        this.f4662F = new LayoutChunkResult();
        this.f4663G = 2;
        this.f4664H = new int[2];
        RecyclerView.LayoutManager.Properties j0 = RecyclerView.LayoutManager.m17398j0(context, attributeSet, i, i2);
        m17649F2(j0.f4773a);
        m17648G2(j0.f4775c);
        mo17647H2(j0.f4776d);
    }

    /* renamed from: A2 */
    private void m17654A2(RecyclerView.Recycler recycler, int i, int i2) {
        if (i >= 0) {
            int i3 = i - i2;
            int K = m17441K();
            if (this.f4670x) {
                int i4 = K - 1;
                for (int i5 = i4; i5 >= 0; i5--) {
                    View J = m17442J(i5);
                    if (this.f4667u.mo17541d(J) > i3 || this.f4667u.mo17530p(J) > i3) {
                        m17601y2(recycler, i4, i5);
                        return;
                    }
                }
                return;
            }
            for (int i6 = 0; i6 < K; i6++) {
                View J2 = m17442J(i6);
                if (this.f4667u.mo17541d(J2) > i3 || this.f4667u.mo17530p(J2) > i3) {
                    m17601y2(recycler, 0, i6);
                    return;
                }
            }
        }
    }

    /* renamed from: C2 */
    private void m17652C2() {
        if (this.f4665s == 1 || !m17607s2()) {
            this.f4670x = this.f4669w;
        } else {
            this.f4670x = !this.f4669w;
        }
    }

    /* renamed from: I2 */
    private boolean m17646I2(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        boolean z = false;
        if (m17441K() == 0) {
            return false;
        }
        View W = m17424W();
        if (W != null && anchorInfo.m17596d(W, state)) {
            anchorInfo.m17597c(W, m17400i0(W));
            return true;
        } else if (this.f4668v != this.f4671y) {
            return false;
        } else {
            View k2 = anchorInfo.f4676d ? m17615k2(recycler, state) : m17614l2(recycler, state);
            if (k2 == null) {
                return false;
            }
            anchorInfo.m17598b(k2, m17400i0(k2));
            if (state.m17272e() || !mo17191M1()) {
                return true;
            }
            if (this.f4667u.mo17538g(k2) >= this.f4667u.mo17536i() || this.f4667u.mo17541d(k2) < this.f4667u.mo17532m()) {
                z = true;
            }
            if (!z) {
                return true;
            }
            anchorInfo.f4675c = anchorInfo.f4676d ? this.f4667u.mo17536i() : this.f4667u.mo17532m();
            return true;
        }
    }

    /* renamed from: J2 */
    private boolean m17645J2(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i;
        boolean z = false;
        if (state.m17272e() || (i = this.f4657A) == -1) {
            return false;
        }
        if (i < 0 || i >= state.m17275b()) {
            this.f4657A = -1;
            this.f4658B = Integer.MIN_VALUE;
            return false;
        }
        anchorInfo.f4674b = this.f4657A;
        SavedState savedState = this.f4660D;
        if (savedState != null && savedState.m17587a()) {
            boolean z2 = this.f4660D.f4697h;
            anchorInfo.f4676d = z2;
            if (z2) {
                anchorInfo.f4675c = this.f4667u.mo17536i() - this.f4660D.f4696g;
                return true;
            }
            anchorInfo.f4675c = this.f4667u.mo17532m() + this.f4660D.f4696g;
            return true;
        } else if (this.f4658B == Integer.MIN_VALUE) {
            View D = mo17454D(this.f4657A);
            if (D == null) {
                if (m17441K() > 0) {
                    if ((this.f4657A < m17400i0(m17442J(0))) == this.f4670x) {
                        z = true;
                    }
                    anchorInfo.f4676d = z;
                }
                anchorInfo.m17599a();
                return true;
            } else if (this.f4667u.mo17540e(D) > this.f4667u.mo17531n()) {
                anchorInfo.m17599a();
                return true;
            } else if (this.f4667u.mo17538g(D) - this.f4667u.mo17532m() < 0) {
                anchorInfo.f4675c = this.f4667u.mo17532m();
                anchorInfo.f4676d = false;
                return true;
            } else if (this.f4667u.mo17536i() - this.f4667u.mo17541d(D) < 0) {
                anchorInfo.f4675c = this.f4667u.mo17536i();
                anchorInfo.f4676d = true;
                return true;
            } else {
                anchorInfo.f4675c = anchorInfo.f4676d ? this.f4667u.mo17541d(D) + this.f4667u.m17543o() : this.f4667u.mo17538g(D);
                return true;
            }
        } else {
            boolean z3 = this.f4670x;
            anchorInfo.f4676d = z3;
            if (z3) {
                anchorInfo.f4675c = this.f4667u.mo17536i() - this.f4658B;
                return true;
            }
            anchorInfo.f4675c = this.f4667u.mo17532m() + this.f4658B;
            return true;
        }
    }

    /* renamed from: K2 */
    private void m17644K2(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        if (!m17645J2(state, anchorInfo) && !m17646I2(recycler, state, anchorInfo)) {
            anchorInfo.m17599a();
            anchorInfo.f4674b = this.f4671y ? state.m17275b() - 1 : 0;
        }
    }

    /* renamed from: L2 */
    private void m17643L2(int i, int i2, boolean z, RecyclerView.State state) {
        int i3;
        this.f4666t.f4694m = m17653B2();
        this.f4666t.f4687f = i;
        int[] iArr = this.f4664H;
        boolean z2 = false;
        iArr[0] = 0;
        int i4 = 1;
        int i5 = 1;
        iArr[1] = 0;
        mo9947N1(state, iArr);
        int max = Math.max(0, this.f4664H[0]);
        int max2 = Math.max(0, this.f4664H[1]);
        if (i == 1) {
            z2 = true;
        }
        this.f4666t.f4689h = z2 ? max2 : max;
        LayoutState layoutState = this.f4666t;
        if (!z2) {
            max = max2;
        }
        layoutState.f4690i = max;
        if (z2) {
            this.f4666t.f4689h += this.f4667u.mo17535j();
            View o2 = m17611o2();
            LayoutState layoutState2 = this.f4666t;
            if (this.f4670x) {
                i5 = -1;
            }
            layoutState2.f4686e = i5;
            LayoutState layoutState3 = this.f4666t;
            int i0 = m17400i0(o2);
            LayoutState layoutState4 = this.f4666t;
            layoutState3.f4685d = i0 + layoutState4.f4686e;
            layoutState4.f4683b = this.f4667u.mo17541d(o2);
            i3 = this.f4667u.mo17541d(o2) - this.f4667u.mo17536i();
        } else {
            View p2 = m17610p2();
            this.f4666t.f4689h += this.f4667u.mo17532m();
            LayoutState layoutState5 = this.f4666t;
            if (!this.f4670x) {
                i4 = -1;
            }
            layoutState5.f4686e = i4;
            LayoutState layoutState6 = this.f4666t;
            int i02 = m17400i0(p2);
            LayoutState layoutState7 = this.f4666t;
            layoutState6.f4685d = i02 + layoutState7.f4686e;
            layoutState7.f4683b = this.f4667u.mo17538g(p2);
            i3 = (-this.f4667u.mo17538g(p2)) + this.f4667u.mo17532m();
        }
        LayoutState layoutState8 = this.f4666t;
        layoutState8.f4684c = i2;
        if (z) {
            layoutState8.f4684c = i2 - i3;
        }
        this.f4666t.f4688g = i3;
    }

    /* renamed from: M2 */
    private void m17642M2(int i, int i2) {
        this.f4666t.f4684c = this.f4667u.mo17536i() - i2;
        this.f4666t.f4686e = this.f4670x ? -1 : 1;
        LayoutState layoutState = this.f4666t;
        layoutState.f4685d = i;
        layoutState.f4687f = 1;
        layoutState.f4683b = i2;
        layoutState.f4688g = Integer.MIN_VALUE;
    }

    /* renamed from: N2 */
    private void m17641N2(AnchorInfo anchorInfo) {
        m17642M2(anchorInfo.f4674b, anchorInfo.f4675c);
    }

    /* renamed from: O2 */
    private void m17639O2(int i, int i2) {
        this.f4666t.f4684c = i2 - this.f4667u.mo17532m();
        LayoutState layoutState = this.f4666t;
        layoutState.f4685d = i;
        layoutState.f4686e = this.f4670x ? 1 : -1;
        LayoutState layoutState2 = this.f4666t;
        layoutState2.f4687f = -1;
        layoutState2.f4683b = i2;
        layoutState2.f4688g = Integer.MIN_VALUE;
    }

    /* renamed from: P1 */
    private int m17638P1(RecyclerView.State state) {
        if (m17441K() == 0) {
            return 0;
        }
        m17632U1();
        return ScrollbarHelper.m17257a(state, this.f4667u, m17626a2(!this.f4672z, true), m17627Z1(!this.f4672z, true), this, this.f4672z);
    }

    /* renamed from: P2 */
    private void m17637P2(AnchorInfo anchorInfo) {
        m17639O2(anchorInfo.f4674b, anchorInfo.f4675c);
    }

    /* renamed from: Q1 */
    private int m17636Q1(RecyclerView.State state) {
        if (m17441K() == 0) {
            return 0;
        }
        m17632U1();
        return ScrollbarHelper.m17256b(state, this.f4667u, m17626a2(!this.f4672z, true), m17627Z1(!this.f4672z, true), this, this.f4672z, this.f4670x);
    }

    /* renamed from: R1 */
    private int m17635R1(RecyclerView.State state) {
        if (m17441K() == 0) {
            return 0;
        }
        m17632U1();
        return ScrollbarHelper.m17255c(state, this.f4667u, m17626a2(!this.f4672z, true), m17627Z1(!this.f4672z, true), this, this.f4672z);
    }

    /* renamed from: X1 */
    private View m17629X1() {
        return m17620f2(0, m17441K());
    }

    /* renamed from: Y1 */
    private View m17628Y1(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return mo17616j2(recycler, state, 0, m17441K(), state.m17275b());
    }

    /* renamed from: c2 */
    private View m17623c2() {
        return m17620f2(m17441K() - 1, -1);
    }

    /* renamed from: d2 */
    private View m17622d2(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return mo17616j2(recycler, state, m17441K() - 1, -1, state.m17275b());
    }

    /* renamed from: h2 */
    private View m17618h2() {
        return this.f4670x ? m17629X1() : m17623c2();
    }

    /* renamed from: i2 */
    private View m17617i2() {
        return this.f4670x ? m17623c2() : m17629X1();
    }

    /* renamed from: k2 */
    private View m17615k2(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.f4670x ? m17628Y1(recycler, state) : m17622d2(recycler, state);
    }

    /* renamed from: l2 */
    private View m17614l2(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.f4670x ? m17622d2(recycler, state) : m17628Y1(recycler, state);
    }

    /* renamed from: m2 */
    private int m17613m2(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i2;
        int i3 = this.f4667u.mo17536i() - i;
        if (i3 <= 0) {
            return 0;
        }
        int i4 = -m17651D2(-i3, recycler, state);
        if (!z || (i2 = this.f4667u.mo17536i() - (i + i4)) <= 0) {
            return i4;
        }
        this.f4667u.mo17528r(i2);
        return i2 + i4;
    }

    /* renamed from: n2 */
    private int m17612n2(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int m = i - this.f4667u.mo17532m();
        if (m <= 0) {
            return 0;
        }
        int i2 = -m17651D2(m, recycler, state);
        int i3 = i2;
        if (z) {
            int m2 = (i + i2) - this.f4667u.mo17532m();
            i3 = i2;
            if (m2 > 0) {
                this.f4667u.mo17528r(-m2);
                i3 = i2 - m2;
            }
        }
        return i3;
    }

    /* renamed from: o2 */
    private View m17611o2() {
        return m17442J(this.f4670x ? 0 : m17441K() - 1);
    }

    /* renamed from: p2 */
    private View m17610p2() {
        return m17442J(this.f4670x ? m17441K() - 1 : 0);
    }

    /* renamed from: v2 */
    private void m17604v2(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        if (state.m17270g() && m17441K() != 0 && !state.m17272e() && mo17191M1()) {
            List<RecyclerView.ViewHolder> k = recycler.m17323k();
            int size = k.size();
            int i0 = m17400i0(m17442J(0));
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                RecyclerView.ViewHolder viewHolder = k.get(i5);
                if (!viewHolder.isRemoved()) {
                    char c = 1;
                    if ((viewHolder.getLayoutPosition() < i0) != this.f4670x) {
                        c = 65535;
                    }
                    if (c == 65535) {
                        i3 += this.f4667u.mo17540e(viewHolder.itemView);
                    } else {
                        i4 += this.f4667u.mo17540e(viewHolder.itemView);
                    }
                }
            }
            this.f4666t.f4693l = k;
            if (i3 > 0) {
                m17639O2(m17400i0(m17610p2()), i);
                LayoutState layoutState = this.f4666t;
                layoutState.f4689h = i3;
                layoutState.f4684c = 0;
                layoutState.m17593a();
                m17631V1(recycler, this.f4666t, state, false);
            }
            if (i4 > 0) {
                m17642M2(m17400i0(m17611o2()), i2);
                LayoutState layoutState2 = this.f4666t;
                layoutState2.f4689h = i4;
                layoutState2.f4684c = 0;
                layoutState2.m17593a();
                m17631V1(recycler, this.f4666t, state, false);
            }
            this.f4666t.f4693l = null;
        }
    }

    /* renamed from: x2 */
    private void m17602x2(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (layoutState.f4682a && !layoutState.f4694m) {
            int i = layoutState.f4688g;
            int i2 = layoutState.f4690i;
            if (layoutState.f4687f == -1) {
                m17600z2(recycler, i, i2);
            } else {
                m17654A2(recycler, i, i2);
            }
        }
    }

    /* renamed from: y2 */
    private void m17601y2(RecyclerView.Recycler recycler, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                while (true) {
                    i2--;
                    if (i2 >= i) {
                        m17386o1(i2, recycler);
                    } else {
                        return;
                    }
                }
            } else {
                for (int i3 = i; i3 > i2; i3--) {
                    m17386o1(i3, recycler);
                }
            }
        }
    }

    /* renamed from: z2 */
    private void m17600z2(RecyclerView.Recycler recycler, int i, int i2) {
        int K = m17441K();
        if (i >= 0) {
            int h = (this.f4667u.mo17537h() - i) + i2;
            if (this.f4670x) {
                for (int i3 = 0; i3 < K; i3++) {
                    View J = m17442J(i3);
                    if (this.f4667u.mo17538g(J) < h || this.f4667u.mo17529q(J) < h) {
                        m17601y2(recycler, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = K - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View J2 = m17442J(i5);
                if (this.f4667u.mo17538g(J2) < h || this.f4667u.mo17529q(J2) < h) {
                    m17601y2(recycler, i4, i5);
                    return;
                }
            }
        }
    }

    /* renamed from: B2 */
    boolean m17653B2() {
        return this.f4667u.mo17534k() == 0 && this.f4667u.mo17537h() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: D */
    public View mo17454D(int i) {
        int K = m17441K();
        if (K == 0) {
            return null;
        }
        int i0 = i - m17400i0(m17442J(0));
        if (i0 >= 0 && i0 < K) {
            View J = m17442J(i0);
            if (m17400i0(J) == i) {
                return J;
            }
        }
        return super.mo17454D(i);
    }

    /* renamed from: D2 */
    int m17651D2(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (m17441K() == 0 || i == 0) {
            return 0;
        }
        m17632U1();
        this.f4666t.f4682a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m17643L2(i2, abs, true, state);
        LayoutState layoutState = this.f4666t;
        int V1 = layoutState.f4688g + m17631V1(recycler, layoutState, state, false);
        if (V1 < 0) {
            return 0;
        }
        if (abs > V1) {
            i = i2 * V1;
        }
        this.f4667u.mo17528r(-i);
        this.f4666t.f4692k = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: E */
    public RecyclerView.LayoutParams mo17206E() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    /* renamed from: E2 */
    public void m17650E2(int i, int i2) {
        this.f4657A = i;
        this.f4658B = i2;
        SavedState savedState = this.f4660D;
        if (savedState != null) {
            savedState.m17586b();
        }
        m17375u1();
    }

    /* renamed from: F2 */
    public void m17649F2(int i) {
        if (i == 0 || i == 1) {
            mo17150h(null);
            if (i != this.f4665s || this.f4667u == null) {
                OrientationHelper b = OrientationHelper.m17545b(this, i);
                this.f4667u = b;
                this.f4661E.f4673a = b;
                this.f4665s = i;
                m17375u1();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation:" + i);
    }

    /* renamed from: G2 */
    public void m17648G2(boolean z) {
        mo17150h(null);
        if (z != this.f4669w) {
            this.f4669w = z;
            m17375u1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: H1 */
    boolean mo17446H1() {
        return (m17421Y() == 1073741824 || m17382q0() == 1073741824 || !m17380r0()) ? false : true;
    }

    /* renamed from: H2 */
    public void mo17647H2(boolean z) {
        mo17150h(null);
        if (this.f4671y != z) {
            this.f4671y = z;
            m17375u1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: J0 */
    public void mo17197J0(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.mo17197J0(recyclerView, recycler);
        if (this.f4659C) {
            m17393l1(recycler);
            recycler.m17331c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: J1 */
    public void mo9858J1(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.m17284p(i);
        m17440K1(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: K0 */
    public View mo17195K0(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int S1;
        m17652C2();
        if (m17441K() == 0 || (S1 = m17634S1(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m17632U1();
        m17643L2(S1, (int) (this.f4667u.mo17531n() * 0.33333334f), false, state);
        LayoutState layoutState = this.f4666t;
        layoutState.f4688g = Integer.MIN_VALUE;
        layoutState.f4682a = false;
        m17631V1(recycler, layoutState, state, true);
        View i2 = S1 == -1 ? m17617i2() : m17618h2();
        View p2 = S1 == -1 ? m17610p2() : m17611o2();
        if (!p2.hasFocusable()) {
            return i2;
        }
        if (i2 == null) {
            return null;
        }
        return p2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: L0 */
    public void mo17193L0(AccessibilityEvent accessibilityEvent) {
        super.mo17193L0(accessibilityEvent);
        if (m17441K() > 0) {
            accessibilityEvent.setFromIndex(m17624b2());
            accessibilityEvent.setToIndex(m17621e2());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: M1 */
    public boolean mo17191M1() {
        return this.f4660D == null && this.f4668v == this.f4671y;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: N1 */
    public void mo9947N1(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        int i;
        int i2;
        int q2 = m17609q2(state);
        if (this.f4666t.f4687f == -1) {
            i2 = 0;
            i = q2;
        } else {
            i = 0;
            i2 = q2;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    /* renamed from: O1 */
    void mo17640O1(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = layoutState.f4685d;
        if (i >= 0 && i < state.m17275b()) {
            layoutPrefetchRegistry.mo17364a(i, Math.max(0, layoutState.f4688g));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S1 */
    public int m17634S1(int i) {
        int i2 = -1;
        int i3 = 1;
        int i4 = 1;
        if (i == 1) {
            return (this.f4665s != 1 && m17607s2()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.f4665s != 1 && m17607s2()) ? -1 : 1;
        }
        if (i == 17) {
            if (this.f4665s != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f4665s != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            if (this.f4665s != 0) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            if (this.f4665s != 1) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        }
    }

    /* renamed from: T1 */
    LayoutState m17633T1() {
        return new LayoutState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U1 */
    public void m17632U1() {
        if (this.f4666t == null) {
            this.f4666t = m17633T1();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        if (r9.m17272e() == false) goto L_0x0092;
     */
    /* renamed from: V1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int m17631V1(androidx.recyclerview.widget.RecyclerView.Recycler r7, androidx.recyclerview.widget.LinearLayoutManager.LayoutState r8, androidx.recyclerview.widget.RecyclerView.State r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m17631V1(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.LinearLayoutManager$LayoutState, androidx.recyclerview.widget.RecyclerView$State, boolean):int");
    }

    /* renamed from: W1 */
    public int m17630W1() {
        View g2 = m17619g2(0, m17441K(), true, false);
        return g2 == null ? -1 : m17400i0(g2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Y0 */
    public void mo17165Y0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = -1;
        if (!(this.f4660D == null && this.f4657A == -1) && state.m17275b() == 0) {
            m17393l1(recycler);
            return;
        }
        SavedState savedState = this.f4660D;
        if (savedState != null && savedState.m17587a()) {
            this.f4657A = this.f4660D.f4695f;
        }
        m17632U1();
        this.f4666t.f4682a = false;
        m17652C2();
        View W = m17424W();
        if (!this.f4661E.f4677e || this.f4657A != -1 || this.f4660D != null) {
            this.f4661E.m17595e();
            AnchorInfo anchorInfo = this.f4661E;
            anchorInfo.f4676d = this.f4670x ^ this.f4671y;
            m17644K2(recycler, state, anchorInfo);
            this.f4661E.f4677e = true;
        } else if (W != null && (this.f4667u.mo17538g(W) >= this.f4667u.mo17536i() || this.f4667u.mo17541d(W) <= this.f4667u.mo17532m())) {
            this.f4661E.m17597c(W, m17400i0(W));
        }
        LayoutState layoutState = this.f4666t;
        layoutState.f4687f = layoutState.f4692k >= 0 ? 1 : -1;
        int[] iArr = this.f4664H;
        iArr[0] = 0;
        iArr[1] = 0;
        mo9947N1(state, iArr);
        int max = Math.max(0, this.f4664H[0]) + this.f4667u.mo17532m();
        int max2 = Math.max(0, this.f4664H[1]) + this.f4667u.mo17535j();
        int i9 = max;
        int i10 = max2;
        if (state.m17272e()) {
            int i11 = this.f4657A;
            i9 = max;
            i10 = max2;
            if (i11 != -1) {
                i9 = max;
                i10 = max2;
                if (this.f4658B != Integer.MIN_VALUE) {
                    View D = mo17454D(i11);
                    i9 = max;
                    i10 = max2;
                    if (D != null) {
                        if (this.f4670x) {
                            i7 = this.f4667u.mo17536i() - this.f4667u.mo17541d(D);
                            i6 = this.f4658B;
                        } else {
                            i6 = this.f4667u.mo17538g(D) - this.f4667u.mo17532m();
                            i7 = this.f4658B;
                        }
                        int i12 = i7 - i6;
                        if (i12 > 0) {
                            i9 = max + i12;
                            i10 = max2;
                        } else {
                            i10 = max2 - i12;
                            i9 = max;
                        }
                    }
                }
            }
        }
        if (!this.f4661E.f4676d ? !this.f4670x : this.f4670x) {
            i8 = 1;
        }
        mo17603w2(recycler, state, this.f4661E, i8);
        m17370x(recycler);
        this.f4666t.f4694m = m17653B2();
        this.f4666t.f4691j = state.m17272e();
        this.f4666t.f4690i = 0;
        AnchorInfo anchorInfo2 = this.f4661E;
        if (anchorInfo2.f4676d) {
            m17637P2(anchorInfo2);
            LayoutState layoutState2 = this.f4666t;
            layoutState2.f4689h = i9;
            m17631V1(recycler, layoutState2, state, false);
            LayoutState layoutState3 = this.f4666t;
            int i13 = layoutState3.f4683b;
            int i14 = layoutState3.f4685d;
            int i15 = layoutState3.f4684c;
            int i16 = i10;
            if (i15 > 0) {
                i16 = i10 + i15;
            }
            m17641N2(this.f4661E);
            LayoutState layoutState4 = this.f4666t;
            layoutState4.f4689h = i16;
            layoutState4.f4685d += layoutState4.f4686e;
            m17631V1(recycler, layoutState4, state, false);
            LayoutState layoutState5 = this.f4666t;
            int i17 = layoutState5.f4683b;
            int i18 = layoutState5.f4684c;
            i = i13;
            i2 = i17;
            if (i18 > 0) {
                m17639O2(i14, i13);
                LayoutState layoutState6 = this.f4666t;
                layoutState6.f4689h = i18;
                m17631V1(recycler, layoutState6, state, false);
                i = this.f4666t.f4683b;
                i2 = i17;
            }
        } else {
            m17641N2(anchorInfo2);
            LayoutState layoutState7 = this.f4666t;
            layoutState7.f4689h = i10;
            m17631V1(recycler, layoutState7, state, false);
            LayoutState layoutState8 = this.f4666t;
            int i19 = layoutState8.f4683b;
            int i20 = layoutState8.f4685d;
            int i21 = layoutState8.f4684c;
            int i22 = i9;
            if (i21 > 0) {
                i22 = i9 + i21;
            }
            m17637P2(this.f4661E);
            LayoutState layoutState9 = this.f4666t;
            layoutState9.f4689h = i22;
            layoutState9.f4685d += layoutState9.f4686e;
            m17631V1(recycler, layoutState9, state, false);
            LayoutState layoutState10 = this.f4666t;
            int i23 = layoutState10.f4683b;
            int i24 = layoutState10.f4684c;
            i = i23;
            i2 = i19;
            if (i24 > 0) {
                m17642M2(i20, i19);
                LayoutState layoutState11 = this.f4666t;
                layoutState11.f4689h = i24;
                m17631V1(recycler, layoutState11, state, false);
                i2 = this.f4666t.f4683b;
                i = i23;
            }
        }
        int i25 = i;
        int i26 = i2;
        if (m17441K() > 0) {
            if (this.f4670x ^ this.f4671y) {
                int m2 = m17613m2(i2, recycler, state, true);
                i5 = i + m2;
                i4 = i2 + m2;
                i3 = m17612n2(i5, recycler, state, false);
            } else {
                int n2 = m17612n2(i, recycler, state, true);
                i5 = i + n2;
                i4 = i2 + n2;
                i3 = m17613m2(i4, recycler, state, false);
            }
            i25 = i5 + i3;
            i26 = i4 + i3;
        }
        m17604v2(recycler, state, i25, i26);
        if (!state.m17272e()) {
            this.f4667u.m17542s();
        } else {
            this.f4661E.m17595e();
        }
        this.f4668v = this.f4671y;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Z0 */
    public void mo17163Z0(RecyclerView.State state) {
        super.mo17163Z0(state);
        this.f4660D = null;
        this.f4657A = -1;
        this.f4658B = Integer.MIN_VALUE;
        this.f4661E.m17595e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z1 */
    public View m17627Z1(boolean z, boolean z2) {
        return this.f4670x ? m17619g2(0, m17441K(), z, z2) : m17619g2(m17441K() - 1, -1, z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    /* renamed from: a */
    public PointF mo17161a(int i) {
        if (m17441K() == 0) {
            return null;
        }
        boolean z = false;
        int i2 = 1;
        if (i < m17400i0(m17442J(0))) {
            z = true;
        }
        if (z != this.f4670x) {
            i2 = -1;
        }
        return this.f4665s == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a2 */
    public View m17626a2(boolean z, boolean z2) {
        return this.f4670x ? m17619g2(m17441K() - 1, -1, z, z2) : m17619g2(0, m17441K(), z, z2);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    /* renamed from: b */
    public void mo17625b(@NonNull View view, @NonNull View view2, int i, int i2) {
        mo17150h("Cannot drop a view during a scroll or layout calculation");
        m17632U1();
        m17652C2();
        int i0 = m17400i0(view);
        int i02 = m17400i0(view2);
        char c = i0 < i02 ? (char) 1 : (char) 65535;
        if (this.f4670x) {
            if (c == 1) {
                m17650E2(i02, this.f4667u.mo17536i() - (this.f4667u.mo17538g(view2) + this.f4667u.mo17540e(view)));
            } else {
                m17650E2(i02, this.f4667u.mo17536i() - this.f4667u.mo17541d(view2));
            }
        } else if (c == 65535) {
            m17650E2(i02, this.f4667u.mo17538g(view2));
        } else {
            m17650E2(i02, this.f4667u.mo17541d(view2) - this.f4667u.mo17540e(view));
        }
    }

    /* renamed from: b2 */
    public int m17624b2() {
        View g2 = m17619g2(0, m17441K(), false, true);
        return g2 == null ? -1 : m17400i0(g2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: d1 */
    public void mo17157d1(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f4660D = (SavedState) parcelable;
            m17375u1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: e1 */
    public Parcelable mo17155e1() {
        if (this.f4660D != null) {
            return new SavedState(this.f4660D);
        }
        SavedState savedState = new SavedState();
        if (m17441K() > 0) {
            m17632U1();
            boolean z = this.f4668v ^ this.f4670x;
            savedState.f4697h = z;
            if (z) {
                View o2 = m17611o2();
                savedState.f4696g = this.f4667u.mo17536i() - this.f4667u.mo17541d(o2);
                savedState.f4695f = m17400i0(o2);
            } else {
                View p2 = m17610p2();
                savedState.f4695f = m17400i0(p2);
                savedState.f4696g = this.f4667u.mo17538g(p2) - this.f4667u.mo17532m();
            }
        } else {
            savedState.m17586b();
        }
        return savedState;
    }

    /* renamed from: e2 */
    public int m17621e2() {
        int i = -1;
        View g2 = m17619g2(m17441K() - 1, -1, false, true);
        if (g2 != null) {
            i = m17400i0(g2);
        }
        return i;
    }

    /* renamed from: f2 */
    View m17620f2(int i, int i2) {
        int i3;
        int i4;
        m17632U1();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return m17442J(i);
        }
        if (this.f4667u.mo17538g(m17442J(i)) < this.f4667u.mo17532m()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        return this.f4665s == 0 ? this.f4757e.m17053a(i, i2, i4, i3) : this.f4758f.m17053a(i, i2, i4, i3);
    }

    /* renamed from: g2 */
    View m17619g2(int i, int i2, boolean z, boolean z2) {
        m17632U1();
        int i3 = 320;
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.f4665s == 0 ? this.f4757e.m17053a(i, i2, i4, i3) : this.f4758f.m17053a(i, i2, i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: h */
    public void mo17150h(String str) {
        if (this.f4660D == null) {
            super.mo17150h(str);
        }
    }

    /* renamed from: j2 */
    View mo17616j2(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3) {
        m17632U1();
        int m = this.f4667u.mo17532m();
        int i4 = this.f4667u.mo17536i();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View J = m17442J(i);
            int i0 = m17400i0(J);
            view = view;
            view2 = view2;
            if (i0 >= 0) {
                view = view;
                view2 = view2;
                if (i0 >= i3) {
                    continue;
                } else if (((RecyclerView.LayoutParams) J.getLayoutParams()).m17361c()) {
                    view = view;
                    view2 = view2;
                    if (view2 == null) {
                        view2 = J;
                        view = view;
                    }
                } else if (this.f4667u.mo17538g(J) < i4 && this.f4667u.mo17541d(J) >= m) {
                    return J;
                } else {
                    view = view;
                    view2 = view2;
                    if (view == null) {
                        view = J;
                        view2 = view2;
                    }
                }
            }
            i += i5;
        }
        if (view == null) {
            view = view2;
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: l */
    public boolean mo17145l() {
        return this.f4665s == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: m */
    public boolean mo17142m() {
        boolean z = true;
        if (this.f4665s != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: p */
    public void mo17137p(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.f4665s != 0) {
            i = i2;
        }
        if (m17441K() != 0 && i != 0) {
            m17632U1();
            m17643L2(i > 0 ? 1 : -1, Math.abs(i), true, state);
            mo17640O1(state, this.f4666t, layoutPrefetchRegistry);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: q */
    public void mo17383q(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i2;
        boolean z;
        SavedState savedState = this.f4660D;
        int i3 = -1;
        if (savedState == null || !savedState.m17587a()) {
            m17652C2();
            boolean z2 = this.f4670x;
            int i4 = this.f4657A;
            i2 = i4;
            z = z2;
            if (i4 == -1) {
                if (z2) {
                    i2 = i - 1;
                    z = z2;
                } else {
                    i2 = 0;
                    z = z2;
                }
            }
        } else {
            SavedState savedState2 = this.f4660D;
            z = savedState2.f4697h;
            i2 = savedState2.f4695f;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.f4663G && i2 >= 0 && i2 < i; i5++) {
            layoutPrefetchRegistry.mo17364a(i2, 0);
            i2 += i3;
        }
    }

    @Deprecated
    /* renamed from: q2 */
    protected int m17609q2(RecyclerView.State state) {
        if (state.m17273d()) {
            return this.f4667u.mo17531n();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: r */
    public int mo17134r(RecyclerView.State state) {
        return m17638P1(state);
    }

    /* renamed from: r2 */
    public int m17608r2() {
        return this.f4665s;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: s */
    public int mo17132s(RecyclerView.State state) {
        return m17636Q1(state);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s2 */
    public boolean m17607s2() {
        boolean z = true;
        if (m17419a0() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: t */
    public int mo17130t(RecyclerView.State state) {
        return m17635R1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: t0 */
    public boolean mo17129t0() {
        return true;
    }

    /* renamed from: t2 */
    public boolean m17606t2() {
        return this.f4672z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: u */
    public int mo17127u(RecyclerView.State state) {
        return m17638P1(state);
    }

    /* renamed from: u2 */
    void mo17605u2(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View d = layoutState.m17590d(recycler);
        if (d == null) {
            layoutChunkResult.f4679b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) d.getLayoutParams();
        if (layoutState.f4693l == null) {
            if (this.f4670x == (layoutState.f4687f == -1)) {
                m17410e(d);
            } else {
                m17408f(d, 0);
            }
        } else {
            if (this.f4670x == (layoutState.f4687f == -1)) {
                m17415c(d);
            } else {
                m17412d(d, 0);
            }
        }
        m17459B0(d, 0, 0);
        layoutChunkResult.f4678a = this.f4667u.mo17540e(d);
        if (this.f4665s == 1) {
            if (m17607s2()) {
                i5 = m17385p0() - m17405g0();
                i3 = i5 - this.f4667u.mo17539f(d);
            } else {
                i3 = m17407f0();
                i5 = this.f4667u.mo17539f(d) + i3;
            }
            if (layoutState.f4687f == -1) {
                int i6 = layoutState.f4683b;
                i2 = i6;
                i = i5;
                i4 = i6 - layoutChunkResult.f4678a;
            } else {
                int i7 = layoutState.f4683b;
                i = i5;
                i2 = layoutChunkResult.f4678a + i7;
                i4 = i7;
            }
        } else {
            int h0 = m17403h0();
            int f = this.f4667u.mo17539f(d) + h0;
            if (layoutState.f4687f == -1) {
                int i8 = layoutState.f4683b;
                i = i8;
                i2 = f;
                i3 = i8 - layoutChunkResult.f4678a;
                i4 = h0;
            } else {
                int i9 = layoutState.f4683b;
                i = layoutChunkResult.f4678a + i9;
                i2 = f;
                i4 = h0;
                i3 = i9;
            }
        }
        m17462A0(d, i3, i4, i, i2);
        if (layoutParams.m17361c() || layoutParams.m17362b()) {
            layoutChunkResult.f4680c = true;
        }
        layoutChunkResult.f4681d = d.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: v */
    public int mo17125v(RecyclerView.State state) {
        return m17636Q1(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: w */
    public int mo17123w(RecyclerView.State state) {
        return m17635R1(state);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w2 */
    public void mo17603w2(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: x1 */
    public int mo17121x1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f4665s == 1) {
            return 0;
        }
        return m17651D2(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: y1 */
    public void mo17119y1(int i) {
        this.f4657A = i;
        this.f4658B = Integer.MIN_VALUE;
        SavedState savedState = this.f4660D;
        if (savedState != null) {
            savedState.m17586b();
        }
        m17375u1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: z1 */
    public int mo17117z1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f4665s == 0) {
            return 0;
        }
        return m17651D2(i, recycler, state);
    }
}

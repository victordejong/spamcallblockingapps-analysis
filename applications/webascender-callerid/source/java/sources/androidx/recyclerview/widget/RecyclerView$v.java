package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.s;
import f.h.l.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
public final class RecyclerView$v {

    /* renamed from: a */
    final ArrayList<RecyclerView$d0> f1977a;

    /* renamed from: d */
    private final List<RecyclerView$d0> f1980d;

    /* renamed from: g */
    RecyclerView$u f1983g;

    /* renamed from: h */
    private RecyclerView$b0 f1984h;

    /* renamed from: i */
    final /* synthetic */ RecyclerView f1985i;

    /* renamed from: b */
    ArrayList<RecyclerView$d0> f1978b = null;

    /* renamed from: c */
    final ArrayList<RecyclerView$d0> f1979c = new ArrayList<>();

    /* renamed from: e */
    private int f1981e = 2;

    /* renamed from: f */
    int f1982f = 2;

    public RecyclerView$v(RecyclerView recyclerView) {
        this.f1985i = recyclerView;
        ArrayList<RecyclerView$d0> arrayList = new ArrayList<>();
        this.f1977a = arrayList;
        this.f1980d = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: H */
    private boolean m5089H(RecyclerView$d0 recyclerView$d0, int i, int i2, long j) {
        recyclerView$d0.mOwnerRecyclerView = this.f1985i;
        int itemViewType = recyclerView$d0.getItemViewType();
        long nanoTime = this.f1985i.getNanoTime();
        if (j == Long.MAX_VALUE || this.f1983g.m5098k(itemViewType, nanoTime, j)) {
            this.f1985i.q.bindViewHolder(recyclerView$d0, i);
            this.f1983g.m5105d(recyclerView$d0.getItemViewType(), this.f1985i.getNanoTime() - nanoTime);
            m5082b(recyclerView$d0);
            if (!this.f1985i.m0.m5292e()) {
                return true;
            }
            recyclerView$d0.mPreLayoutPosition = i2;
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private void m5082b(RecyclerView$d0 recyclerView$d0) {
        if (this.f1985i.w0()) {
            View view = recyclerView$d0.itemView;
            if (t.z(view) == 0) {
                t.u0(view, 1);
            }
            s sVar = this.f1985i.t0;
            if (sVar == null) {
                return;
            }
            s.a n = sVar.n();
            if (n instanceof s.a) {
                n.o(view);
            }
            t.k0(view, n);
        }
    }

    /* renamed from: q */
    private void m5067q(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                m5067q((ViewGroup) childAt, true);
            }
        }
        if (!z) {
            return;
        }
        if (viewGroup.getVisibility() == 4) {
            viewGroup.setVisibility(0);
            viewGroup.setVisibility(4);
            return;
        }
        int visibility = viewGroup.getVisibility();
        viewGroup.setVisibility(4);
        viewGroup.setVisibility(visibility);
    }

    /* renamed from: r */
    private void m5066r(RecyclerView$d0 recyclerView$d0) {
        View view = recyclerView$d0.itemView;
        if (view instanceof ViewGroup) {
            m5067q((ViewGroup) view, false);
        }
    }

    /* renamed from: A */
    void m5096A(int i) {
        m5083a(this.f1979c.get(i), true);
        this.f1979c.remove(i);
    }

    /* renamed from: B */
    public void m5095B(View view) {
        RecyclerView$d0 h0 = RecyclerView.h0(view);
        if (h0.isTmpDetached()) {
            this.f1985i.removeDetachedView(view, false);
        }
        if (h0.isScrap()) {
            h0.unScrap();
        } else if (h0.wasReturnedFromScrap()) {
            h0.clearReturnedFromScrapFlag();
        }
        m5094C(h0);
        if (this.f1985i.R == null || h0.isRecyclable()) {
            return;
        }
        this.f1985i.R.endAnimation(h0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
        if (r5.isRecyclable() != false) goto L23;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5094C(androidx.recyclerview.widget.RecyclerView$d0 r5) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$v.m5094C(androidx.recyclerview.widget.RecyclerView$d0):void");
    }

    /* renamed from: D */
    public void m5093D(View view) {
        RecyclerView$d0 h0 = RecyclerView.h0(view);
        if (!h0.hasAnyOfTheFlags(12) && h0.isUpdated() && !this.f1985i.p(h0)) {
            if (this.f1978b == null) {
                this.f1978b = new ArrayList<>();
            }
            h0.setScrapContainer(this, true);
            this.f1978b.add(h0);
        } else if (!h0.isInvalid() || h0.isRemoved() || this.f1985i.q.hasStableIds()) {
            h0.setScrapContainer(this, false);
            this.f1977a.add(h0);
        } else {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + this.f1985i.Q());
        }
    }

    /* renamed from: E */
    void m5092E(RecyclerView$u recyclerView$u) {
        RecyclerView$u recyclerView$u2 = this.f1983g;
        if (recyclerView$u2 != null) {
            recyclerView$u2.m5106c();
        }
        this.f1983g = recyclerView$u;
        if (recyclerView$u == null || this.f1985i.getAdapter() == null) {
            return;
        }
        this.f1983g.m5108a();
    }

    /* renamed from: F */
    void m5091F(RecyclerView$b0 recyclerView$b0) {
    }

    /* renamed from: G */
    public void m5090G(int i) {
        this.f1981e = i;
        m5086K();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0370  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.RecyclerView$d0 m5088I(int r8, boolean r9, long r10) {
        /*
            Method dump skipped, instructions count: 1135
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$v.m5088I(int, boolean, long):androidx.recyclerview.widget.RecyclerView$d0");
    }

    /* renamed from: J */
    public void m5087J(RecyclerView$d0 recyclerView$d0) {
        if (recyclerView$d0.mInChangeScrap) {
            this.f1978b.remove(recyclerView$d0);
        } else {
            this.f1977a.remove(recyclerView$d0);
        }
        recyclerView$d0.mScrapContainer = null;
        recyclerView$d0.mInChangeScrap = false;
        recyclerView$d0.clearReturnedFromScrapFlag();
    }

    /* renamed from: K */
    void m5086K() {
        RecyclerView$o recyclerView$o = this.f1985i.r;
        this.f1982f = this.f1981e + (recyclerView$o != null ? recyclerView$o.f1957m : 0);
        for (int size = this.f1979c.size() - 1; size >= 0 && this.f1979c.size() > this.f1982f; size--) {
            m5096A(size);
        }
    }

    /* renamed from: L */
    boolean m5085L(RecyclerView$d0 recyclerView$d0) {
        if (recyclerView$d0.isRemoved()) {
            return this.f1985i.m0.m5292e();
        }
        int i = recyclerView$d0.mPosition;
        if (i < 0 || i >= this.f1985i.q.getItemCount()) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + recyclerView$d0 + this.f1985i.Q());
        }
        boolean z = false;
        if (!this.f1985i.m0.m5292e() && this.f1985i.q.getItemViewType(recyclerView$d0.mPosition) != recyclerView$d0.getItemViewType()) {
            return false;
        }
        if (!this.f1985i.q.hasStableIds()) {
            return true;
        }
        if (recyclerView$d0.getItemId() == this.f1985i.q.getItemId(recyclerView$d0.mPosition)) {
            z = true;
        }
        return z;
    }

    /* renamed from: M */
    void m5084M(int i, int i2) {
        int i3;
        for (int size = this.f1979c.size() - 1; size >= 0; size--) {
            RecyclerView$d0 recyclerView$d0 = this.f1979c.get(size);
            if (recyclerView$d0 != null && (i3 = recyclerView$d0.mPosition) >= i && i3 < i2 + i) {
                recyclerView$d0.addFlags(2);
                m5096A(size);
            }
        }
    }

    /* renamed from: a */
    public void m5083a(RecyclerView$d0 recyclerView$d0, boolean z) {
        RecyclerView.r(recyclerView$d0);
        View view = recyclerView$d0.itemView;
        s sVar = this.f1985i.t0;
        if (sVar != null) {
            s.a n = sVar.n();
            t.k0(view, n instanceof s.a ? n.n(view) : null);
        }
        if (z) {
            m5077g(recyclerView$d0);
        }
        recyclerView$d0.mOwnerRecyclerView = null;
        m5075i().m5100i(recyclerView$d0);
    }

    /* renamed from: c */
    public void m5081c() {
        this.f1977a.clear();
        m5058z();
    }

    /* renamed from: d */
    void m5080d() {
        int size = this.f1979c.size();
        for (int i = 0; i < size; i++) {
            this.f1979c.get(i).clearOldPosition();
        }
        int size2 = this.f1977a.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.f1977a.get(i2).clearOldPosition();
        }
        ArrayList<RecyclerView$d0> arrayList = this.f1978b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                this.f1978b.get(i3).clearOldPosition();
            }
        }
    }

    /* renamed from: e */
    public void m5079e() {
        this.f1977a.clear();
        ArrayList<RecyclerView$d0> arrayList = this.f1978b;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* renamed from: f */
    public int m5078f(int i) {
        if (i >= 0 && i < this.f1985i.m0.m5295b()) {
            return !this.f1985i.m0.m5292e() ? i : this.f1985i.i.m(i);
        }
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + this.f1985i.m0.m5295b() + this.f1985i.Q());
    }

    /* renamed from: g */
    void m5077g(RecyclerView$d0 recyclerView$d0) {
        RecyclerView$w recyclerView$w = this.f1985i.s;
        if (recyclerView$w != null) {
            recyclerView$w.m5057a(recyclerView$d0);
        }
        RecyclerView$g recyclerView$g = this.f1985i.q;
        if (recyclerView$g != null) {
            recyclerView$g.onViewRecycled(recyclerView$d0);
        }
        RecyclerView recyclerView = this.f1985i;
        if (recyclerView.m0 != null) {
            recyclerView.k.m4852q(recyclerView$d0);
        }
    }

    /* renamed from: h */
    RecyclerView$d0 m5076h(int i) {
        int size;
        int m;
        ArrayList<RecyclerView$d0> arrayList = this.f1978b;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$d0 recyclerView$d0 = this.f1978b.get(i2);
            if (!recyclerView$d0.wasReturnedFromScrap() && recyclerView$d0.getLayoutPosition() == i) {
                recyclerView$d0.addFlags(32);
                return recyclerView$d0;
            }
        }
        if (!this.f1985i.q.hasStableIds() || (m = this.f1985i.i.m(i)) <= 0 || m >= this.f1985i.q.getItemCount()) {
            return null;
        }
        long itemId = this.f1985i.q.getItemId(m);
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$d0 recyclerView$d02 = this.f1978b.get(i3);
            if (!recyclerView$d02.wasReturnedFromScrap() && recyclerView$d02.getItemId() == itemId) {
                recyclerView$d02.addFlags(32);
                return recyclerView$d02;
            }
        }
        return null;
    }

    /* renamed from: i */
    RecyclerView$u m5075i() {
        if (this.f1983g == null) {
            this.f1983g = new RecyclerView$u();
        }
        return this.f1983g;
    }

    /* renamed from: j */
    public int m5074j() {
        return this.f1977a.size();
    }

    /* renamed from: k */
    public List<RecyclerView$d0> m5073k() {
        return this.f1980d;
    }

    /* renamed from: l */
    RecyclerView$d0 m5072l(long j, int i, boolean z) {
        for (int size = this.f1977a.size() - 1; size >= 0; size--) {
            RecyclerView$d0 recyclerView$d0 = this.f1977a.get(size);
            if (recyclerView$d0.getItemId() == j && !recyclerView$d0.wasReturnedFromScrap()) {
                if (i == recyclerView$d0.getItemViewType()) {
                    recyclerView$d0.addFlags(32);
                    if (recyclerView$d0.isRemoved() && !this.f1985i.m0.m5292e()) {
                        recyclerView$d0.setFlags(2, 14);
                    }
                    return recyclerView$d0;
                } else if (!z) {
                    this.f1977a.remove(size);
                    this.f1985i.removeDetachedView(recyclerView$d0.itemView, false);
                    m5059y(recyclerView$d0.itemView);
                }
            }
        }
        for (int size2 = this.f1979c.size() - 1; size2 >= 0; size2--) {
            RecyclerView$d0 recyclerView$d02 = this.f1979c.get(size2);
            if (recyclerView$d02.getItemId() == j && !recyclerView$d02.isAttachedToTransitionOverlay()) {
                if (i == recyclerView$d02.getItemViewType()) {
                    if (!z) {
                        this.f1979c.remove(size2);
                    }
                    return recyclerView$d02;
                } else if (!z) {
                    m5096A(size2);
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: m */
    RecyclerView$d0 m5071m(int i, boolean z) {
        View m4975e;
        int size = this.f1977a.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$d0 recyclerView$d0 = this.f1977a.get(i2);
            if (!recyclerView$d0.wasReturnedFromScrap() && recyclerView$d0.getLayoutPosition() == i && !recyclerView$d0.isInvalid() && (this.f1985i.m0.f1925h || !recyclerView$d0.isRemoved())) {
                recyclerView$d0.addFlags(32);
                return recyclerView$d0;
            }
        }
        if (z || (m4975e = this.f1985i.j.m4975e(i)) == null) {
            int size2 = this.f1979c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                RecyclerView$d0 recyclerView$d02 = this.f1979c.get(i3);
                if (!recyclerView$d02.isInvalid() && recyclerView$d02.getLayoutPosition() == i && !recyclerView$d02.isAttachedToTransitionOverlay()) {
                    if (!z) {
                        this.f1979c.remove(i3);
                    }
                    return recyclerView$d02;
                }
            }
            return null;
        }
        RecyclerView$d0 h0 = RecyclerView.h0(m4975e);
        this.f1985i.j.m4961s(m4975e);
        int m4967m = this.f1985i.j.m4967m(m4975e);
        if (m4967m != -1) {
            this.f1985i.j.m4976d(m4967m);
            m5093D(m4975e);
            h0.addFlags(8224);
            return h0;
        }
        throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + h0 + this.f1985i.Q());
    }

    /* renamed from: n */
    public View m5070n(int i) {
        return this.f1977a.get(i).itemView;
    }

    /* renamed from: o */
    public View m5069o(int i) {
        return m5068p(i, false);
    }

    /* renamed from: p */
    View m5068p(int i, boolean z) {
        return m5088I(i, z, Long.MAX_VALUE).itemView;
    }

    /* renamed from: s */
    void m5065s() {
        int size = this.f1979c.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$p recyclerView$p = (RecyclerView$p) this.f1979c.get(i).itemView.getLayoutParams();
            if (recyclerView$p != null) {
                recyclerView$p.f1969c = true;
            }
        }
    }

    /* renamed from: t */
    void m5064t() {
        int size = this.f1979c.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$d0 recyclerView$d0 = this.f1979c.get(i);
            if (recyclerView$d0 != null) {
                recyclerView$d0.addFlags(6);
                recyclerView$d0.addChangePayload(null);
            }
        }
        RecyclerView$g recyclerView$g = this.f1985i.q;
        if (recyclerView$g == null || !recyclerView$g.hasStableIds()) {
            m5058z();
        }
    }

    /* renamed from: u */
    void m5063u(int i, int i2) {
        int size = this.f1979c.size();
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$d0 recyclerView$d0 = this.f1979c.get(i3);
            if (recyclerView$d0 != null && recyclerView$d0.mPosition >= i) {
                recyclerView$d0.offsetPosition(i2, true);
            }
        }
    }

    /* renamed from: v */
    void m5062v(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i5 = 1;
            i3 = i;
            i4 = i2;
        }
        int size = this.f1979c.size();
        for (int i7 = 0; i7 < size; i7++) {
            RecyclerView$d0 recyclerView$d0 = this.f1979c.get(i7);
            if (recyclerView$d0 != null && (i6 = recyclerView$d0.mPosition) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    recyclerView$d0.offsetPosition(i2 - i, false);
                } else {
                    recyclerView$d0.offsetPosition(i5, false);
                }
            }
        }
    }

    /* renamed from: w */
    void m5061w(int i, int i2, boolean z) {
        for (int size = this.f1979c.size() - 1; size >= 0; size--) {
            RecyclerView$d0 recyclerView$d0 = this.f1979c.get(size);
            if (recyclerView$d0 != null) {
                int i3 = recyclerView$d0.mPosition;
                if (i3 >= i + i2) {
                    recyclerView$d0.offsetPosition(-i2, z);
                } else if (i3 >= i) {
                    recyclerView$d0.addFlags(8);
                    m5096A(size);
                }
            }
        }
    }

    /* renamed from: x */
    void m5060x(RecyclerView$g recyclerView$g, RecyclerView$g recyclerView$g2, boolean z) {
        m5081c();
        m5075i().m5101h(recyclerView$g, recyclerView$g2, z);
    }

    /* renamed from: y */
    public void m5059y(View view) {
        RecyclerView$d0 h0 = RecyclerView.h0(view);
        h0.mScrapContainer = null;
        h0.mInChangeScrap = false;
        h0.clearReturnedFromScrapFlag();
        m5094C(h0);
    }

    /* renamed from: z */
    void m5058z() {
        for (int size = this.f1979c.size() - 1; size >= 0; size--) {
            m5096A(size);
        }
        this.f1979c.clear();
        if (RecyclerView.H0) {
            this.f1985i.l0.b();
        }
    }
}

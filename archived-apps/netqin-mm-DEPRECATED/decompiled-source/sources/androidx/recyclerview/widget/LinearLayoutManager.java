package androidx.recyclerview.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import p012b.p122v.p123d.AbstractC1933h;
import p012b.p122v.p123d.C1938j;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.AbstractC0511o {

    /* renamed from: A */
    public int f2446A;

    /* renamed from: B */
    public int f2447B;

    /* renamed from: C */
    public boolean f2448C;

    /* renamed from: D */
    public SavedState f2449D;

    /* renamed from: E */
    public final C0488a f2450E;

    /* renamed from: F */
    public final C0489b f2451F;

    /* renamed from: G */
    public int f2452G;

    /* renamed from: H */
    public int[] f2453H;

    /* renamed from: s */
    public int f2454s;

    /* renamed from: t */
    public C0490c f2455t;

    /* renamed from: u */
    public AbstractC1933h f2456u;

    /* renamed from: v */
    public boolean f2457v;

    /* renamed from: w */
    public boolean f2458w;

    /* renamed from: x */
    public boolean f2459x;

    /* renamed from: y */
    public boolean f2460y;

    /* renamed from: z */
    public boolean f2461z;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0487a();

        /* renamed from: a */
        public int f2462a;

        /* renamed from: b */
        public int f2463b;

        /* renamed from: c */
        public boolean f2464c;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState$a.class */
        public static final class C0487a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.f2462a = parcel.readInt();
            this.f2463b = parcel.readInt();
            this.f2464c = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.f2462a = savedState.f2462a;
            this.f2463b = savedState.f2463b;
            this.f2464c = savedState.f2464c;
        }

        /* renamed from: a */
        public boolean m37543a() {
            return this.f2462a >= 0;
        }

        /* renamed from: b */
        public void m37542b() {
            this.f2462a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2462a);
            parcel.writeInt(this.f2463b);
            parcel.writeInt(this.f2464c ? 1 : 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static class C0488a {

        /* renamed from: a */
        public AbstractC1933h f2465a;

        /* renamed from: b */
        public int f2466b;

        /* renamed from: c */
        public int f2467c;

        /* renamed from: d */
        public boolean f2468d;

        /* renamed from: e */
        public boolean f2469e;

        public C0488a() {
            m37538b();
        }

        /* renamed from: a */
        public void m37541a() {
            this.f2467c = this.f2468d ? this.f2465a.mo31598b() : this.f2465a.mo31590f();
        }

        /* renamed from: a */
        public void m37540a(View view, int i) {
            if (this.f2468d) {
                this.f2467c = this.f2465a.mo31599a(view) + this.f2465a.m31603h();
            } else {
                this.f2467c = this.f2465a.mo31593d(view);
            }
            this.f2466b = i;
        }

        /* renamed from: a */
        public boolean m37539a(View view, RecyclerView.C0526y yVar) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.m37405c() && layoutParams.m37407a() >= 0 && layoutParams.m37407a() < yVar.m37201a();
        }

        /* renamed from: b */
        public void m37538b() {
            this.f2466b = -1;
            this.f2467c = Integer.MIN_VALUE;
            this.f2468d = false;
            this.f2469e = false;
        }

        /* renamed from: b */
        public void m37537b(View view, int i) {
            int h = this.f2465a.m31603h();
            if (h >= 0) {
                m37540a(view, i);
                return;
            }
            this.f2466b = i;
            if (this.f2468d) {
                int b = (this.f2465a.mo31598b() - h) - this.f2465a.mo31599a(view);
                this.f2467c = this.f2465a.mo31598b() - b;
                if (b > 0) {
                    int b2 = this.f2465a.mo31597b(view);
                    int i2 = this.f2467c;
                    int f = this.f2465a.mo31590f();
                    int min = (i2 - b2) - (f + Math.min(this.f2465a.mo31593d(view) - f, 0));
                    if (min < 0) {
                        this.f2467c += Math.min(b, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int d = this.f2465a.mo31593d(view);
            int f2 = d - this.f2465a.mo31590f();
            this.f2467c = d;
            if (f2 > 0) {
                int b3 = this.f2465a.mo31597b(view);
                int b4 = (this.f2465a.mo31598b() - Math.min(0, (this.f2465a.mo31598b() - h) - this.f2465a.mo31599a(view))) - (d + b3);
                if (b4 < 0) {
                    this.f2467c -= Math.min(f2, -b4);
                }
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2466b + ", mCoordinate=" + this.f2467c + ", mLayoutFromEnd=" + this.f2468d + ", mValid=" + this.f2469e + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static class C0489b {

        /* renamed from: a */
        public int f2470a;

        /* renamed from: b */
        public boolean f2471b;

        /* renamed from: c */
        public boolean f2472c;

        /* renamed from: d */
        public boolean f2473d;

        /* renamed from: a */
        public void m37536a() {
            this.f2470a = 0;
            this.f2471b = false;
            this.f2472c = false;
            this.f2473d = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static class C0490c {

        /* renamed from: b */
        public int f2475b;

        /* renamed from: c */
        public int f2476c;

        /* renamed from: d */
        public int f2477d;

        /* renamed from: e */
        public int f2478e;

        /* renamed from: f */
        public int f2479f;

        /* renamed from: g */
        public int f2480g;

        /* renamed from: j */
        public boolean f2483j;

        /* renamed from: k */
        public int f2484k;

        /* renamed from: m */
        public boolean f2486m;

        /* renamed from: a */
        public boolean f2474a = true;

        /* renamed from: h */
        public int f2481h = 0;

        /* renamed from: i */
        public int f2482i = 0;

        /* renamed from: l */
        public List<RecyclerView.AbstractC0495b0> f2485l = null;

        /* renamed from: a */
        public View m37533a(RecyclerView.C0522u uVar) {
            if (this.f2485l != null) {
                return m37531b();
            }
            View d = uVar.m37222d(this.f2477d);
            this.f2477d += this.f2478e;
            return d;
        }

        /* renamed from: a */
        public void m37535a() {
            m37534a((View) null);
        }

        /* renamed from: a */
        public void m37534a(View view) {
            View b = m37530b(view);
            if (b == null) {
                this.f2477d = -1;
            } else {
                this.f2477d = ((RecyclerView.LayoutParams) b.getLayoutParams()).m37407a();
            }
        }

        /* renamed from: a */
        public boolean m37532a(RecyclerView.C0526y yVar) {
            int i = this.f2477d;
            return i >= 0 && i < yVar.m37201a();
        }

        /* renamed from: b */
        public final View m37531b() {
            int size = this.f2485l.size();
            for (int i = 0; i < size; i++) {
                View view = this.f2485l.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.m37405c() && this.f2477d == layoutParams.m37407a()) {
                    m37534a(view);
                    return view;
                }
            }
            return null;
        }

        /* renamed from: b */
        public View m37530b(View view) {
            View view2;
            int size = this.f2485l.size();
            View view3 = null;
            int i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f2485l.get(i2).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                view3 = view3;
                i = i;
                if (view4 != view) {
                    if (layoutParams.m37405c()) {
                        view3 = view3;
                        i = i;
                    } else {
                        int a = (layoutParams.m37407a() - this.f2477d) * this.f2478e;
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

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.f2454s = 1;
        this.f2458w = false;
        this.f2459x = false;
        this.f2460y = false;
        this.f2461z = true;
        this.f2446A = -1;
        this.f2447B = Integer.MIN_VALUE;
        this.f2449D = null;
        this.f2450E = new C0488a();
        this.f2451F = new C0489b();
        this.f2452G = 2;
        this.f2453H = new int[2];
        m37548i(i);
        m37568a(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f2454s = 1;
        this.f2458w = false;
        this.f2459x = false;
        this.f2460y = false;
        this.f2461z = true;
        this.f2446A = -1;
        this.f2447B = Integer.MIN_VALUE;
        this.f2449D = null;
        this.f2450E = new C0488a();
        this.f2451F = new C0489b();
        this.f2452G = 2;
        this.f2453H = new int[2];
        RecyclerView.AbstractC0511o.C0515d a = RecyclerView.AbstractC0511o.m37354a(context, attributeSet, i, i2);
        m37548i(a.f2615a);
        m37568a(a.f2617c);
        mo37561b(a.f2618d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: A */
    public boolean mo37364A() {
        return (m37288i() == 1073741824 || m37272r() == 1073741824 || !m37271s()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: C */
    public boolean mo37193C() {
        return this.f2449D == null && this.f2457v == this.f2460y;
    }

    /* renamed from: D */
    public C0490c m37598D() {
        return new C0490c();
    }

    /* renamed from: E */
    public void m37597E() {
        if (this.f2455t == null) {
            this.f2455t = m37598D();
        }
    }

    /* renamed from: F */
    public final View m37596F() {
        return m37557e(0, m37299e());
    }

    /* renamed from: G */
    public int m37595G() {
        View a = m37581a(0, m37299e(), false, true);
        return a == null ? -1 : m37281l(a);
    }

    /* renamed from: H */
    public final View m37594H() {
        return m37557e(m37299e() - 1, -1);
    }

    /* renamed from: I */
    public int m37593I() {
        int i = -1;
        View a = m37581a(m37299e() - 1, -1, false, true);
        if (a != null) {
            i = m37281l(a);
        }
        return i;
    }

    /* renamed from: J */
    public final View m37592J() {
        return this.f2459x ? m37596F() : m37594H();
    }

    /* renamed from: K */
    public final View m37591K() {
        return this.f2459x ? m37594H() : m37596F();
    }

    /* renamed from: L */
    public final View m37590L() {
        return m37313c(this.f2459x ? 0 : m37299e() - 1);
    }

    /* renamed from: M */
    public final View m37589M() {
        return m37313c(this.f2459x ? m37299e() - 1 : 0);
    }

    /* renamed from: N */
    public int m37588N() {
        return this.f2454s;
    }

    /* renamed from: O */
    public boolean m37587O() {
        return this.f2460y;
    }

    /* renamed from: P */
    public boolean m37586P() {
        boolean z = true;
        if (m37286j() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: Q */
    public boolean m37585Q() {
        return this.f2461z;
    }

    /* renamed from: R */
    public boolean m37584R() {
        return this.f2456u.mo31594d() == 0 && this.f2456u.mo31601a() == 0;
    }

    /* renamed from: S */
    public final void m37583S() {
        if (this.f2454s == 1 || !m37586P()) {
            this.f2459x = this.f2458w;
        } else {
            this.f2459x = !this.f2458w;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public int mo37178a(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        if (this.f2454s == 1) {
            return 0;
        }
        return m37559c(i, uVar, yVar);
    }

    /* renamed from: a */
    public final int m37580a(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, boolean z) {
        int b;
        int b2 = this.f2456u.mo31598b() - i;
        if (b2 <= 0) {
            return 0;
        }
        int i2 = -m37559c(-b2, uVar, yVar);
        if (!z || (b = this.f2456u.mo31598b() - (i + i2)) <= 0) {
            return i2;
        }
        this.f2456u.mo31600a(b);
        return b + i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        if (r9.m37196d() == false) goto L_0x0092;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m37576a(androidx.recyclerview.widget.RecyclerView.C0522u r7, androidx.recyclerview.widget.LinearLayoutManager.C0490c r8, androidx.recyclerview.widget.RecyclerView.C0526y r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m37576a(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$y, boolean):int");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public int mo37160a(RecyclerView.C0526y yVar) {
        return m37549h(yVar);
    }

    /* renamed from: a */
    public View m37581a(int i, int i2, boolean z, boolean z2) {
        m37597E();
        int i3 = 320;
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.f2454s == 0 ? this.f2599e.m31546a(i, i2, i4, i3) : this.f2600f.m31546a(i, i2, i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public View mo37172a(View view, int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        int h;
        m37583S();
        if (m37299e() == 0 || (h = m37552h(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m37597E();
        m37582a(h, (int) (this.f2456u.mo31588g() * 0.33333334f), false, yVar);
        C0490c cVar = this.f2455t;
        cVar.f2480g = Integer.MIN_VALUE;
        cVar.f2474a = false;
        m37576a(uVar, cVar, yVar, true);
        View K = h == -1 ? m37591K() : m37592J();
        View M = h == -1 ? m37589M() : m37590L();
        if (!M.hasFocusable()) {
            return K;
        }
        if (K == null) {
            return null;
        }
        return M;
    }

    /* renamed from: a */
    public View mo37575a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, int i, int i2, int i3) {
        m37597E();
        int f = this.f2456u.mo31590f();
        int b = this.f2456u.mo31598b();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View c = m37313c(i);
            int l = m37281l(c);
            view = view;
            view2 = view2;
            if (l >= 0) {
                view = view;
                view2 = view2;
                if (l >= i3) {
                    continue;
                } else if (((RecyclerView.LayoutParams) c.getLayoutParams()).m37405c()) {
                    view = view;
                    view2 = view2;
                    if (view2 == null) {
                        view2 = c;
                        view = view;
                    }
                } else if (this.f2456u.mo31593d(c) < b && this.f2456u.mo31599a(c) >= f) {
                    return c;
                } else {
                    view = view;
                    view2 = view2;
                    if (view == null) {
                        view = c;
                        view2 = view2;
                    }
                }
            }
            i += i4;
        }
        if (view != null) {
            view2 = view;
        }
        return view2;
    }

    /* renamed from: a */
    public View m37567a(boolean z, boolean z2) {
        return this.f2459x ? m37581a(0, m37299e(), z, z2) : m37581a(m37299e() - 1, -1, z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37179a(int i, int i2, RecyclerView.C0526y yVar, RecyclerView.AbstractC0511o.AbstractC0514c cVar) {
        if (this.f2454s != 0) {
            i = i2;
        }
        if (m37299e() != 0 && i != 0) {
            m37597E();
            m37582a(i > 0 ? 1 : -1, Math.abs(i), true, yVar);
            mo37570a(yVar, this.f2455t, cVar);
        }
    }

    /* renamed from: a */
    public final void m37582a(int i, int i2, boolean z, RecyclerView.C0526y yVar) {
        int i3;
        this.f2455t.f2486m = m37584R();
        this.f2455t.f2479f = i;
        int[] iArr = this.f2453H;
        boolean z2 = false;
        iArr[0] = 0;
        int i4 = 1;
        int i5 = 1;
        iArr[1] = 0;
        m37569a(yVar, iArr);
        int max = Math.max(0, this.f2453H[0]);
        int max2 = Math.max(0, this.f2453H[1]);
        if (i == 1) {
            z2 = true;
        }
        this.f2455t.f2481h = z2 ? max2 : max;
        C0490c cVar = this.f2455t;
        if (!z2) {
            max = max2;
        }
        cVar.f2482i = max;
        if (z2) {
            this.f2455t.f2481h += this.f2456u.mo31596c();
            View L = m37590L();
            C0490c cVar2 = this.f2455t;
            if (this.f2459x) {
                i5 = -1;
            }
            cVar2.f2478e = i5;
            C0490c cVar3 = this.f2455t;
            int l = m37281l(L);
            C0490c cVar4 = this.f2455t;
            cVar3.f2477d = l + cVar4.f2478e;
            cVar4.f2475b = this.f2456u.mo31599a(L);
            i3 = this.f2456u.mo31599a(L) - this.f2456u.mo31598b();
        } else {
            View M = m37589M();
            this.f2455t.f2481h += this.f2456u.mo31590f();
            C0490c cVar5 = this.f2455t;
            if (!this.f2459x) {
                i4 = -1;
            }
            cVar5.f2478e = i4;
            C0490c cVar6 = this.f2455t;
            int l2 = m37281l(M);
            C0490c cVar7 = this.f2455t;
            cVar6.f2477d = l2 + cVar7.f2478e;
            cVar7.f2475b = this.f2456u.mo31593d(M);
            i3 = (-this.f2456u.mo31593d(M)) + this.f2456u.mo31590f();
        }
        C0490c cVar8 = this.f2455t;
        cVar8.f2476c = i2;
        if (z) {
            cVar8.f2476c = i2 - i3;
        }
        this.f2455t.f2480g = i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37356a(int i, RecyclerView.AbstractC0511o.AbstractC0514c cVar) {
        int i2;
        boolean z;
        SavedState savedState = this.f2449D;
        int i3 = -1;
        if (savedState == null || !savedState.m37543a()) {
            m37583S();
            boolean z2 = this.f2459x;
            int i4 = this.f2446A;
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
            SavedState savedState2 = this.f2449D;
            z = savedState2.f2464c;
            i2 = savedState2.f2462a;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.f2452G && i2 >= 0 && i2 < i; i5++) {
            cVar.mo31620a(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37174a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f2449D = (SavedState) parcelable;
            m37267y();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37168a(AccessibilityEvent accessibilityEvent) {
        super.mo37168a(accessibilityEvent);
        if (m37299e() > 0) {
            accessibilityEvent.setFromIndex(m37595G());
            accessibilityEvent.setToIndex(m37593I());
        }
    }

    /* renamed from: a */
    public final void m37579a(C0488a aVar) {
        m37554g(aVar.f2466b, aVar.f2467c);
    }

    /* renamed from: a */
    public final void m37578a(RecyclerView.C0522u uVar, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                while (true) {
                    i2--;
                    if (i2 >= i) {
                        m37355a(i2, uVar);
                    } else {
                        return;
                    }
                }
            } else {
                for (int i3 = i; i3 > i2; i3--) {
                    m37355a(i3, uVar);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m37577a(RecyclerView.C0522u uVar, C0490c cVar) {
        if (cVar.f2474a && !cVar.f2486m) {
            int i = cVar.f2480g;
            int i2 = cVar.f2482i;
            if (cVar.f2479f == -1) {
                m37564b(uVar, i, i2);
            } else {
                m37558c(uVar, i, i2);
            }
        }
    }

    /* renamed from: a */
    public void mo37573a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, C0488a aVar, int i) {
    }

    /* renamed from: a */
    public void mo37572a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, C0490c cVar, C0489b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View a = cVar.m37533a(uVar);
        if (a == null) {
            bVar.f2471b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) a.getLayoutParams();
        if (cVar.f2485l == null) {
            if (this.f2459x == (cVar.f2479f == -1)) {
                m37319b(a);
            } else {
                m37318b(a, 0);
            }
        } else {
            if (this.f2459x == (cVar.f2479f == -1)) {
                m37353a(a);
            } else {
                m37352a(a, 0);
            }
        }
        m37351a(a, 0, 0);
        bVar.f2470a = this.f2456u.mo31597b(a);
        if (this.f2454s == 1) {
            if (m37586P()) {
                i6 = m37273q() - m37276o();
                i5 = i6 - this.f2456u.mo31595c(a);
            } else {
                i5 = m37278n();
                i6 = this.f2456u.mo31595c(a) + i5;
            }
            if (cVar.f2479f == -1) {
                int i7 = cVar.f2475b;
                i = i7;
                i4 = i7 - bVar.f2470a;
                i2 = i5;
                i3 = i6;
            } else {
                int i8 = cVar.f2475b;
                i = bVar.f2470a + i8;
                i2 = i5;
                i4 = i8;
                i3 = i6;
            }
        } else {
            int p = m37274p();
            int c = this.f2456u.mo31595c(a) + p;
            if (cVar.f2479f == -1) {
                int i9 = cVar.f2475b;
                i3 = i9;
                i = c;
                i2 = i9 - bVar.f2470a;
                i4 = p;
            } else {
                int i10 = cVar.f2475b;
                i3 = bVar.f2470a + i10;
                i = c;
                i4 = p;
                i2 = i10;
            }
        }
        m37350a(a, i2, i4, i3, i);
        if (layoutParams.m37405c() || layoutParams.m37406b()) {
            bVar.f2472c = true;
        }
        bVar.f2473d = a.hasFocusable();
    }

    /* renamed from: a */
    public void mo37570a(RecyclerView.C0526y yVar, C0490c cVar, RecyclerView.AbstractC0511o.AbstractC0514c cVar2) {
        int i = cVar.f2477d;
        if (i >= 0 && i < yVar.m37201a()) {
            cVar2.mo31620a(i, Math.max(0, cVar.f2480g));
        }
    }

    /* renamed from: a */
    public void m37569a(RecyclerView.C0526y yVar, int[] iArr) {
        int i;
        int i2;
        int k = m37544k(yVar);
        if (this.f2455t.f2479f == -1) {
            i2 = 0;
            i = k;
        } else {
            i = 0;
            i2 = k;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37152a(String str) {
        if (this.f2449D == null) {
            super.mo37152a(str);
        }
    }

    /* renamed from: a */
    public void m37568a(boolean z) {
        mo37152a((String) null);
        if (z != this.f2458w) {
            this.f2458w = z;
            m37267y();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public boolean mo37180a() {
        return this.f2454s == 0;
    }

    /* renamed from: a */
    public final boolean m37574a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, C0488a aVar) {
        boolean z = false;
        if (m37299e() == 0) {
            return false;
        }
        View g = m37293g();
        if (g != null && aVar.m37539a(g, yVar)) {
            aVar.m37537b(g, m37281l(g));
            return true;
        } else if (this.f2457v != this.f2460y) {
            return false;
        } else {
            View h = aVar.f2468d ? m37550h(uVar, yVar) : m37547i(uVar, yVar);
            if (h == null) {
                return false;
            }
            aVar.m37540a(h, m37281l(h));
            if (yVar.m37196d() || !mo37193C()) {
                return true;
            }
            if (this.f2456u.mo31593d(h) >= this.f2456u.mo31598b() || this.f2456u.mo31599a(h) < this.f2456u.mo31590f()) {
                z = true;
            }
            if (!z) {
                return true;
            }
            aVar.f2467c = aVar.f2468d ? this.f2456u.mo31598b() : this.f2456u.mo31590f();
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m37571a(RecyclerView.C0526y yVar, C0488a aVar) {
        int i;
        boolean z = false;
        if (yVar.m37196d() || (i = this.f2446A) == -1) {
            return false;
        }
        if (i < 0 || i >= yVar.m37201a()) {
            this.f2446A = -1;
            this.f2447B = Integer.MIN_VALUE;
            return false;
        }
        aVar.f2466b = this.f2446A;
        SavedState savedState = this.f2449D;
        if (savedState != null && savedState.m37543a()) {
            boolean z2 = this.f2449D.f2464c;
            aVar.f2468d = z2;
            if (z2) {
                aVar.f2467c = this.f2456u.mo31598b() - this.f2449D.f2463b;
                return true;
            }
            aVar.f2467c = this.f2456u.mo31590f() + this.f2449D.f2463b;
            return true;
        } else if (this.f2447B == Integer.MIN_VALUE) {
            View b = mo37322b(this.f2446A);
            if (b == null) {
                if (m37299e() > 0) {
                    if ((this.f2446A < m37281l(m37313c(0))) == this.f2459x) {
                        z = true;
                    }
                    aVar.f2468d = z;
                }
                aVar.m37541a();
                return true;
            } else if (this.f2456u.mo31597b(b) > this.f2456u.mo31588g()) {
                aVar.m37541a();
                return true;
            } else if (this.f2456u.mo31593d(b) - this.f2456u.mo31590f() < 0) {
                aVar.f2467c = this.f2456u.mo31590f();
                aVar.f2468d = false;
                return true;
            } else if (this.f2456u.mo31598b() - this.f2456u.mo31599a(b) < 0) {
                aVar.f2467c = this.f2456u.mo31598b();
                aVar.f2468d = true;
                return true;
            } else {
                aVar.f2467c = aVar.f2468d ? this.f2456u.mo31599a(b) + this.f2456u.m31603h() : this.f2456u.mo31593d(b);
                return true;
            }
        } else {
            boolean z3 = this.f2459x;
            aVar.f2468d = z3;
            if (z3) {
                aVar.f2467c = this.f2456u.mo31598b() - this.f2447B;
                return true;
            }
            aVar.f2467c = this.f2456u.mo31590f() + this.f2447B;
            return true;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37149b(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        if (this.f2454s == 0) {
            return 0;
        }
        return m37559c(i, uVar, yVar);
    }

    /* renamed from: b */
    public final int m37566b(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, boolean z) {
        int f = i - this.f2456u.mo31590f();
        if (f <= 0) {
            return 0;
        }
        int i2 = -m37559c(f, uVar, yVar);
        int i3 = i2;
        if (z) {
            int f2 = (i + i2) - this.f2456u.mo31590f();
            i3 = i2;
            if (f2 > 0) {
                this.f2456u.mo31600a(-f2);
                i3 = i2 - f2;
            }
        }
        return i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37144b(RecyclerView.C0526y yVar) {
        return m37546i(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public View mo37322b(int i) {
        int e = m37299e();
        if (e == 0) {
            return null;
        }
        int l = i - m37281l(m37313c(0));
        if (l >= 0 && l < e) {
            View c = m37313c(l);
            if (m37281l(c) == i) {
                return c;
            }
        }
        return super.mo37322b(i);
    }

    /* renamed from: b */
    public View m37560b(boolean z, boolean z2) {
        return this.f2459x ? m37581a(m37299e() - 1, -1, z, z2) : m37581a(0, m37299e(), z, z2);
    }

    /* renamed from: b */
    public final void m37565b(C0488a aVar) {
        m37551h(aVar.f2466b, aVar.f2467c);
    }

    /* renamed from: b */
    public final void m37564b(RecyclerView.C0522u uVar, int i, int i2) {
        int e = m37299e();
        if (i >= 0) {
            int a = (this.f2456u.mo31601a() - i) + i2;
            if (this.f2459x) {
                for (int i3 = 0; i3 < e; i3++) {
                    View c = m37313c(i3);
                    if (this.f2456u.mo31593d(c) < a || this.f2456u.mo31589f(c) < a) {
                        m37578a(uVar, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = e - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View c2 = m37313c(i5);
                if (this.f2456u.mo31593d(c2) < a || this.f2456u.mo31589f(c2) < a) {
                    m37578a(uVar, i4, i5);
                    return;
                }
            }
        }
    }

    /* renamed from: b */
    public final void m37563b(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, int i, int i2) {
        if (yVar.m37195e() && m37299e() != 0 && !yVar.m37196d() && mo37193C()) {
            List<RecyclerView.AbstractC0495b0> f = uVar.m37217f();
            int size = f.size();
            int l = m37281l(m37313c(0));
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                RecyclerView.AbstractC0495b0 b0Var = f.get(i5);
                if (!b0Var.isRemoved()) {
                    char c = 1;
                    if ((b0Var.getLayoutPosition() < l) != this.f2459x) {
                        c = 65535;
                    }
                    if (c == 65535) {
                        i3 += this.f2456u.mo31597b(b0Var.itemView);
                    } else {
                        i4 += this.f2456u.mo31597b(b0Var.itemView);
                    }
                }
            }
            this.f2455t.f2485l = f;
            if (i3 > 0) {
                m37551h(m37281l(m37589M()), i);
                C0490c cVar = this.f2455t;
                cVar.f2481h = i3;
                cVar.f2476c = 0;
                cVar.m37535a();
                m37576a(uVar, this.f2455t, yVar, false);
            }
            if (i4 > 0) {
                m37554g(m37281l(m37590L()), i2);
                C0490c cVar2 = this.f2455t;
                cVar2.f2481h = i4;
                cVar2.f2476c = 0;
                cVar2.m37535a();
                m37576a(uVar, this.f2455t, yVar, false);
            }
            this.f2455t.f2485l = null;
        }
    }

    /* renamed from: b */
    public final void m37562b(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, C0488a aVar) {
        if (!m37571a(yVar, aVar) && !m37574a(uVar, yVar, aVar)) {
            aVar.m37541a();
            aVar.f2466b = this.f2460y ? yVar.m37201a() - 1 : 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public void mo37141b(RecyclerView recyclerView, RecyclerView.C0522u uVar) {
        super.mo37141b(recyclerView, uVar);
        if (this.f2448C) {
            m37315b(uVar);
            uVar.m37249a();
        }
    }

    /* renamed from: b */
    public void mo37561b(boolean z) {
        mo37152a((String) null);
        if (this.f2460y != z) {
            this.f2460y = z;
            m37267y();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public boolean mo37150b() {
        boolean z = true;
        if (this.f2454s != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public int m37559c(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        if (m37299e() == 0 || i == 0) {
            return 0;
        }
        m37597E();
        this.f2455t.f2474a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m37582a(i2, abs, true, yVar);
        C0490c cVar = this.f2455t;
        int a = cVar.f2480g + m37576a(uVar, cVar, yVar, false);
        if (a < 0) {
            return 0;
        }
        if (abs > a) {
            i = i2 * a;
        }
        this.f2456u.mo31600a(-i);
        this.f2455t.f2484k = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public int mo37135c(RecyclerView.C0526y yVar) {
        return m37545j(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public RecyclerView.LayoutParams mo37139c() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    /* renamed from: c */
    public final void m37558c(RecyclerView.C0522u uVar, int i, int i2) {
        if (i >= 0) {
            int i3 = i - i2;
            int e = m37299e();
            if (this.f2459x) {
                int i4 = e - 1;
                for (int i5 = i4; i5 >= 0; i5--) {
                    View c = m37313c(i5);
                    if (this.f2456u.mo31599a(c) > i3 || this.f2456u.mo31591e(c) > i3) {
                        m37578a(uVar, i4, i5);
                        return;
                    }
                }
                return;
            }
            for (int i6 = 0; i6 < e; i6++) {
                View c2 = m37313c(i6);
                if (this.f2456u.mo31599a(c2) > i3 || this.f2456u.mo31591e(c2) > i3) {
                    m37578a(uVar, 0, i6);
                    return;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: d */
    public int mo37129d(RecyclerView.C0526y yVar) {
        return m37549h(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: e */
    public int mo37124e(RecyclerView.C0526y yVar) {
        return m37546i(yVar);
    }

    /* renamed from: e */
    public View m37557e(int i, int i2) {
        int i3;
        int i4;
        m37597E();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return m37313c(i);
        }
        if (this.f2456u.mo31593d(m37313c(i)) < this.f2456u.mo31590f()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        return this.f2454s == 0 ? this.f2599e.m31546a(i, i2, i4, i3) : this.f2600f.m31546a(i, i2, i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: e */
    public void mo37125e(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = -1;
        if (!(this.f2449D == null && this.f2446A == -1) && yVar.m37201a() == 0) {
            m37315b(uVar);
            return;
        }
        SavedState savedState = this.f2449D;
        if (savedState != null && savedState.m37543a()) {
            this.f2446A = this.f2449D.f2462a;
        }
        m37597E();
        this.f2455t.f2474a = false;
        m37583S();
        View g = m37293g();
        if (!this.f2450E.f2469e || this.f2446A != -1 || this.f2449D != null) {
            this.f2450E.m37538b();
            C0488a aVar = this.f2450E;
            aVar.f2468d = this.f2459x ^ this.f2460y;
            m37562b(uVar, yVar, aVar);
            this.f2450E.f2469e = true;
        } else if (g != null && (this.f2456u.mo31593d(g) >= this.f2456u.mo31598b() || this.f2456u.mo31599a(g) <= this.f2456u.mo31590f())) {
            this.f2450E.m37537b(g, m37281l(g));
        }
        C0490c cVar = this.f2455t;
        cVar.f2479f = cVar.f2484k >= 0 ? 1 : -1;
        int[] iArr = this.f2453H;
        iArr[0] = 0;
        iArr[1] = 0;
        m37569a(yVar, iArr);
        int max = Math.max(0, this.f2453H[0]) + this.f2456u.mo31590f();
        int max2 = Math.max(0, this.f2453H[1]) + this.f2456u.mo31596c();
        int i9 = max;
        int i10 = max2;
        if (yVar.m37196d()) {
            int i11 = this.f2446A;
            i9 = max;
            i10 = max2;
            if (i11 != -1) {
                i9 = max;
                i10 = max2;
                if (this.f2447B != Integer.MIN_VALUE) {
                    View b = mo37322b(i11);
                    i9 = max;
                    i10 = max2;
                    if (b != null) {
                        if (this.f2459x) {
                            i6 = this.f2456u.mo31598b() - this.f2456u.mo31599a(b);
                            i7 = this.f2447B;
                        } else {
                            i7 = this.f2456u.mo31593d(b) - this.f2456u.mo31590f();
                            i6 = this.f2447B;
                        }
                        int i12 = i6 - i7;
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
        if (!this.f2450E.f2468d ? !this.f2459x : this.f2459x) {
            i8 = 1;
        }
        mo37573a(uVar, yVar, this.f2450E, i8);
        m37339a(uVar);
        this.f2455t.f2486m = m37584R();
        this.f2455t.f2483j = yVar.m37196d();
        this.f2455t.f2482i = 0;
        C0488a aVar2 = this.f2450E;
        if (aVar2.f2468d) {
            m37565b(aVar2);
            C0490c cVar2 = this.f2455t;
            cVar2.f2481h = i9;
            m37576a(uVar, cVar2, yVar, false);
            C0490c cVar3 = this.f2455t;
            int i13 = cVar3.f2475b;
            int i14 = cVar3.f2477d;
            int i15 = cVar3.f2476c;
            int i16 = i10;
            if (i15 > 0) {
                i16 = i10 + i15;
            }
            m37579a(this.f2450E);
            C0490c cVar4 = this.f2455t;
            cVar4.f2481h = i16;
            cVar4.f2477d += cVar4.f2478e;
            m37576a(uVar, cVar4, yVar, false);
            C0490c cVar5 = this.f2455t;
            int i17 = cVar5.f2475b;
            int i18 = cVar5.f2476c;
            i = i13;
            i2 = i17;
            if (i18 > 0) {
                m37551h(i14, i13);
                C0490c cVar6 = this.f2455t;
                cVar6.f2481h = i18;
                m37576a(uVar, cVar6, yVar, false);
                i = this.f2455t.f2475b;
                i2 = i17;
            }
        } else {
            m37579a(aVar2);
            C0490c cVar7 = this.f2455t;
            cVar7.f2481h = i10;
            m37576a(uVar, cVar7, yVar, false);
            C0490c cVar8 = this.f2455t;
            int i19 = cVar8.f2475b;
            int i20 = cVar8.f2477d;
            int i21 = cVar8.f2476c;
            int i22 = i9;
            if (i21 > 0) {
                i22 = i9 + i21;
            }
            m37565b(this.f2450E);
            C0490c cVar9 = this.f2455t;
            cVar9.f2481h = i22;
            cVar9.f2477d += cVar9.f2478e;
            m37576a(uVar, cVar9, yVar, false);
            C0490c cVar10 = this.f2455t;
            int i23 = cVar10.f2475b;
            int i24 = cVar10.f2476c;
            i = i23;
            i2 = i19;
            if (i24 > 0) {
                m37554g(i20, i19);
                C0490c cVar11 = this.f2455t;
                cVar11.f2481h = i24;
                m37576a(uVar, cVar11, yVar, false);
                i2 = this.f2455t.f2475b;
                i = i23;
            }
        }
        int i25 = i;
        int i26 = i2;
        if (m37299e() > 0) {
            if (this.f2459x ^ this.f2460y) {
                int a = m37580a(i2, uVar, yVar, true);
                i5 = i + a;
                i4 = i2 + a;
                i3 = m37566b(i5, uVar, yVar, false);
            } else {
                int b2 = m37566b(i, uVar, yVar, true);
                i5 = i + b2;
                i4 = i2 + b2;
                i3 = m37580a(i4, uVar, yVar, false);
            }
            i25 = i5 + i3;
            i26 = i4 + i3;
        }
        m37563b(uVar, yVar, i25, i26);
        if (!yVar.m37196d()) {
            this.f2456u.m31602i();
        } else {
            this.f2450E.m37538b();
        }
        this.f2457v = this.f2460y;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: f */
    public int mo37122f(RecyclerView.C0526y yVar) {
        return m37545j(yVar);
    }

    /* renamed from: f */
    public final View m37555f(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return mo37575a(uVar, yVar, 0, m37299e(), yVar.m37201a());
    }

    /* renamed from: f */
    public void m37556f(int i, int i2) {
        this.f2446A = i;
        this.f2447B = i2;
        SavedState savedState = this.f2449D;
        if (savedState != null) {
            savedState.m37542b();
        }
        m37267y();
    }

    /* renamed from: g */
    public final View m37553g(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return mo37575a(uVar, yVar, m37299e() - 1, -1, yVar.m37201a());
    }

    /* renamed from: g */
    public final void m37554g(int i, int i2) {
        this.f2455t.f2476c = this.f2456u.mo31598b() - i2;
        this.f2455t.f2478e = this.f2459x ? -1 : 1;
        C0490c cVar = this.f2455t;
        cVar.f2477d = i;
        cVar.f2479f = 1;
        cVar.f2475b = i2;
        cVar.f2480g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: g */
    public void mo37121g(RecyclerView.C0526y yVar) {
        super.mo37121g(yVar);
        this.f2449D = null;
        this.f2446A = -1;
        this.f2447B = Integer.MIN_VALUE;
        this.f2450E.m37538b();
    }

    /* renamed from: h */
    public int m37552h(int i) {
        int i2 = -1;
        int i3 = 1;
        int i4 = 1;
        if (i == 1) {
            return (this.f2454s != 1 && m37586P()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.f2454s != 1 && m37586P()) ? -1 : 1;
        }
        if (i == 17) {
            if (this.f2454s != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f2454s != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            if (this.f2454s != 0) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            if (this.f2454s != 1) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        }
    }

    /* renamed from: h */
    public final int m37549h(RecyclerView.C0526y yVar) {
        if (m37299e() == 0) {
            return 0;
        }
        m37597E();
        return C1938j.m31574a(yVar, this.f2456u, m37560b(!this.f2461z, true), m37567a(!this.f2461z, true), this, this.f2461z);
    }

    /* renamed from: h */
    public final View m37550h(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return this.f2459x ? m37555f(uVar, yVar) : m37553g(uVar, yVar);
    }

    /* renamed from: h */
    public final void m37551h(int i, int i2) {
        this.f2455t.f2476c = i2 - this.f2456u.mo31590f();
        C0490c cVar = this.f2455t;
        cVar.f2477d = i;
        cVar.f2478e = this.f2459x ? 1 : -1;
        C0490c cVar2 = this.f2455t;
        cVar2.f2479f = -1;
        cVar2.f2475b = i2;
        cVar2.f2480g = Integer.MIN_VALUE;
    }

    /* renamed from: i */
    public final int m37546i(RecyclerView.C0526y yVar) {
        if (m37299e() == 0) {
            return 0;
        }
        m37597E();
        return C1938j.m31573a(yVar, this.f2456u, m37560b(!this.f2461z, true), m37567a(!this.f2461z, true), this, this.f2461z, this.f2459x);
    }

    /* renamed from: i */
    public final View m37547i(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        return this.f2459x ? m37553g(uVar, yVar) : m37555f(uVar, yVar);
    }

    /* renamed from: i */
    public void m37548i(int i) {
        if (i == 0 || i == 1) {
            mo37152a((String) null);
            if (i != this.f2454s || this.f2456u == null) {
                AbstractC1933h a = AbstractC1933h.m31605a(this, i);
                this.f2456u = a;
                this.f2450E.f2465a = a;
                this.f2454s = i;
                m37267y();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation:" + i);
    }

    /* renamed from: j */
    public final int m37545j(RecyclerView.C0526y yVar) {
        if (m37299e() == 0) {
            return 0;
        }
        m37597E();
        return C1938j.m31572b(yVar, this.f2456u, m37560b(!this.f2461z, true), m37567a(!this.f2461z, true), this, this.f2461z);
    }

    @Deprecated
    /* renamed from: k */
    public int m37544k(RecyclerView.C0526y yVar) {
        if (yVar.m37197c()) {
            return this.f2456u.mo31588g();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: u */
    public boolean mo37102u() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: x */
    public Parcelable mo37099x() {
        if (this.f2449D != null) {
            return new SavedState(this.f2449D);
        }
        SavedState savedState = new SavedState();
        if (m37299e() > 0) {
            m37597E();
            boolean z = this.f2457v ^ this.f2459x;
            savedState.f2464c = z;
            if (z) {
                View L = m37590L();
                savedState.f2463b = this.f2456u.mo31598b() - this.f2456u.mo31599a(L);
                savedState.f2462a = m37281l(L);
            } else {
                View M = m37589M();
                savedState.f2462a = m37281l(M);
                savedState.f2463b = this.f2456u.mo31593d(M) - this.f2456u.mo31590f();
            }
        } else {
            savedState.m37542b();
        }
        return savedState;
    }
}

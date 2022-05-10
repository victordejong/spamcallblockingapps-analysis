package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import p012b.p042i.p054p.p055d0.C0970c;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: K */
    public int[] f2433K;

    /* renamed from: L */
    public View[] f2434L;

    /* renamed from: Q */
    public boolean f2439Q;

    /* renamed from: I */
    public boolean f2431I = false;

    /* renamed from: J */
    public int f2432J = -1;

    /* renamed from: M */
    public final SparseIntArray f2435M = new SparseIntArray();

    /* renamed from: N */
    public final SparseIntArray f2436N = new SparseIntArray();

    /* renamed from: O */
    public AbstractC0486b f2437O = new C0485a();

    /* renamed from: P */
    public final Rect f2438P = new Rect();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e */
        public int f2440e = -1;

        /* renamed from: f */
        public int f2441f = 0;

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
        public int m37608e() {
            return this.f2440e;
        }

        /* renamed from: f */
        public int m37607f() {
            return this.f2441f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class C0485a extends AbstractC0486b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0486b
        /* renamed from: a */
        public int mo37605a(int i) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0486b
        /* renamed from: d */
        public int mo37599d(int i, int i2) {
            return i % i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static abstract class AbstractC0486b {

        /* renamed from: a */
        public final SparseIntArray f2442a = new SparseIntArray();

        /* renamed from: b */
        public final SparseIntArray f2443b = new SparseIntArray();

        /* renamed from: c */
        public boolean f2444c = false;

        /* renamed from: d */
        public boolean f2445d = false;

        /* renamed from: a */
        public static int m37603a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        /* renamed from: a */
        public abstract int mo37605a(int i);

        /* renamed from: a */
        public int m37604a(int i, int i2) {
            if (!this.f2445d) {
                return m37600c(i, i2);
            }
            int i3 = this.f2443b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int c = m37600c(i, i2);
            this.f2443b.put(i, c);
            return c;
        }

        /* renamed from: a */
        public void m37606a() {
            this.f2443b.clear();
        }

        /* renamed from: b */
        public int m37601b(int i, int i2) {
            if (!this.f2444c) {
                return mo37599d(i, i2);
            }
            int i3 = this.f2442a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int d = mo37599d(i, i2);
            this.f2442a.put(i, d);
            return d;
        }

        /* renamed from: b */
        public void m37602b() {
            this.f2442a.clear();
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b7  */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m37600c(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 190
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.AbstractC0486b.m37600c(int, int):int");
        }

        /* renamed from: d */
        public abstract int mo37599d(int i, int i2);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m37611k(RecyclerView.AbstractC0511o.m37354a(context, attributeSet, i, i2).f2616b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r4[r4.length - 1] != r6) goto L_0x001b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m37618a(int[] r4, int r5, int r6) {
        /*
            r0 = 1
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001b
            r0 = r4
            int r0 = r0.length
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L_0x001b
            r0 = r4
            r8 = r0
            r0 = r4
            r1 = r4
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r1 = r6
            if (r0 == r1) goto L_0x0022
        L_0x001b:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            int[] r0 = new int[r0]
            r8 = r0
        L_0x0022:
            r0 = 0
            r9 = r0
            r0 = r8
            r1 = 0
            r2 = 0
            r0[r1] = r2
            r0 = r6
            r1 = r5
            int r0 = r0 / r1
            r10 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 % r1
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r9
            r6 = r0
        L_0x003a:
            r0 = r7
            r1 = r5
            if (r0 > r1) goto L_0x0074
            r0 = r6
            r1 = r11
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x005d
            r0 = r5
            r1 = r6
            int r0 = r0 - r1
            r1 = r11
            if (r0 >= r1) goto L_0x005d
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 - r1
            r6 = r0
            goto L_0x0061
        L_0x005d:
            r0 = r10
            r9 = r0
        L_0x0061:
            r0 = r12
            r1 = r9
            int r0 = r0 + r1
            r12 = r0
            r0 = r8
            r1 = r7
            r2 = r12
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x003a
        L_0x0074:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m37618a(int[], int, int):int[]");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: C */
    public boolean mo37193C() {
        return this.f2449D == null && !this.f2431I;
    }

    /* renamed from: T */
    public final void m37626T() {
        int e = m37299e();
        for (int i = 0; i < e; i++) {
            LayoutParams layoutParams = (LayoutParams) m37313c(i).getLayoutParams();
            int a = layoutParams.m37407a();
            this.f2435M.put(a, layoutParams.m37607f());
            this.f2436N.put(a, layoutParams.m37608e());
        }
    }

    /* renamed from: U */
    public final void m37625U() {
        this.f2435M.clear();
        this.f2436N.clear();
    }

    /* renamed from: V */
    public final void m37624V() {
        View[] viewArr = this.f2434L;
        if (viewArr == null || viewArr.length != this.f2432J) {
            this.f2434L = new View[this.f2432J];
        }
    }

    /* renamed from: W */
    public final void m37623W() {
        int i;
        int i2;
        if (m37588N() == 1) {
            i2 = m37273q() - m37276o();
            i = m37278n();
        } else {
            i2 = m37290h() - m37280m();
            i = m37274p();
        }
        m37612j(i2 - i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public int mo37178a(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        m37623W();
        m37624V();
        return super.mo37178a(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public int mo37165a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        if (this.f2454s == 1) {
            return this.f2432J;
        }
        if (yVar.m37201a() < 1) {
            return 0;
        }
        return m37620a(uVar, yVar, yVar.m37201a() - 1) + 1;
    }

    /* renamed from: a */
    public final int m37620a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, int i) {
        if (!yVar.m37196d()) {
            return this.f2437O.m37604a(i, this.f2432J);
        }
        int a = uVar.m37248a(i);
        if (a != -1) {
            return this.f2437O.m37604a(a, this.f2432J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0188, code lost:
        if (r19 == (r0 > r23)) goto L_0x0140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cd, code lost:
        if (r19 == r22) goto L_0x0140;
     */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x022a A[SYNTHETIC] */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo37172a(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.C0522u r9, androidx.recyclerview.widget.RecyclerView.C0526y r10) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo37172a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
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
                } else if (m37616b(uVar, yVar, l) != 0) {
                    view = view;
                    view2 = view2;
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
        if (view == null) {
            view = view2;
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public RecyclerView.LayoutParams mo37176a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public RecyclerView.LayoutParams mo37169a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: a */
    public final void m37622a(float f, int i) {
        m37612j(Math.max(Math.round(f * this.f2432J), i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37175a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f2433K == null) {
            super.mo37175a(rect, i, i2);
        }
        int n = m37278n() + m37276o();
        int p = m37274p() + m37280m();
        if (this.f2454s == 1) {
            i4 = RecyclerView.AbstractC0511o.m37360a(i2, rect.height() + p, m37284k());
            int[] iArr = this.f2433K;
            i3 = RecyclerView.AbstractC0511o.m37360a(i, iArr[iArr.length - 1] + n, m37282l());
        } else {
            i3 = RecyclerView.AbstractC0511o.m37360a(i, rect.width() + n, m37282l());
            int[] iArr2 = this.f2433K;
            i4 = RecyclerView.AbstractC0511o.m37360a(i2, iArr2[iArr2.length - 1] + p, m37284k());
        }
        m37312c(i3, i4);
    }

    /* renamed from: a */
    public final void m37621a(View view, int i, int i2, boolean z) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? m37317b(view, i, i2, layoutParams) : m37349a(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: a */
    public final void m37619a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, int i, boolean z) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = -1;
        if (z) {
            i3 = 0;
            i2 = 1;
            i5 = i;
        } else {
            i3 = i - 1;
            i2 = -1;
        }
        while (i3 != i5) {
            View view = this.f2434L[i3];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int c = m37614c(uVar, yVar, m37281l(view));
            layoutParams.f2441f = c;
            layoutParams.f2440e = i4;
            i4 += c;
            i3 += i2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37164a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, View view, C0970c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m37343a(view, cVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int a = m37620a(uVar, yVar, layoutParams2.m37407a());
        if (this.f2454s == 0) {
            cVar.m35362b(C0970c.C0973c.m35313a(layoutParams2.m37608e(), layoutParams2.m37607f(), a, 1, false, false));
        } else {
            cVar.m35362b(C0970c.C0973c.m35313a(a, 1, layoutParams2.m37608e(), layoutParams2.m37607f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo37573a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, LinearLayoutManager.C0488a aVar, int i) {
        super.mo37573a(uVar, yVar, aVar, i);
        m37623W();
        if (yVar.m37201a() > 0 && !yVar.m37196d()) {
            m37615b(uVar, yVar, aVar, i);
        }
        m37624V();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo37572a(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, LinearLayoutManager.C0490c cVar, LinearLayoutManager.C0489b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        View a;
        int e = this.f2456u.mo31592e();
        boolean z = e != 1073741824;
        int i8 = m37299e() > 0 ? this.f2433K[this.f2432J] : 0;
        if (z) {
            m37623W();
        }
        boolean z2 = cVar.f2478e == 1;
        int i9 = this.f2432J;
        if (!z2) {
            i9 = m37616b(uVar, yVar, cVar.f2477d) + m37614c(uVar, yVar, cVar.f2477d);
        }
        int i10 = 0;
        while (i10 < this.f2432J && cVar.m37532a(yVar) && i9 > 0) {
            int i11 = cVar.f2477d;
            int c = m37614c(uVar, yVar, i11);
            if (c <= this.f2432J) {
                i9 -= c;
                if (i9 < 0 || (a = cVar.m37533a(uVar)) == null) {
                    break;
                }
                this.f2434L[i10] = a;
                i10++;
            } else {
                throw new IllegalArgumentException("Item at position " + i11 + " requires " + c + " spans but GridLayoutManager has only " + this.f2432J + " spans.");
            }
        }
        if (i10 == 0) {
            bVar.f2471b = true;
            return;
        }
        float f = 0.0f;
        m37619a(uVar, yVar, i10, z2);
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            View view = this.f2434L[i13];
            if (cVar.f2485l == null) {
                if (z2) {
                    m37319b(view);
                } else {
                    m37318b(view, 0);
                }
            } else if (z2) {
                m37353a(view);
            } else {
                m37352a(view, 0);
            }
            m37345a(view, this.f2438P);
            m37617b(view, e, false);
            int b = this.f2456u.mo31597b(view);
            i12 = i12;
            if (b > i12) {
                i12 = b;
            }
            float c2 = (this.f2456u.mo31595c(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).f2441f;
            f = f;
            if (c2 > f) {
                f = c2;
            }
        }
        int i14 = i12;
        if (z) {
            m37622a(f, i8);
            int i15 = 0;
            int i16 = 0;
            while (true) {
                i14 = i16;
                if (i15 >= i10) {
                    break;
                }
                View view2 = this.f2434L[i15];
                m37617b(view2, 1073741824, true);
                int b2 = this.f2456u.mo31597b(view2);
                i16 = i16;
                if (b2 > i16) {
                    i16 = b2;
                }
                i15++;
            }
        }
        for (int i17 = 0; i17 < i10; i17++) {
            View view3 = this.f2434L[i17];
            if (this.f2456u.mo31597b(view3) != i14) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.f2570b;
                int i18 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int i19 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i20 = m37613i(layoutParams.f2440e, layoutParams.f2441f);
                if (this.f2454s == 1) {
                    i6 = RecyclerView.AbstractC0511o.m37359a(i20, 1073741824, i19, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
                    i7 = View.MeasureSpec.makeMeasureSpec(i14 - i18, 1073741824);
                } else {
                    i6 = View.MeasureSpec.makeMeasureSpec(i14 - i19, 1073741824);
                    i7 = RecyclerView.AbstractC0511o.m37359a(i20, 1073741824, i18, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
                }
                m37621a(view3, i6, i7, true);
            }
        }
        int i21 = 0;
        bVar.f2470a = i14;
        if (this.f2454s == 1) {
            if (cVar.f2479f == -1) {
                int i22 = cVar.f2475b;
                i2 = i22 - i14;
                i = i22;
            } else {
                int i23 = cVar.f2475b;
                i2 = i23;
                i = i14 + i23;
            }
            i3 = 0;
            i4 = 0;
        } else if (cVar.f2479f == -1) {
            i3 = cVar.f2475b;
            i4 = i3 - i14;
            i2 = 0;
            i = 0;
        } else {
            i4 = cVar.f2475b;
            i3 = i14 + i4;
            i = 0;
            i2 = 0;
        }
        while (i21 < i10) {
            View view4 = this.f2434L[i21];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.f2454s != 1) {
                int p = m37274p() + this.f2433K[layoutParams2.f2440e];
                i5 = p;
                i = this.f2456u.mo31595c(view4) + p;
            } else if (m37586P()) {
                i3 = m37278n() + this.f2433K[this.f2432J - layoutParams2.f2440e];
                i4 = i3 - this.f2456u.mo31595c(view4);
                i5 = i2;
            } else {
                int n = m37278n() + this.f2433K[layoutParams2.f2440e];
                i3 = this.f2456u.mo31595c(view4) + n;
                i5 = i2;
                i4 = n;
                m37350a(view4, i4, i5, i3, i);
                if (!layoutParams2.m37405c() || layoutParams2.m37406b()) {
                    bVar.f2472c = true;
                }
                bVar.f2473d |= view4.hasFocusable();
                i21++;
                i2 = i5;
                i4 = i4;
            }
            m37350a(view4, i4, i5, i3, i);
            if (!layoutParams2.m37405c()) {
            }
            bVar.f2472c = true;
            bVar.f2473d |= view4.hasFocusable();
            i21++;
            i2 = i5;
            i4 = i4;
        }
        Arrays.fill(this.f2434L, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo37570a(RecyclerView.C0526y yVar, LinearLayoutManager.C0490c cVar, RecyclerView.AbstractC0511o.AbstractC0514c cVar2) {
        int i = this.f2432J;
        for (int i2 = 0; i2 < this.f2432J && cVar.m37532a(yVar) && i > 0; i2++) {
            int i3 = cVar.f2477d;
            cVar2.mo31620a(i3, Math.max(0, cVar.f2480g));
            i -= this.f2437O.mo37605a(i3);
            cVar.f2477d += cVar.f2478e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37158a(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f2437O.m37602b();
        this.f2437O.m37606a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public void mo37157a(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f2437O.m37602b();
        this.f2437O.m37606a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: a */
    public boolean mo37167a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37149b(int i, RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        m37623W();
        m37624V();
        return super.mo37149b(i, uVar, yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37146b(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        if (this.f2454s == 0) {
            return this.f2432J;
        }
        if (yVar.m37201a() < 1) {
            return 0;
        }
        return m37620a(uVar, yVar, yVar.m37201a() - 1) + 1;
    }

    /* renamed from: b */
    public final int m37616b(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, int i) {
        if (!yVar.m37196d()) {
            return this.f2437O.m37601b(i, this.f2432J);
        }
        int i2 = this.f2436N.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int a = uVar.m37248a(i);
        if (a != -1) {
            return this.f2437O.m37601b(a, this.f2432J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public int mo37144b(RecyclerView.C0526y yVar) {
        return this.f2439Q ? m37610l(yVar) : super.mo37144b(yVar);
    }

    /* renamed from: b */
    public final void m37617b(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f2570b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int i6 = m37613i(layoutParams.f2440e, layoutParams.f2441f);
        if (this.f2454s == 1) {
            i2 = RecyclerView.AbstractC0511o.m37359a(i6, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            i3 = RecyclerView.AbstractC0511o.m37359a(this.f2456u.mo31588g(), m37288i(), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            i3 = RecyclerView.AbstractC0511o.m37359a(i6, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            i2 = RecyclerView.AbstractC0511o.m37359a(this.f2456u.mo31588g(), m37272r(), i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
        }
        m37621a(view, i2, i3, z);
    }

    /* renamed from: b */
    public final void m37615b(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, LinearLayoutManager.C0488a aVar, int i) {
        int i2;
        int b;
        boolean z = i == 1;
        int b2 = m37616b(uVar, yVar, aVar.f2466b);
        if (z) {
            while (b2 > 0) {
                int i3 = aVar.f2466b;
                if (i3 > 0) {
                    int i4 = i3 - 1;
                    aVar.f2466b = i4;
                    b2 = m37616b(uVar, yVar, i4);
                } else {
                    return;
                }
            }
            return;
        }
        int a = yVar.m37201a();
        int i5 = aVar.f2466b;
        while (i5 < a - 1 && (b = m37616b(uVar, yVar, (i2 = i5 + 1))) > b2) {
            i5 = i2;
            b2 = b;
        }
        aVar.f2466b = i5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: b */
    public void mo37142b(RecyclerView recyclerView, int i, int i2) {
        this.f2437O.m37602b();
        this.f2437O.m37606a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: b */
    public void mo37561b(boolean z) {
        if (!z) {
            super.mo37561b(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    /* renamed from: c */
    public final int m37614c(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar, int i) {
        if (!yVar.m37196d()) {
            return this.f2437O.mo37605a(i);
        }
        int i2 = this.f2435M.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int a = uVar.m37248a(i);
        if (a != -1) {
            return this.f2437O.mo37605a(a);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public int mo37135c(RecyclerView.C0526y yVar) {
        return this.f2439Q ? m37609m(yVar) : super.mo37135c(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public RecyclerView.LayoutParams mo37139c() {
        return this.f2454s == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: c */
    public void mo37133c(RecyclerView recyclerView, int i, int i2) {
        this.f2437O.m37602b();
        this.f2437O.m37606a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: d */
    public void mo37128d(RecyclerView recyclerView) {
        this.f2437O.m37602b();
        this.f2437O.m37606a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: e */
    public int mo37124e(RecyclerView.C0526y yVar) {
        return this.f2439Q ? m37610l(yVar) : super.mo37124e(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: e */
    public void mo37125e(RecyclerView.C0522u uVar, RecyclerView.C0526y yVar) {
        if (yVar.m37196d()) {
            m37626T();
        }
        super.mo37125e(uVar, yVar);
        m37625U();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: f */
    public int mo37122f(RecyclerView.C0526y yVar) {
        return this.f2439Q ? m37609m(yVar) : super.mo37122f(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0511o
    /* renamed from: g */
    public void mo37121g(RecyclerView.C0526y yVar) {
        super.mo37121g(yVar);
        this.f2431I = false;
    }

    /* renamed from: i */
    public int m37613i(int i, int i2) {
        if (this.f2454s != 1 || !m37586P()) {
            int[] iArr = this.f2433K;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f2433K;
        int i3 = this.f2432J;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    /* renamed from: j */
    public final void m37612j(int i) {
        this.f2433K = m37618a(this.f2433K, this.f2432J, i);
    }

    /* renamed from: k */
    public void m37611k(int i) {
        if (i != this.f2432J) {
            this.f2431I = true;
            if (i >= 1) {
                this.f2432J = i;
                this.f2437O.m37602b();
                m37267y();
                return;
            }
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    /* renamed from: l */
    public final int m37610l(RecyclerView.C0526y yVar) {
        if (m37299e() == 0 || yVar.m37201a() == 0) {
            return 0;
        }
        m37597E();
        boolean Q = m37585Q();
        View b = m37560b(!Q, true);
        View a = m37567a(!Q, true);
        if (b == null || a == null) {
            return 0;
        }
        int a2 = this.f2437O.m37604a(m37281l(b), this.f2432J);
        int a3 = this.f2437O.m37604a(m37281l(a), this.f2432J);
        int max = this.f2459x ? Math.max(0, ((this.f2437O.m37604a(yVar.m37201a() - 1, this.f2432J) + 1) - Math.max(a2, a3)) - 1) : Math.max(0, Math.min(a2, a3));
        if (!Q) {
            return max;
        }
        return Math.round((max * (Math.abs(this.f2456u.mo31599a(a) - this.f2456u.mo31593d(b)) / ((this.f2437O.m37604a(m37281l(a), this.f2432J) - this.f2437O.m37604a(m37281l(b), this.f2432J)) + 1))) + (this.f2456u.mo31590f() - this.f2456u.mo31593d(b)));
    }

    /* renamed from: m */
    public final int m37609m(RecyclerView.C0526y yVar) {
        if (m37299e() == 0 || yVar.m37201a() == 0) {
            return 0;
        }
        m37597E();
        View b = m37560b(!m37585Q(), true);
        View a = m37567a(!m37585Q(), true);
        if (b == null || a == null) {
            return 0;
        }
        if (!m37585Q()) {
            return this.f2437O.m37604a(yVar.m37201a() - 1, this.f2432J) + 1;
        }
        int a2 = this.f2456u.mo31599a(a);
        int d = this.f2456u.mo31593d(b);
        int a3 = this.f2437O.m37604a(m37281l(b), this.f2432J);
        return (int) (((a2 - d) / ((this.f2437O.m37604a(m37281l(a), this.f2432J) - a3) + 1)) * (this.f2437O.m37604a(yVar.m37201a() - 1, this.f2432J) + 1));
    }
}

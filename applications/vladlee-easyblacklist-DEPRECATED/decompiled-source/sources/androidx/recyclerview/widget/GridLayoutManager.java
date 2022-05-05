package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: a */
    boolean f4429a;

    /* renamed from: b */
    int f4430b;

    /* renamed from: c */
    int[] f4431c;

    /* renamed from: d */
    View[] f4432d;

    /* renamed from: e */
    final SparseIntArray f4433e = new SparseIntArray();

    /* renamed from: f */
    final SparseIntArray f4434f = new SparseIntArray();

    /* renamed from: g */
    AbstractC1052b f4435g = new C1051a();

    /* renamed from: h */
    final Rect f4436h = new Rect();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a */
        int f4437a = -1;

        /* renamed from: b */
        int f4438b = 0;

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
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class C1051a extends AbstractC1052b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC1052b
        /* renamed from: a */
        public final int mo7331a(int i, int i2) {
            return i % i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static abstract class AbstractC1052b {

        /* renamed from: a */
        final SparseIntArray f4439a = new SparseIntArray();

        /* renamed from: b */
        private boolean f4440b = false;

        /* renamed from: c */
        public static int m7329c(int i, int i2) {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + 1;
                if (i6 == i2) {
                    i4++;
                    i3 = 0;
                } else {
                    i3 = i6;
                    i4 = i4;
                    if (i6 > i2) {
                        i4++;
                        i3 = 1;
                    }
                }
            }
            int i7 = i4;
            if (i3 + 1 > i2) {
                i7 = i4 + 1;
            }
            return i7;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00c3 A[RETURN] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo7331a(int r4, int r5) {
            /*
                Method dump skipped, instructions count: 197
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.AbstractC1052b.mo7331a(int, int):int");
        }

        /* renamed from: b */
        final int m7330b(int i, int i2) {
            if (!this.f4440b) {
                return mo7331a(i, i2);
            }
            int i3 = this.f4439a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int a = mo7331a(i, i2);
            this.f4439a.put(i, a);
            return a;
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f4429a = false;
        this.f4430b = -1;
        int i3 = m7147a(context, attributeSet, i, i2).f4600b;
        if (i3 != this.f4430b) {
            this.f4429a = true;
            if (i3 > 0) {
                this.f4430b = i3;
                this.f4435g.f4439a.clear();
                m7108k();
                return;
            }
            throw new IllegalArgumentException("Span count should be at least 1. Provided ".concat(String.valueOf(i3)));
        }
    }

    /* renamed from: A */
    private void m7342A() {
        View[] viewArr = this.f4432d;
        if (viewArr == null || viewArr.length != this.f4430b) {
            this.f4432d = new View[this.f4430b];
        }
    }

    /* renamed from: a */
    private int m7339a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, int i) {
        if (!qVar.f4639g) {
            return AbstractC1052b.m7329c(i, this.f4430b);
        }
        int a = nVar.m7080a(i);
        if (a != -1) {
            return AbstractC1052b.m7329c(a, this.f4430b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. ".concat(String.valueOf(i)));
        return 0;
    }

    /* renamed from: a */
    private void m7341a(View view, int i, int i2, boolean z) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? m7143a(view, i, i2, layoutParams) : m7131b(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: a */
    private void m7340a(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f4564d;
        int i4 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
        int i5 = rect.left + rect.right + layoutParams.leftMargin + layoutParams.rightMargin;
        int i6 = m7334i(layoutParams.f4437a, layoutParams.f4438b);
        if (this.f4449i == 1) {
            i2 = m7150a(i6, i, i5, layoutParams.width, false);
            i3 = m7150a(this.f4450j.mo6705f(), m7100q(), i4, layoutParams.height, true);
        } else {
            i3 = m7150a(i6, i, i4, layoutParams.height, false);
            i2 = m7150a(this.f4450j.mo6705f(), m7101p(), i5, layoutParams.width, true);
        }
        m7341a(view, i2, i3, z);
    }

    /* renamed from: a */
    private void m7338a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, int i, boolean z) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = -1;
        if (z) {
            i2 = 1;
            i3 = 0;
            i5 = i;
        } else {
            i3 = i - 1;
            i2 = -1;
        }
        while (i3 != i5) {
            View view = this.f4432d[i3];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f4438b = m7335c(nVar, qVar, m7120e(view));
            layoutParams.f4437a = i4;
            i4 += layoutParams.f4438b;
            i3 += i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r4[r4.length - 1] != r6) goto L_0x001b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] m7337a(int[] r4, int r5, int r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m7337a(int[], int, int):int[]");
    }

    /* renamed from: b */
    private int m7336b(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, int i) {
        if (!qVar.f4639g) {
            return this.f4435g.m7330b(i, this.f4430b);
        }
        int i2 = this.f4434f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int a = nVar.m7080a(i);
        if (a != -1) {
            return this.f4435g.m7330b(a, this.f4430b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:".concat(String.valueOf(i)));
        return 0;
    }

    /* renamed from: c */
    private int m7335c(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, int i) {
        if (!qVar.f4639g) {
            return 1;
        }
        int i2 = this.f4433e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (nVar.m7080a(i) != -1) {
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:".concat(String.valueOf(i)));
        return 1;
    }

    /* renamed from: i */
    private int m7334i(int i, int i2) {
        if (this.f4449i != 1 || !m7303h()) {
            int[] iArr = this.f4431c;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f4431c;
        int i3 = this.f4430b;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    /* renamed from: j */
    private void m7333j(int i) {
        this.f4431c = m7337a(this.f4431c, this.f4430b, i);
    }

    /* renamed from: z */
    private void m7332z() {
        int i;
        int i2;
        if (this.f4449i == 1) {
            i2 = m7099r() - m7095v();
            i = m7097t();
        } else {
            i2 = m7098s() - m7094w();
            i = m7096u();
        }
        m7333j(i2 - i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final int mo6990a(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        m7332z();
        m7342A();
        return super.mo6990a(i, nVar, qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final int mo6977a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        if (this.f4449i == 0) {
            return this.f4430b;
        }
        if (qVar.m7040a() <= 0) {
            return 0;
        }
        return m7339a(nVar, qVar, qVar.m7040a() - 1) + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x019d, code lost:
        if (r21 == (r0 > r19)) goto L_0x0155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01fd, code lost:
        if (r21 == (r0 > r24)) goto L_0x01dc;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x020e  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo6984a(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.C1074n r9, androidx.recyclerview.widget.RecyclerView.C1079q r10) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo6984a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$n, androidx.recyclerview.widget.RecyclerView$q):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    final View mo7316a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, int i, int i2, int i3) {
        m7301i();
        int c = this.f4450j.mo6711c();
        int d = this.f4450j.mo6709d();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View e = m7122e(i);
            int e2 = m7120e(e);
            view = view;
            view2 = view2;
            if (e2 >= 0) {
                view = view;
                view2 = view2;
                if (e2 < i3) {
                    view = view;
                    view2 = view2;
                    if (m7336b(nVar, qVar, e2) != 0) {
                        continue;
                    } else if (((RecyclerView.LayoutParams) e.getLayoutParams()).f4563c.m7006p()) {
                        view = view;
                        view2 = view2;
                        if (view2 == null) {
                            view2 = e;
                            view = view;
                        }
                    } else if (this.f4450j.mo6713a(e) < d && this.f4450j.mo6712b(e) >= c) {
                        return e;
                    } else {
                        view = view;
                        view2 = view2;
                        if (view == null) {
                            view = e;
                            view2 = view2;
                        }
                    }
                } else {
                    continue;
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
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
        this.f4435g.f4439a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6992a(int i, int i2) {
        this.f4435g.f4439a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6987a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f4431c == null) {
            super.mo6987a(rect, i, i2);
        }
        int t = m7097t() + m7095v();
        int u = m7096u() + m7094w();
        if (this.f4449i == 1) {
            i3 = m7151a(i2, rect.height() + u, C0741t.m8318m(this.f4590q));
            int[] iArr = this.f4431c;
            i4 = m7151a(i, iArr[iArr.length - 1] + t, C0741t.m8319l(this.f4590q));
        } else {
            i4 = m7151a(i, rect.width() + t, C0741t.m8319l(this.f4590q));
            int[] iArr2 = this.f4431c;
            i3 = m7151a(i2, iArr2[iArr2.length - 1] + u, C0741t.m8318m(this.f4590q));
        }
        m7115h(i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6976a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, View view, C0696d dVar) {
        int i;
        int i2;
        boolean z;
        int i3;
        int i4;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m7140a(view, dVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int a = m7339a(nVar, qVar, layoutParams2.f4563c.m7016f());
        if (this.f4449i == 0) {
            i3 = layoutParams2.f4437a;
            i = layoutParams2.f4438b;
            i4 = 1;
            z = this.f4430b > 1 && layoutParams2.f4438b == this.f4430b;
            i2 = a;
        } else {
            i = 1;
            i2 = layoutParams2.f4437a;
            i4 = layoutParams2.f4438b;
            z = this.f4430b > 1 && layoutParams2.f4438b == this.f4430b;
            i3 = a;
        }
        dVar.m8513b(C0696d.C0699c.m8460a(i3, i, i2, i4, z, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public final void mo7315a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, LinearLayoutManager.C1053a aVar, int i) {
        int i2;
        int b;
        super.mo7315a(nVar, qVar, aVar, i);
        m7332z();
        if (qVar.m7040a() > 0 && !qVar.f4639g) {
            boolean z = i == 1;
            int b2 = m7336b(nVar, qVar, aVar.f4460b);
            if (z) {
                while (b2 > 0 && aVar.f4460b > 0) {
                    aVar.f4460b--;
                    b2 = m7336b(nVar, qVar, aVar.f4460b);
                }
            } else {
                int a = qVar.m7040a();
                int i3 = aVar.f4460b;
                while (i3 < a - 1 && (b = m7336b(nVar, qVar, (i2 = i3 + 1))) > b2) {
                    i3 = i2;
                    b2 = b;
                }
                aVar.f4460b = i3;
            }
        }
        m7342A();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    final void mo7314a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, LinearLayoutManager.C1055c cVar, LinearLayoutManager.C1054b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View a;
        int i7 = this.f4450j.mo6701i();
        boolean z = i7 != 1073741824;
        int i8 = m7102o() > 0 ? this.f4431c[this.f4430b] : 0;
        if (z) {
            m7332z();
        }
        boolean z2 = cVar.f4472e == 1;
        int i9 = this.f4430b;
        if (!z2) {
            i9 = m7336b(nVar, qVar, cVar.f4471d) + m7335c(nVar, qVar, cVar.f4471d);
        }
        int i10 = 0;
        while (i10 < this.f4430b && cVar.m7284a(qVar) && i9 > 0) {
            int i11 = cVar.f4471d;
            int c = m7335c(nVar, qVar, i11);
            if (c <= this.f4430b) {
                i9 -= c;
                if (i9 < 0 || (a = cVar.m7285a(nVar)) == null) {
                    break;
                }
                this.f4432d[i10] = a;
                i10++;
            } else {
                throw new IllegalArgumentException("Item at position " + i11 + " requires " + c + " spans but GridLayoutManager has only " + this.f4430b + " spans.");
            }
        }
        if (i10 == 0) {
            bVar.f4465b = true;
            return;
        }
        float f = 0.0f;
        m7338a(nVar, qVar, i10, z2);
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            View view = this.f4432d[i13];
            if (cVar.f4478k == null) {
                if (z2) {
                    m7126c(view);
                } else {
                    m7123d(view);
                }
            } else if (z2) {
                m7146a(view);
            } else {
                m7132b(view);
            }
            m7130b(view, this.f4436h);
            m7340a(view, i7, false);
            int e = this.f4450j.mo6706e(view);
            i12 = i12;
            if (e > i12) {
                i12 = e;
            }
            float f2 = (this.f4450j.mo6704f(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).f4438b;
            f = f;
            if (f2 > f) {
                f = f2;
            }
        }
        int i14 = i12;
        if (z) {
            m7333j(Math.max(Math.round(f * this.f4430b), i8));
            int i15 = 0;
            int i16 = 0;
            while (true) {
                i14 = i16;
                if (i15 >= i10) {
                    break;
                }
                View view2 = this.f4432d[i15];
                m7340a(view2, 1073741824, true);
                int e2 = this.f4450j.mo6706e(view2);
                i16 = i16;
                if (e2 > i16) {
                    i16 = e2;
                }
                i15++;
            }
        }
        for (int i17 = 0; i17 < i10; i17++) {
            View view3 = this.f4432d[i17];
            if (this.f4450j.mo6706e(view3) != i14) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.f4564d;
                int i18 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
                int i19 = rect.left + rect.right + layoutParams.leftMargin + layoutParams.rightMargin;
                int i20 = m7334i(layoutParams.f4437a, layoutParams.f4438b);
                if (this.f4449i == 1) {
                    i6 = m7150a(i20, 1073741824, i19, layoutParams.width, false);
                    i5 = View.MeasureSpec.makeMeasureSpec(i14 - i18, 1073741824);
                } else {
                    i6 = View.MeasureSpec.makeMeasureSpec(i14 - i19, 1073741824);
                    i5 = m7150a(i20, 1073741824, i18, layoutParams.height, false);
                }
                m7341a(view3, i6, i5, true);
            }
        }
        bVar.f4464a = i14;
        if (this.f4449i == 1) {
            int i21 = cVar.f4473f;
            i4 = cVar.f4469b;
            if (i21 == -1) {
                i2 = i4;
                i3 = 0;
                i4 -= i14;
                i = 0;
            } else {
                i2 = i4 + i14;
                i = 0;
                i3 = 0;
            }
        } else {
            int i22 = cVar.f4473f;
            int i23 = cVar.f4469b;
            if (i22 == -1) {
                i3 = i23 - i14;
                i = i23;
            } else {
                i = i23 + i14;
                i3 = i23;
            }
            i2 = 0;
            i4 = 0;
        }
        for (int i24 = 0; i24 < i10; i24++) {
            View view4 = this.f4432d[i24];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.f4449i != 1) {
                int u = m7096u() + this.f4431c[layoutParams2.f4437a];
                i4 = u;
                i2 = this.f4450j.mo6704f(view4) + u;
            } else if (m7303h()) {
                i = m7097t() + this.f4431c[this.f4430b - layoutParams2.f4437a];
                i3 = i - this.f4450j.mo6704f(view4);
            } else {
                int t = m7097t() + this.f4431c[layoutParams2.f4437a];
                i3 = t;
                i = this.f4450j.mo6704f(view4) + t;
            }
            m7144a(view4, i3, i4, i, i2);
            if (layoutParams2.f4563c.m7006p() || layoutParams2.f4563c.m6999w()) {
                bVar.f4466c = true;
            }
            bVar.f4467d = view4.hasFocusable() | bVar.f4467d;
        }
        Arrays.fill(this.f4432d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6972a(RecyclerView.C1079q qVar) {
        super.mo6972a(qVar);
        this.f4429a = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    final void mo7313a(RecyclerView.C1079q qVar, LinearLayoutManager.C1055c cVar, RecyclerView.AbstractC1066i.AbstractC1067a aVar) {
        int i = this.f4430b;
        for (int i2 = 0; i2 < this.f4430b && cVar.m7284a(qVar) && i > 0; i2++) {
            aVar.mo6727a(cVar.f4471d, Math.max(0, cVar.f4474g));
            i--;
            cVar.f4471d += cVar.f4472e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public final void mo7312a(boolean z) {
        if (!z) {
            super.mo7312a(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final boolean mo6979a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final int mo6961b(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        m7332z();
        m7342A();
        return super.mo6961b(i, nVar, qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final int mo6958b(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        if (this.f4449i == 1) {
            return this.f4430b;
        }
        if (qVar.m7040a() <= 0) {
            return 0;
        }
        return m7339a(nVar, qVar, qVar.m7040a() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final RecyclerView.LayoutParams mo6965b() {
        return this.f4449i == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final void mo6963b(int i, int i2) {
        this.f4435g.f4439a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final void mo6952c(int i, int i2) {
        this.f4435g.f4439a.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final void mo6949c(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        if (qVar.f4639g) {
            int o = m7102o();
            for (int i = 0; i < o; i++) {
                LayoutParams layoutParams = (LayoutParams) m7122e(i).getLayoutParams();
                int f = layoutParams.f4563c.m7016f();
                this.f4433e.put(f, layoutParams.f4438b);
                this.f4434f.put(f, layoutParams.f4437a);
            }
        }
        super.mo6949c(nVar, qVar);
        this.f4433e.clear();
        this.f4434f.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final boolean mo6954c() {
        return this.f4454n == null && !this.f4429a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: d */
    public final void mo6944d(int i, int i2) {
        this.f4435g.f4439a.clear();
    }
}

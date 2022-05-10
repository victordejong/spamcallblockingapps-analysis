package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: b.g.a.i.f */
/* loaded from: classes-dex2jar.jar:b/g/a/i/f.class */
public class C0809f {

    /* renamed from: a */
    public List<ConstraintWidget> f3821a;

    /* renamed from: b */
    public int f3822b;

    /* renamed from: c */
    public int f3823c;

    /* renamed from: d */
    public boolean f3824d;

    /* renamed from: e */
    public final int[] f3825e;

    /* renamed from: f */
    public List<ConstraintWidget> f3826f;

    /* renamed from: g */
    public List<ConstraintWidget> f3827g;

    /* renamed from: h */
    public HashSet<ConstraintWidget> f3828h;

    /* renamed from: i */
    public HashSet<ConstraintWidget> f3829i;

    /* renamed from: j */
    public List<ConstraintWidget> f3830j;

    /* renamed from: k */
    public List<ConstraintWidget> f3831k;

    public C0809f(List<ConstraintWidget> list) {
        this.f3822b = -1;
        this.f3823c = -1;
        this.f3824d = false;
        this.f3825e = new int[]{-1, -1};
        this.f3826f = new ArrayList();
        this.f3827g = new ArrayList();
        this.f3828h = new HashSet<>();
        this.f3829i = new HashSet<>();
        this.f3830j = new ArrayList();
        this.f3831k = new ArrayList();
        this.f3821a = list;
    }

    public C0809f(List<ConstraintWidget> list, boolean z) {
        this.f3822b = -1;
        this.f3823c = -1;
        this.f3824d = false;
        this.f3825e = new int[]{-1, -1};
        this.f3826f = new ArrayList();
        this.f3827g = new ArrayList();
        this.f3828h = new HashSet<>();
        this.f3829i = new HashSet<>();
        this.f3830j = new ArrayList();
        this.f3831k = new ArrayList();
        this.f3821a = list;
        this.f3824d = z;
    }

    /* renamed from: a */
    public List<ConstraintWidget> m35885a() {
        if (!this.f3830j.isEmpty()) {
            return this.f3830j;
        }
        int size = this.f3821a.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.f3821a.get(i);
            if (!constraintWidget.f913b0) {
                m35881a((ArrayList) this.f3830j, constraintWidget);
            }
        }
        this.f3831k.clear();
        this.f3831k.addAll(this.f3821a);
        this.f3831k.removeAll(this.f3830j);
        return this.f3830j;
    }

    /* renamed from: a */
    public List<ConstraintWidget> m35884a(int i) {
        if (i == 0) {
            return this.f3826f;
        }
        if (i == 1) {
            return this.f3827g;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0108  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35883a(androidx.constraintlayout.solver.widgets.ConstraintWidget r6) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.p038i.C0809f.m35883a(androidx.constraintlayout.solver.widgets.ConstraintWidget):void");
    }

    /* renamed from: a */
    public void m35882a(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            this.f3828h.add(constraintWidget);
        } else if (i == 1) {
            this.f3829i.add(constraintWidget);
        }
    }

    /* renamed from: a */
    public final void m35881a(ArrayList<ConstraintWidget> arrayList, ConstraintWidget constraintWidget) {
        if (!constraintWidget.f917d0) {
            arrayList.add(constraintWidget);
            constraintWidget.f917d0 = true;
            if (!constraintWidget.m38721z()) {
                if (constraintWidget instanceof C0812h) {
                    C0812h hVar = (C0812h) constraintWidget;
                    int i = hVar.f3840l0;
                    for (int i2 = 0; i2 < i; i2++) {
                        m35881a(arrayList, hVar.f3839k0[i2]);
                    }
                }
                int length = constraintWidget.f884A.length;
                for (int i3 = 0; i3 < length; i3++) {
                    ConstraintAnchor constraintAnchor = constraintWidget.f884A[i3].f876d;
                    if (constraintAnchor != null) {
                        ConstraintWidget constraintWidget2 = constraintAnchor.f874b;
                        if (!(constraintAnchor == null || constraintWidget2 == constraintWidget.m38744l())) {
                            m35881a(arrayList, constraintWidget2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public Set<ConstraintWidget> m35879b(int i) {
        if (i == 0) {
            return this.f3828h;
        }
        if (i == 1) {
            return this.f3829i;
        }
        return null;
    }

    /* renamed from: b */
    public void m35880b() {
        int size = this.f3831k.size();
        for (int i = 0; i < size; i++) {
            m35883a(this.f3831k.get(i));
        }
    }
}

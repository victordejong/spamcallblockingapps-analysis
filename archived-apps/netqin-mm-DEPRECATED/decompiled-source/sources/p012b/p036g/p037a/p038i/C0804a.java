package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: b.g.a.i.a */
/* loaded from: classes-dex2jar.jar:b/g/a/i/a.class */
public class C0804a {
    /* renamed from: a */
    public static int m35924a(ConstraintWidget constraintWidget) {
        int i;
        if (constraintWidget.m38746k() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            i = (int) (constraintWidget.f891H == 0 ? constraintWidget.m38748j() * constraintWidget.f890G : constraintWidget.m38748j() / constraintWidget.f890G);
            constraintWidget.m38735p(i);
        } else if (constraintWidget.m38732r() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            i = (int) (constraintWidget.f891H == 1 ? constraintWidget.m38728t() * constraintWidget.f890G : constraintWidget.m38728t() / constraintWidget.f890G);
            constraintWidget.m38751h(i);
        } else {
            i = -1;
        }
        return i;
    }

    /* renamed from: a */
    public static int m35923a(ConstraintWidget constraintWidget, int i) {
        ConstraintAnchor constraintAnchor;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.f884A;
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2 + 1];
        ConstraintAnchor constraintAnchor4 = constraintAnchor2.f876d;
        if (constraintAnchor4 == null) {
            return 0;
        }
        ConstraintWidget constraintWidget2 = constraintAnchor4.f874b;
        ConstraintWidget constraintWidget3 = constraintWidget.f887D;
        if (constraintWidget2 != constraintWidget3 || (constraintAnchor = constraintAnchor3.f876d) == null || constraintAnchor.f874b != constraintWidget3) {
            return 0;
        }
        return (int) ((((constraintWidget3.m38761d(i) - constraintAnchor2.m38803b()) - constraintAnchor3.m38803b()) - constraintWidget.m38761d(i)) * (i == 0 ? constraintWidget.f905V : constraintWidget.f906W));
    }

    /* renamed from: a */
    public static int m35921a(ConstraintWidget constraintWidget, int i, boolean z, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = 0;
        if (!constraintWidget.f913b0) {
            return 0;
        }
        boolean z2 = constraintWidget.f941w.f876d != null && i == 1;
        if (z) {
            i6 = constraintWidget.m38763d();
            i5 = constraintWidget.m38748j() - constraintWidget.m38763d();
            i4 = i * 2;
            i3 = i4 + 1;
        } else {
            i6 = constraintWidget.m38748j() - constraintWidget.m38763d();
            i5 = constraintWidget.m38763d();
            i3 = i * 2;
            i4 = i3 + 1;
        }
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.f884A;
        if (constraintAnchorArr[i3].f876d == null || constraintAnchorArr[i4].f876d != null) {
            i7 = 1;
        } else {
            i7 = -1;
            i4 = i3;
            i3 = i4;
        }
        if (z2) {
            i2 -= i6;
        }
        int b = (constraintWidget.f884A[i4].m38803b() * i7) + m35923a(constraintWidget, i);
        int i12 = i2 + b;
        int t = (i == 0 ? constraintWidget.m38728t() : constraintWidget.m38748j()) * i7;
        Iterator<C0817m> it = constraintWidget.f884A[i4].m38801d().f3854a.iterator();
        while (it.hasNext()) {
            i11 = Math.max(i11, m35921a(((C0815k) it.next()).f3842c.f874b, i, z, i12));
        }
        Iterator<C0817m> it2 = constraintWidget.f884A[i3].m38801d().f3854a.iterator();
        int i13 = 0;
        while (it2.hasNext()) {
            i13 = Math.max(i13, m35921a(((C0815k) it2.next()).f3842c.f874b, i, z, t + i12));
        }
        if (z2) {
            i9 = i11 - i6;
            i8 = i13 + i5;
        } else {
            i8 = i13 + ((i == 0 ? constraintWidget.m38728t() : constraintWidget.m38748j()) * i7);
            i9 = i11;
        }
        if (i == 1) {
            Iterator<C0817m> it3 = constraintWidget.f941w.m38801d().f3854a.iterator();
            i10 = 0;
            while (it3.hasNext()) {
                C0815k kVar = (C0815k) it3.next();
                i10 = i7 == 1 ? Math.max(i10, m35921a(kVar.f3842c.f874b, i, z, i6 + i12)) : Math.max(i10, m35921a(kVar.f3842c.f874b, i, z, (i5 * i7) + i12));
            }
            if (constraintWidget.f941w.m38801d().f3854a.size() > 0 && !z2) {
                i10 = i7 == 1 ? i10 + i6 : i10 - i5;
            }
        } else {
            i10 = 0;
        }
        int max = Math.max(i9, Math.max(i8, i10));
        int i14 = t + i12;
        int i15 = i12;
        int i16 = i14;
        if (i7 == -1) {
            i16 = i12;
            i15 = i14;
        }
        if (z) {
            C0813i.m35863a(constraintWidget, i, i15);
            constraintWidget.m38785a(i15, i16, i);
        } else {
            constraintWidget.f934p.m35882a(constraintWidget, i);
            constraintWidget.m38760d(i15, i);
        }
        if (constraintWidget.m38765c(i) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f890G != 0.0f) {
            constraintWidget.f934p.m35882a(constraintWidget, i);
        }
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.f884A;
        if (!(constraintAnchorArr2[i4].f876d == null || constraintAnchorArr2[i3].f876d == null)) {
            ConstraintWidget l = constraintWidget.m38744l();
            ConstraintAnchor[] constraintAnchorArr3 = constraintWidget.f884A;
            if (constraintAnchorArr3[i4].f876d.f874b == l && constraintAnchorArr3[i3].f876d.f874b == l) {
                constraintWidget.f934p.m35882a(constraintWidget, i);
            }
        }
        return b + max;
    }

    /* renamed from: a */
    public static int m35916a(C0809f fVar, int i) {
        int i2 = i * 2;
        List<ConstraintWidget> a = fVar.m35884a(i);
        int size = a.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = a.get(i4);
            ConstraintAnchor[] constraintAnchorArr = constraintWidget.f884A;
            int i5 = i2 + 1;
            i3 = Math.max(i3, m35921a(constraintWidget, i, constraintAnchorArr[i5].f876d == null || !(constraintAnchorArr[i2].f876d == null || constraintAnchorArr[i5].f876d == null), 0));
        }
        fVar.f3825e[i] = i3;
        return i3;
    }

    /* renamed from: a */
    public static void m35925a(ConstraintAnchor constraintAnchor) {
        C0815k d = constraintAnchor.m38801d();
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f876d;
        if (constraintAnchor2 != null && constraintAnchor2.f876d != constraintAnchor) {
            constraintAnchor2.m38801d().m35846a(d);
        }
    }

    /* renamed from: a */
    public static void m35922a(ConstraintWidget constraintWidget, int i, int i2) {
        int i3 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.f884A;
        ConstraintAnchor constraintAnchor = constraintAnchorArr[i3];
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i3 + 1];
        if ((constraintAnchor.f876d == null || constraintAnchor2.f876d == null) ? false : true) {
            C0813i.m35863a(constraintWidget, i, m35923a(constraintWidget, i) + constraintAnchor.m38803b());
        } else if (constraintWidget.f890G == 0.0f || constraintWidget.m38765c(i) != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int e = i2 - constraintWidget.m38758e(i);
            int d = e - constraintWidget.m38761d(i);
            constraintWidget.m38785a(d, e, i);
            C0813i.m35863a(constraintWidget, i, d);
        } else {
            int a = m35924a(constraintWidget);
            int i4 = (int) constraintWidget.f884A[i3].m38801d().f3846g;
            constraintAnchor2.m38801d().f3845f = constraintAnchor.m38801d();
            constraintAnchor2.m38801d().f3846g = a;
            constraintAnchor2.m38801d().f3855b = 1;
            constraintWidget.m38785a(i4, i4 + a, i);
        }
    }

    /* renamed from: a */
    public static void m35918a(C0808e eVar) {
        if ((eVar.m35904N() & 32) != 32) {
            m35914b(eVar);
            return;
        }
        eVar.f3803D0 = true;
        eVar.f3818x0 = false;
        eVar.f3819y0 = false;
        eVar.f3820z0 = false;
        ArrayList<ConstraintWidget> arrayList = eVar.f3866k0;
        List<C0809f> list = eVar.f3817w0;
        boolean z = eVar.m38746k() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z2 = eVar.m38732r() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (ConstraintWidget constraintWidget : arrayList) {
            constraintWidget.f934p = null;
            constraintWidget.f917d0 = false;
            constraintWidget.mo35913G();
        }
        for (ConstraintWidget constraintWidget2 : arrayList) {
            if (constraintWidget2.f934p == null && !m35919a(constraintWidget2, list, z3)) {
                m35914b(eVar);
                eVar.f3803D0 = false;
                return;
            }
        }
        int i = 0;
        int i2 = 0;
        for (C0809f fVar : list) {
            i = Math.max(i, m35916a(fVar, 0));
            i2 = Math.max(i2, m35916a(fVar, 1));
        }
        if (z) {
            eVar.m38781a(ConstraintWidget.DimensionBehaviour.FIXED);
            eVar.m38735p(i);
            eVar.f3818x0 = true;
            eVar.f3819y0 = true;
            eVar.f3800A0 = i;
        }
        if (z2) {
            eVar.m38770b(ConstraintWidget.DimensionBehaviour.FIXED);
            eVar.m38751h(i2);
            eVar.f3818x0 = true;
            eVar.f3820z0 = true;
            eVar.f3801B0 = i2;
        }
        m35915a(list, 0, eVar.m38728t());
        m35915a(list, 1, eVar.m38748j());
    }

    /* renamed from: a */
    public static void m35917a(C0808e eVar, ConstraintWidget constraintWidget, C0809f fVar) {
        fVar.f3824d = false;
        eVar.f3803D0 = false;
        constraintWidget.f913b0 = false;
    }

    /* renamed from: a */
    public static void m35915a(List<C0809f> list, int i, int i2) {
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            for (ConstraintWidget constraintWidget : list.get(i3).m35879b(i)) {
                if (constraintWidget.f913b0) {
                    m35922a(constraintWidget, i, i2);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x02d3, code lost:
        if (r0.f874b == r0) goto L_0x02d6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x021a, code lost:
        if (r0.f874b == r0) goto L_0x021d;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0354  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m35920a(androidx.constraintlayout.solver.widgets.ConstraintWidget r5, p012b.p036g.p037a.p038i.C0809f r6, java.util.List<p012b.p036g.p037a.p038i.C0809f> r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.p038i.C0804a.m35920a(androidx.constraintlayout.solver.widgets.ConstraintWidget, b.g.a.i.f, java.util.List, boolean):boolean");
    }

    /* renamed from: a */
    public static boolean m35919a(ConstraintWidget constraintWidget, List<C0809f> list, boolean z) {
        C0809f fVar = new C0809f(new ArrayList(), true);
        list.add(fVar);
        return m35920a(constraintWidget, fVar, list, z);
    }

    /* renamed from: b */
    public static void m35914b(C0808e eVar) {
        eVar.f3817w0.clear();
        eVar.f3817w0.add(0, new C0809f(eVar.f3866k0));
    }
}

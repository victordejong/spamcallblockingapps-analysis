package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1;
/* renamed from: h.i.a.e.j.g.o0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/o0.class */
public final class C7658o0 implements AbstractC7662o4 {

    /* renamed from: a */
    public final AbstractC7639m0 f17983a;

    public C7658o0(AbstractC7639m0 m0Var) {
        C7602h1.m20130a(m0Var, "output");
        this.f17983a = m0Var;
        this.f17983a.f17917a = this;
    }

    /* renamed from: a */
    public static C7658o0 m19961a(AbstractC7639m0 m0Var) {
        C7658o0 o0Var = m0Var.f17917a;
        return o0Var != null ? o0Var : new C7658o0(m0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19922a(int i) throws IOException {
        this.f17983a.mo19996a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19921a(int i, double d) throws IOException {
        this.f17983a.m20067a(i, d);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19920a(int i, float f) throws IOException {
        this.f17983a.m20066a(i, f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19919a(int i, int i2) throws IOException {
        this.f17983a.mo19974e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19918a(int i, long j) throws IOException {
        this.f17983a.m20051b(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19917a(int i, AbstractC7539a0 a0Var) throws IOException {
        this.f17983a.mo19994a(i, a0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19916a(int i, Object obj) throws IOException {
        if (obj instanceof AbstractC7539a0) {
            this.f17983a.mo19985b(i, (AbstractC7539a0) obj);
        } else {
            this.f17983a.mo19984b(i, (AbstractC7627k2) obj);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19915a(int i, Object obj, AbstractC7554b3 b3Var) throws IOException {
        this.f17983a.mo19992a(i, (AbstractC7627k2) obj, b3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19914a(int i, String str) throws IOException {
        this.f17983a.mo19991a(i, str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19913a(int i, List<AbstractC7539a0> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f17983a.mo19994a(i, list.get(i2));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19912a(int i, List<?> list, AbstractC7554b3 b3Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo19906b(i, list.get(i2), b3Var);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19911a(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20029f(list.get(i3).intValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19997a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19986b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: a */
    public final void mo19910a(int i, boolean z) throws IOException {
        this.f17983a.mo19990a(i, z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: b */
    public final void mo19909b(int i) throws IOException {
        this.f17983a.mo19996a(i, 3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: b */
    public final void mo19908b(int i, int i2) throws IOException {
        this.f17983a.mo19979c(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: b */
    public final void mo19907b(int i, long j) throws IOException {
        this.f17983a.mo19978c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: b */
    public final void mo19906b(int i, Object obj, AbstractC7554b3 b3Var) throws IOException {
        AbstractC7639m0 m0Var = this.f17983a;
        m0Var.mo19996a(i, 3);
        b3Var.mo19864a((AbstractC7554b3) ((AbstractC7627k2) obj), (AbstractC7662o4) m0Var.f17917a);
        m0Var.mo19996a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: b */
    public final void mo19905b(int i, List<String> list) throws IOException {
        if (list instanceof AbstractC7701u1) {
            AbstractC7701u1 u1Var = (AbstractC7701u1) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object a = u1Var.mo19685a(i2);
                if (a instanceof String) {
                    this.f17983a.mo19991a(i, (String) a);
                } else {
                    this.f17983a.mo19994a(i, (AbstractC7539a0) a);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f17983a.mo19991a(i, list.get(i3));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: b */
    public final void mo19904b(int i, List<?> list, AbstractC7554b3 b3Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo19915a(i, list.get(i2), b3Var);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: b */
    public final void mo19903b(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20033d(list.get(i3).longValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19989a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19995a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: c */
    public final void mo19902c(int i, int i2) throws IOException {
        this.f17983a.m20037d(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: c */
    public final void mo19901c(int i, long j) throws IOException {
        this.f17983a.mo19995a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: c */
    public final void mo19900c(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20017i(list.get(i3).intValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19975d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19974e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: d */
    public final void mo19899d(int i, int i2) throws IOException {
        this.f17983a.mo19986b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: d */
    public final void mo19898d(int i, long j) throws IOException {
        this.f17983a.mo19978c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: d */
    public final void mo19897d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20026f(list.get(i3).longValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.m20046b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.m20051b(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: e */
    public final void mo19896e(int i, int i2) throws IOException {
        this.f17983a.mo19986b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: e */
    public final void mo19895e(int i, long j) throws IOException {
        this.f17983a.mo19995a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: e */
    public final void mo19894e(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20021h(list.get(i3).intValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.m20041c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.m20037d(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: f */
    public final void mo19893f(int i, int i2) throws IOException {
        this.f17983a.mo19974e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: f */
    public final void mo19892f(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20044b(list.get(i3).booleanValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.m20057a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19990a(i, list.get(i5).booleanValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: g */
    public final void mo19891g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20012k(list.get(i3).intValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19997a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19986b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: h */
    public final void mo19890h(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20018h(list.get(i3).longValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19977c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19978c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: i */
    public final void mo19889i(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20025g(list.get(i3).intValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19987b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19979c(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: j */
    public final void mo19888j(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20014j(list.get(i3).intValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19975d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19974e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: k */
    public final void mo19887k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20022g(list.get(i3).longValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19977c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19978c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: l */
    public final void mo19886l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20030e(list.get(i3).longValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.mo19989a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.mo19995a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: m */
    public final void mo19885m(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20055b(list.get(i3).doubleValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.m20069a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.m20067a(i, list.get(i5).doubleValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: n */
    public final void mo19884n(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f17983a.mo19996a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC7639m0.m20054b(list.get(i3).floatValue());
            }
            this.f17983a.mo19987b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f17983a.m20068a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17983a.m20066a(i, list.get(i5).floatValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7662o4
    /* renamed from: u */
    public final int mo19883u() {
        return AbstractC7583f1.C7588e.f17851k;
    }
}

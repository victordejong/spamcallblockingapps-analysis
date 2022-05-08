package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.a9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a9.class */
public final class C8010a9 implements AbstractC8468z {

    /* renamed from: a */
    public final AbstractC8447x8 f18737a;

    public C8010a9(AbstractC8447x8 x8Var) {
        C8302p9.m18203a(x8Var, "output");
        this.f18737a = x8Var;
        this.f18737a.f19426a = this;
    }

    /* renamed from: a */
    public static C8010a9 m18691a(AbstractC8447x8 x8Var) {
        C8010a9 a9Var = x8Var.f19426a;
        return a9Var != null ? a9Var : new C8010a9(x8Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17956a(int i) throws IOException {
        this.f18737a.mo18019a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17955a(int i, double d) throws IOException {
        this.f18737a.m18078a(i, d);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17954a(int i, float f) throws IOException {
        this.f18737a.m18077a(i, f);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17953a(int i, int i2) throws IOException {
        this.f18737a.mo18006b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17952a(int i, long j) throws IOException {
        this.f18737a.m18065b(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17951a(int i, AbstractC8209k8 k8Var) throws IOException {
        this.f18737a.mo18017a(i, k8Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final <K, V> void mo17950a(int i, C8303pa<K, V> paVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f18737a.mo18019a(i, 2);
            this.f18737a.mo18007b(C8250ma.m18275a(paVar, entry.getKey(), entry.getValue()));
            C8250ma.m18274a(this.f18737a, paVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17949a(int i, Object obj) throws IOException {
        if (obj instanceof AbstractC8209k8) {
            this.f18737a.mo18005b(i, (AbstractC8209k8) obj);
        } else {
            this.f18737a.mo18016a(i, (AbstractC8390ua) obj);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17948a(int i, Object obj, AbstractC8212kb kbVar) throws IOException {
        this.f18737a.mo18015a(i, (AbstractC8390ua) obj, kbVar);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17947a(int i, String str) throws IOException {
        this.f18737a.mo18014a(i, str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17946a(int i, List<AbstractC8209k8> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f18737a.mo18017a(i, list.get(i2));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17945a(int i, List<?> list, AbstractC8212kb kbVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo17938b(i, list.get(i2), kbVar);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17944a(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18043f(list.get(i3).intValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo18020a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18006b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: a */
    public final void mo17943a(int i, boolean z) throws IOException {
        this.f18737a.mo18013a(i, z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final int mo17942b() {
        return AbstractC8228l9.C8234f.f19075k;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final void mo17941b(int i) throws IOException {
        this.f18737a.mo18019a(i, 3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final void mo17940b(int i, int i2) throws IOException {
        this.f18737a.mo17998e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final void mo17939b(int i, long j) throws IOException {
        this.f18737a.mo18002c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final void mo17938b(int i, Object obj, AbstractC8212kb kbVar) throws IOException {
        AbstractC8447x8 x8Var = this.f18737a;
        x8Var.mo18019a(i, 3);
        kbVar.mo17976a((AbstractC8212kb) ((AbstractC8390ua) obj), (AbstractC8468z) x8Var.f19426a);
        x8Var.mo18019a(i, 4);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final void mo17937b(int i, List<String> list) throws IOException {
        if (list instanceof AbstractC8108fa) {
            AbstractC8108fa faVar = (AbstractC8108fa) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object a = faVar.mo18458a(i2);
                if (a instanceof String) {
                    this.f18737a.mo18014a(i, (String) a);
                } else {
                    this.f18737a.mo18017a(i, (AbstractC8209k8) a);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f18737a.mo18014a(i, list.get(i3));
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final void mo17936b(int i, List<?> list, AbstractC8212kb kbVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo17948a(i, list.get(i2), kbVar);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: b */
    public final void mo17935b(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18029i(list.get(i3).longValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo18012a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18018a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: c */
    public final void mo17934c(int i, int i2) throws IOException {
        this.f18737a.m18050d(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: c */
    public final void mo17933c(int i, long j) throws IOException {
        this.f18737a.mo18018a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: c */
    public final void mo17932c(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18031i(list.get(i3).intValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo17999d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo17998e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: d */
    public final void mo17931d(int i, int i2) throws IOException {
        this.f18737a.mo17998e(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: d */
    public final void mo17930d(int i, long j) throws IOException {
        this.f18737a.mo18002c(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: d */
    public final void mo17929d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18044e(list.get(i3).longValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.m18061b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.m18065b(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: e */
    public final void mo17928e(int i, int i2) throws IOException {
        this.f18737a.mo18006b(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: e */
    public final void mo17927e(int i, long j) throws IOException {
        this.f18737a.mo18018a(i, j);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: e */
    public final void mo17926e(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18035h(list.get(i3).intValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.m18054c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.m18050d(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: f */
    public final void mo17925f(int i, int i2) throws IOException {
        this.f18737a.mo18003c(i, i2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: f */
    public final void mo17924f(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18057b(list.get(i3).booleanValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.m18072a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18013a(i, list.get(i5).booleanValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: g */
    public final void mo17923g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18026k(list.get(i3).intValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo18020a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18006b(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: h */
    public final void mo17922h(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18036g(list.get(i3).longValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo18001c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18002c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: i */
    public final void mo17921i(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18039g(list.get(i3).intValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo18007b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18003c(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: j */
    public final void mo17920j(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18028j(list.get(i3).intValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo17999d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo17998e(i, list.get(i5).intValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: k */
    public final void mo17919k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18040f(list.get(i3).longValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo18001c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18002c(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: l */
    public final void mo17918l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18047d(list.get(i3).longValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.mo18012a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.mo18018a(i, list.get(i5).longValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: m */
    public final void mo17917m(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18069b(list.get(i3).doubleValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.m18080a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.m18078a(i, list.get(i5).doubleValue());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8468z
    /* renamed from: n */
    public final void mo17916n(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f18737a.mo18019a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC8447x8.m18068b(list.get(i3).floatValue());
            }
            this.f18737a.mo18007b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f18737a.m18079a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f18737a.m18077a(i, list.get(i5).floatValue());
        }
    }
}

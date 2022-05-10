package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzbn;
import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzci;
import com.google.android.gms.internal.clearcut.zzcx;
import com.google.android.gms.internal.clearcut.zzdg;
import com.google.android.gms.internal.clearcut.zzdo;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.y */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/y.class */
public final class C4435y implements AbstractC4407r2 {

    /* renamed from: a */
    public final zzbn f16655a;

    public C4435y(zzbn zzbnVar) {
        zzci.m10699a(zzbnVar, "output");
        zzbn zzbnVar2 = zzbnVar;
        this.f16655a = zzbnVar2;
        zzbnVar2.f29228a = this;
    }

    /* renamed from: a */
    public static C4435y m25612a(zzbn zzbnVar) {
        C4435y yVar = zzbnVar.f29228a;
        return yVar != null ? yVar : new C4435y(zzbnVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final int mo25627a() {
        return zzcg.zzg.f29262k;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25626a(int i) throws IOException {
        this.f16655a.mo10763a(i, 4);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25625a(int i, double d) throws IOException {
        this.f16655a.m10828a(i, d);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25624a(int i, float f) throws IOException {
        this.f16655a.m10827a(i, f);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25623a(int i, int i2) throws IOException {
        this.f16655a.mo10749b(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25622a(int i, long j) throws IOException {
        this.f16655a.mo10743c(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final <K, V> void mo25621a(int i, C4428w0<K, V> w0Var, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f16655a.mo10763a(i, 2);
            this.f16655a.mo10750b(zzdg.m10686a(w0Var, entry.getKey(), entry.getValue()));
            zzdg.m10685a(this.f16655a, w0Var, entry.getKey(), entry.getValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25620a(int i, zzbb zzbbVar) throws IOException {
        this.f16655a.mo10761a(i, zzbbVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25619a(int i, Object obj) throws IOException {
        if (obj instanceof zzbb) {
            this.f16655a.mo10748b(i, (zzbb) obj);
        } else {
            this.f16655a.mo10747b(i, (zzdo) obj);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25618a(int i, Object obj, AbstractC4391o1 o1Var) throws IOException {
        this.f16655a.mo10759a(i, (zzdo) obj, o1Var);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25617a(int i, String str) throws IOException {
        this.f16655a.mo10758a(i, str);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25616a(int i, List<zzbb> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f16655a.mo10761a(i, list.get(i2));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25615a(int i, List<?> list, AbstractC4391o1 o1Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo25608b(i, list.get(i2), o1Var);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25614a(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10806b(list.get(i3).booleanValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.m10821a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10757a(i, list.get(i5).booleanValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: a */
    public final void mo25613a(int i, boolean z) throws IOException {
        this.f16655a.mo10757a(i, z);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: b */
    public final void mo25611b(int i) throws IOException {
        this.f16655a.mo10763a(i, 3);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: b */
    public final void mo25610b(int i, int i2) throws IOException {
        this.f16655a.mo10749b(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: b */
    public final void mo25609b(int i, long j) throws IOException {
        this.f16655a.mo10743c(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: b */
    public final void mo25608b(int i, Object obj, AbstractC4391o1 o1Var) throws IOException {
        zzbn zzbnVar = this.f16655a;
        zzbnVar.mo10763a(i, 3);
        o1Var.mo25743a((AbstractC4391o1) ((zzdo) obj), (AbstractC4407r2) zzbnVar.f29228a);
        zzbnVar.mo10763a(i, 4);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: b */
    public final void mo25607b(int i, List<String> list) throws IOException {
        if (list instanceof zzcx) {
            zzcx zzcxVar = (zzcx) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object d = zzcxVar.mo10660d(i2);
                if (d instanceof String) {
                    this.f16655a.mo10758a(i, (String) d);
                } else {
                    this.f16655a.mo10761a(i, (zzbb) d);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f16655a.mo10758a(i, list.get(i3));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: b */
    public final void mo25606b(int i, List<?> list, AbstractC4391o1 o1Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo25618a(i, list.get(i2), o1Var);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: b */
    public final void mo25605b(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10790f(list.get(i3).intValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10764a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10749b(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: c */
    public final void mo25604c(int i, int i2) throws IOException {
        this.f16655a.mo10739e(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: c */
    public final void mo25603c(int i, long j) throws IOException {
        this.f16655a.m10815b(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: c */
    public final void mo25602c(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10773k(list.get(i3).intValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10764a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10749b(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: d */
    public final void mo25601d(int i, int i2) throws IOException {
        this.f16655a.mo10744c(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: d */
    public final void mo25600d(int i, long j) throws IOException {
        this.f16655a.mo10762a(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: d */
    public final void mo25599d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10794d(list.get(i3).longValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10756a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10762a(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: e */
    public final void mo25598e(int i, int i2) throws IOException {
        this.f16655a.m10798d(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: e */
    public final void mo25597e(int i, long j) throws IOException {
        this.f16655a.mo10762a(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: e */
    public final void mo25596e(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10779h(list.get(i3).longValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10742c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10743c(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: f */
    public final void mo25595f(int i, int i2) throws IOException {
        this.f16655a.mo10739e(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: f */
    public final void mo25594f(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10778i(list.get(i3).intValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10740d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10739e(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: g */
    public final void mo25593g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10786g(list.get(i3).intValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10750b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10744c(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: h */
    public final void mo25592h(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10775j(list.get(i3).intValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10740d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10739e(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: i */
    public final void mo25591i(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10783g(list.get(i3).longValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10742c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10743c(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: j */
    public final void mo25590j(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10787f(list.get(i3).longValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.m10810b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.m10815b(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: k */
    public final void mo25589k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10791e(list.get(i3).longValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.mo10756a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.mo10762a(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: l */
    public final void mo25588l(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10782h(list.get(i3).intValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.m10803c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.m10798d(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: m */
    public final void mo25587m(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10819b(list.get(i3).doubleValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.m10830a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.m10828a(i, list.get(i5).doubleValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2
    /* renamed from: n */
    public final void mo25586n(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f16655a.mo10763a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzbn.m10818b(list.get(i3).floatValue());
            }
            this.f16655a.mo10750b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f16655a.m10829a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f16655a.m10827a(i, list.get(i5).floatValue());
        }
    }
}

package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejj;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzeku;
import com.google.android.gms.internal.ads.zzelb;
import com.google.android.gms.internal.ads.zzelj;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.m70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/m70.class */
public final class m70 implements ka0 {

    /* renamed from: a */
    public final zzejj f14022a;

    public m70(zzejj zzejjVar) {
        zzekb.m12370a(zzejjVar, "output");
        zzejj zzejjVar2 = zzejjVar;
        this.f14022a = zzejjVar2;
        zzejjVar2.f28060a = this;
    }

    /* renamed from: a */
    public static m70 m26674a(zzejj zzejjVar) {
        m70 m70Var = zzejjVar.f28060a;
        return m70Var != null ? m70Var : new m70(zzejjVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final int mo26688a() {
        return zzejz.zze.f28084k;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26687a(int i) throws IOException {
        this.f14022a.mo12441a(i, 4);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26686a(int i, double d) throws IOException {
        this.f14022a.m12502a(i, d);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26685a(int i, float f) throws IOException {
        this.f14022a.m12501a(i, f);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26684a(int i, int i2) throws IOException {
        this.f14022a.mo12428b(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final <K, V> void mo26683a(int i, j80<K, V> j80Var, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f14022a.mo12441a(i, 2);
            this.f14022a.mo12429b(zzelb.m12352a(j80Var, entry.getKey(), entry.getValue()));
            zzelb.m12351a(this.f14022a, j80Var, entry.getKey(), entry.getValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26682a(int i, zzeip zzeipVar) throws IOException {
        this.f14022a.mo12439a(i, zzeipVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26681a(int i, Object obj) throws IOException {
        if (obj instanceof zzeip) {
            this.f14022a.mo12427b(i, (zzeip) obj);
        } else {
            this.f14022a.mo12438a(i, (zzelj) obj);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26680a(int i, Object obj, f90 f90Var) throws IOException {
        zzejj zzejjVar = this.f14022a;
        zzejjVar.mo12441a(i, 3);
        f90Var.mo26423a((f90) ((zzelj) obj), (ka0) zzejjVar.f28060a);
        zzejjVar.mo12441a(i, 4);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26679a(int i, String str) throws IOException {
        this.f14022a.mo12436a(i, str);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26678a(int i, List<zzeip> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f14022a.mo12439a(i, list.get(i2));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26677a(int i, List<?> list, f90 f90Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo26670b(i, list.get(i2), f90Var);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26676a(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12479b(list.get(i3).booleanValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.m12496a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12435a(i, list.get(i5).booleanValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: a */
    public final void mo26675a(int i, boolean z) throws IOException {
        this.f14022a.mo12435a(i, z);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: b */
    public final void mo26673b(int i) throws IOException {
        this.f14022a.mo12441a(i, 3);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: b */
    public final void mo26672b(int i, int i2) throws IOException {
        this.f14022a.mo12420e(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: b */
    public final void mo26671b(int i, long j) throws IOException {
        this.f14022a.mo12424c(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: b */
    public final void mo26670b(int i, Object obj, f90 f90Var) throws IOException {
        this.f14022a.mo12437a(i, (zzelj) obj, f90Var);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: b */
    public final void mo26669b(int i, List<String> list) throws IOException {
        if (list instanceof zzeku) {
            zzeku zzekuVar = (zzeku) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object i3 = zzekuVar.mo12326i(i2);
                if (i3 instanceof String) {
                    this.f14022a.mo12436a(i, (String) i3);
                } else {
                    this.f14022a.mo12439a(i, (zzeip) i3);
                }
            }
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            this.f14022a.mo12436a(i, list.get(i4));
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: b */
    public final void mo26668b(int i, List<?> list, f90 f90Var) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo26680a(i, list.get(i2), f90Var);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: b */
    public final void mo26667b(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12465f(list.get(i3).intValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12442a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12428b(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: c */
    public final void mo26666c(int i, int i2) throws IOException {
        this.f14022a.mo12420e(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: c */
    public final void mo26665c(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12448k(list.get(i3).intValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12442a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12428b(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: d */
    public final void mo26664d(int i, int i2) throws IOException {
        this.f14022a.mo12425c(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: d */
    public final void mo26663d(int i, long j) throws IOException {
        this.f14022a.m12489b(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: d */
    public final void mo26662d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12469d(list.get(i3).longValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12434a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12440a(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: e */
    public final void mo26661e(int i, int i2) throws IOException {
        this.f14022a.mo12428b(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: e */
    public final void mo26660e(int i, long j) throws IOException {
        this.f14022a.mo12440a(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: e */
    public final void mo26659e(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12454h(list.get(i3).longValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12423c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12424c(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: f */
    public final void mo26658f(int i, int i2) throws IOException {
        this.f14022a.m12472d(i, i2);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: f */
    public final void mo26657f(int i, long j) throws IOException {
        this.f14022a.mo12440a(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: f */
    public final void mo26656f(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12453i(list.get(i3).intValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12421d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12420e(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: g */
    public final void mo26655g(int i, long j) throws IOException {
        this.f14022a.mo12424c(i, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: g */
    public final void mo26654g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12461g(list.get(i3).intValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12429b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12425c(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: h */
    public final void mo26653h(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12450j(list.get(i3).intValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12421d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12420e(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: i */
    public final void mo26652i(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12458g(list.get(i3).longValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12423c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12424c(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: j */
    public final void mo26651j(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12462f(list.get(i3).longValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.m12483b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.m12489b(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: k */
    public final void mo26650k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12466e(list.get(i3).longValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.mo12434a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.mo12440a(i, list.get(i5).longValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: l */
    public final void mo26649l(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12457h(list.get(i3).intValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.m12476c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.m12472d(i, list.get(i5).intValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: m */
    public final void mo26648m(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12493b(list.get(i3).doubleValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.m12504a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.m12502a(i, list.get(i5).doubleValue());
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.ka0
    /* renamed from: n */
    public final void mo26647n(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f14022a.mo12441a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzejj.m12492b(list.get(i3).floatValue());
            }
            this.f14022a.mo12429b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f14022a.m12503a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f14022a.m12501a(i, list.get(i5).floatValue());
        }
    }
}

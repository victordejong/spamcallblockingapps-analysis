package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.l */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/l.class */
public final class C1472l implements AbstractC1473m {

    /* renamed from: a */
    public final List<AbstractC1462h0.C1463a> f5953a;

    /* renamed from: b */
    public final AbstractC1362q[] f5954b;

    /* renamed from: c */
    public boolean f5955c;

    /* renamed from: d */
    public int f5956d;

    /* renamed from: e */
    public int f5957e;

    /* renamed from: f */
    public long f5958f;

    public C1472l(List<AbstractC1462h0.C1463a> list) {
        this.f5953a = list;
        this.f5954b = new AbstractC1362q[list.size()];
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        this.f5955c = false;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        if ((i & 4) != 0) {
            this.f5955c = true;
            this.f5958f = j;
            this.f5957e = 0;
            this.f5956d = 2;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        AbstractC1362q[] qVarArr;
        if (!this.f5955c) {
            return;
        }
        if (this.f5956d != 2 || m33211a(pVar, 32)) {
            if (this.f5956d != 1 || m33211a(pVar, 0)) {
                int c = pVar.m34363c();
                int a = pVar.m34372a();
                for (AbstractC1362q qVar : this.f5954b) {
                    pVar.m34358e(c);
                    qVar.mo32827a(pVar, a);
                }
                this.f5957e += a;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        for (int i = 0; i < this.f5954b.length; i++) {
            AbstractC1462h0.C1463a aVar = this.f5953a.get(i);
            dVar.m33246a();
            AbstractC1362q a = iVar.mo32666a(dVar.m33244c(), 3);
            a.mo32623a(Format.m38177a(dVar.m33245b(), "application/dvbsubs", (String) null, -1, 0, Collections.singletonList(aVar.f5906b), aVar.f5905a, (DrmInitData) null));
            this.f5954b[i] = a;
        }
    }

    /* renamed from: a */
    public final boolean m33211a(C1184p pVar, int i) {
        if (pVar.m34372a() == 0) {
            return false;
        }
        if (pVar.m34344r() != i) {
            this.f5955c = false;
        }
        this.f5956d--;
        return this.f5955c;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
        if (this.f5955c) {
            for (AbstractC1362q qVar : this.f5954b) {
                qVar.mo32832a(this.f5958f, 1, this.f5957e, 0, null);
            }
            this.f5955c = false;
        }
    }
}

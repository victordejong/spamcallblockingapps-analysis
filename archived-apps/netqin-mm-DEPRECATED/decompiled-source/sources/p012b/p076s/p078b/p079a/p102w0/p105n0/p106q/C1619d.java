package p012b.p076s.p078b.p079a.p102w0.p105n0.p106q;

import androidx.media2.exoplayer.external.offline.StreamKey;
import java.util.List;
import p012b.p076s.p078b.p079a.p101v0.C1530b;
import p012b.p076s.p078b.p079a.p111z0.C1701v;
/* renamed from: b.s.b.a.w0.n0.q.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/d.class */
public final class C1619d implements AbstractC1628i {

    /* renamed from: a */
    public final AbstractC1628i f6663a;

    /* renamed from: b */
    public final List<StreamKey> f6664b;

    public C1619d(AbstractC1628i iVar, List<StreamKey> list) {
        this.f6663a = iVar;
        this.f6664b = list;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.AbstractC1628i
    /* renamed from: a */
    public C1701v.AbstractC1702a<AbstractC1625g> mo32525a() {
        return new C1530b(this.f6663a.mo32525a(), this.f6664b);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.AbstractC1628i
    /* renamed from: a */
    public C1701v.AbstractC1702a<AbstractC1625g> mo32524a(C1620e eVar) {
        return new C1530b(this.f6663a.mo32524a(eVar), this.f6664b);
    }
}

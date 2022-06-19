package p193e.p194a.p773g.p774a;

import p193e.p194a.p773g.p780e.C14240d;
import p193e.p194a.p852i.AbstractC15212n;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import s1.z.c.l;
/* renamed from: e.a.g.a.i */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/i.class */
public final class C14199i extends AbstractC15212n {

    /* renamed from: a */
    public final /* synthetic */ AbstractC14205m f40957a;

    public C14199i(AbstractC14205m abstractC14205m) {
        this.f40957a = abstractC14205m;
    }

    @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.p862c.p866d.AbstractC15046i
    /* renamed from: a */
    public void mo10600a(AbstractC15003c abstractC15003c) {
        l.e(abstractC15003c, "ad");
        AbstractC14205m abstractC14205m = this.f40957a;
        if (abstractC14205m.f41026v) {
            AbstractC14198h abstractC14198h = (AbstractC14198h) abstractC14205m.f57683a;
            if (abstractC14198h != null) {
                abstractC14198h.mo20492tq();
                abstractC14198h.mo20569I3(abstractC15003c, ((C14240d) this.f40957a.f40980N).m20330a());
            }
            ((C14240d) this.f40957a.f40980N).m20324g(true);
        }
    }

    @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        AbstractC14205m abstractC14205m = this.f40957a;
        if (abstractC14205m.f41026v) {
            abstractC14205m.m20419pk();
        }
    }
}

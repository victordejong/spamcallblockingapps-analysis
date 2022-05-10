package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.media2.exoplayer.external.ParserException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.w.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/d.class */
public class C1427d implements AbstractC1350g {

    /* renamed from: a */
    public AbstractC1352i f5755a;

    /* renamed from: b */
    public AbstractC1432i f5756b;

    /* renamed from: c */
    public boolean f5757c;

    static {
        AbstractC1353j jVar = C1426c.f5754a;
    }

    /* renamed from: a */
    public static C1184p m33343a(C1184p pVar) {
        pVar.m34358e(0);
        return pVar;
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC1350g[] m33342b() {
        return new AbstractC1350g[]{new C1427d()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        if (this.f5756b == null) {
            if (m33341b(hVar)) {
                hVar.mo33614c();
            } else {
                throw new ParserException("Failed to determine bitstream type");
            }
        }
        if (!this.f5757c) {
            AbstractC1362q a = this.f5755a.mo32666a(0, 1);
            this.f5755a.mo32639e();
            this.f5756b.m33325a(this.f5755a, a);
            this.f5757c = true;
        }
        return this.f5756b.m33326a(hVar, nVar);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        AbstractC1432i iVar = this.f5756b;
        if (iVar != null) {
            iVar.m33328a(j, j2);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5755a = iVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        try {
            return m33341b(hVar);
        } catch (ParserException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m33341b(AbstractC1351h hVar) throws IOException, InterruptedException {
        C1429f fVar = new C1429f();
        if (!fVar.m33333a(hVar, true) || (fVar.f5764b & 2) != 2) {
            return false;
        }
        int min = Math.min(fVar.f5768f, 8);
        C1184p pVar = new C1184p(min);
        hVar.mo33619a(pVar.f4738a, 0, min);
        m33343a(pVar);
        if (C1424b.m33346c(pVar)) {
            this.f5756b = new C1424b();
            return true;
        }
        m33343a(pVar);
        if (C1437k.m33306c(pVar)) {
            this.f5756b = new C1437k();
            return true;
        }
        m33343a(pVar);
        if (!C1431h.m33330b(pVar)) {
            return false;
        }
        this.f5756b = new C1431h();
        return true;
    }
}

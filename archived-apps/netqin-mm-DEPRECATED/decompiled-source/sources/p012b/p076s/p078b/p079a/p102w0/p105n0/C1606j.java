package p012b.p076s.p078b.p079a.p102w0.p105n0;

import androidx.media2.exoplayer.external.source.hls.SampleQueueMappingException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0;
/* renamed from: b.s.b.a.w0.n0.j */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/j.class */
public final class C1606j implements AbstractC1563h0 {

    /* renamed from: a */
    public final int f6574a;

    /* renamed from: b */
    public final C1610n f6575b;

    /* renamed from: c */
    public int f6576c = -1;

    public C1606j(C1610n nVar, int i) {
        this.f6575b = nVar;
        this.f6574a = i;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
    /* renamed from: a */
    public int mo32674a(long j) {
        return m32670d() ? this.f6575b.m32665a(this.f6576c, j) : 0;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
    /* renamed from: a */
    public int mo32673a(C1531w wVar, C1311d dVar, boolean z) {
        int i = -3;
        if (this.f6576c == -3) {
            dVar.m33745a(4);
            return -4;
        }
        if (m32670d()) {
            i = this.f6575b.m32664a(this.f6576c, wVar, dVar, z);
        }
        return i;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
    /* renamed from: a */
    public void mo32675a() throws IOException {
        if (this.f6576c != -2) {
            this.f6575b.m32628p();
            return;
        }
        throw new SampleQueueMappingException(this.f6575b.m32637g().m37990a(this.f6574a).m37992a(0).f1562i);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
    /* renamed from: b */
    public boolean mo32672b() {
        return this.f6576c == -3 || (m32670d() && this.f6575b.m32647b(this.f6576c));
    }

    /* renamed from: c */
    public void m32671c() {
        C1160a.m34520a(this.f6576c == -1);
        this.f6576c = this.f6575b.m32667a(this.f6574a);
    }

    /* renamed from: d */
    public final boolean m32670d() {
        int i = this.f6576c;
        return (i == -1 || i == -3 || i == -2) ? false : true;
    }

    /* renamed from: e */
    public void m32669e() {
        if (this.f6576c != -1) {
            this.f6575b.m32643c(this.f6574a);
            this.f6576c = -1;
        }
    }
}

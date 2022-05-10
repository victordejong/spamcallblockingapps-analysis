package p012b.p076s.p078b.p079a;

import androidx.media2.exoplayer.external.ExoPlaybackException;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1162b;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1177l;
import p012b.p076s.p078b.p079a.p080a1.C1192v;
/* renamed from: b.s.b.a.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/e.class */
public final class C1226e implements AbstractC1177l {

    /* renamed from: a */
    public final C1192v f4913a;

    /* renamed from: b */
    public final AbstractC1227a f4914b;

    /* renamed from: c */
    public AbstractC1236h0 f4915c;

    /* renamed from: d */
    public AbstractC1177l f4916d;

    /* renamed from: b.s.b.a.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/e$a.class */
    public interface AbstractC1227a {
        /* renamed from: a */
        void mo33071a(C1221c0 c0Var);
    }

    public C1226e(AbstractC1227a aVar, AbstractC1162b bVar) {
        this.f4914b = aVar;
        this.f4913a = new C1192v(bVar);
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: a */
    public C1221c0 mo33822a(C1221c0 c0Var) {
        AbstractC1177l lVar = this.f4916d;
        C1221c0 c0Var2 = c0Var;
        if (lVar != null) {
            c0Var2 = lVar.mo33822a(c0Var);
        }
        this.f4913a.mo33822a(c0Var2);
        this.f4914b.mo33071a(c0Var2);
        return c0Var2;
    }

    /* renamed from: a */
    public final void m34188a() {
        this.f4913a.m34315a(this.f4916d.mo33805l());
        C1221c0 g = this.f4916d.mo33807g();
        if (!g.equals(this.f4913a.mo33807g())) {
            this.f4913a.mo33822a(g);
            this.f4914b.mo33071a(g);
        }
    }

    /* renamed from: a */
    public void m34187a(long j) {
        this.f4913a.m34315a(j);
    }

    /* renamed from: a */
    public void m34186a(AbstractC1236h0 h0Var) {
        if (h0Var == this.f4915c) {
            this.f4916d = null;
            this.f4915c = null;
        }
    }

    /* renamed from: b */
    public void m34184b(AbstractC1236h0 h0Var) throws ExoPlaybackException {
        AbstractC1177l lVar;
        AbstractC1177l q = h0Var.mo33804q();
        if (q != null && q != (lVar = this.f4916d)) {
            if (lVar == null) {
                this.f4916d = q;
                this.f4915c = h0Var;
                q.mo33822a(this.f4913a.mo33807g());
                m34188a();
                return;
            }
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    /* renamed from: b */
    public final boolean m34185b() {
        AbstractC1236h0 h0Var = this.f4915c;
        return h0Var != null && !h0Var.mo32123c() && (this.f4915c.mo32126b() || !this.f4915c.mo34147i());
    }

    /* renamed from: c */
    public void m34183c() {
        this.f4913a.m34316a();
    }

    /* renamed from: d */
    public void m34182d() {
        this.f4913a.m34314b();
    }

    /* renamed from: e */
    public long m34181e() {
        if (!m34185b()) {
            return this.f4913a.mo33805l();
        }
        m34188a();
        return this.f4916d.mo33805l();
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: g */
    public C1221c0 mo33807g() {
        AbstractC1177l lVar = this.f4916d;
        return lVar != null ? lVar.mo33807g() : this.f4913a.mo33807g();
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: l */
    public long mo33805l() {
        return m34185b() ? this.f4916d.mo33805l() : this.f4913a.mo33805l();
    }
}

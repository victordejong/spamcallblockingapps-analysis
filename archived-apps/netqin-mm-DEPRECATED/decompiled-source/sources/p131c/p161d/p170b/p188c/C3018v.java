package p131c.p161d.p170b.p188c;

import com.google.android.exoplayer2.ExoPlaybackException;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2882g;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2896q;
import p131c.p161d.p170b.p188c.p203g1.C2872b0;
/* renamed from: c.d.b.c.v */
/* loaded from: classes-dex2jar.jar:c/d/b/c/v.class */
public final class C3018v implements AbstractC2896q {

    /* renamed from: a */
    public final C2872b0 f10907a;

    /* renamed from: b */
    public final AbstractC3019a f10908b;

    /* renamed from: c */
    public AbstractC2953m0 f10909c;

    /* renamed from: d */
    public AbstractC2896q f10910d;

    /* renamed from: e */
    public boolean f10911e = true;

    /* renamed from: f */
    public boolean f10912f;

    /* renamed from: c.d.b.c.v$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/v$a.class */
    public interface AbstractC3019a {
        void onPlaybackParametersChanged(C2910h0 h0Var);
    }

    public C3018v(AbstractC3019a aVar, AbstractC2882g gVar) {
        this.f10908b = aVar;
        this.f10907a = new C2872b0(gVar);
    }

    /* renamed from: a */
    public void m28128a() {
        this.f10912f = true;
        this.f10907a.m28741a();
    }

    /* renamed from: a */
    public void m28127a(long j) {
        this.f10907a.m28740a(j);
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: a */
    public void mo28126a(C2910h0 h0Var) {
        AbstractC2896q qVar = this.f10910d;
        C2910h0 h0Var2 = h0Var;
        if (qVar != null) {
            qVar.mo28126a(h0Var);
            h0Var2 = this.f10910d.mo28119g();
        }
        this.f10907a.mo28126a(h0Var2);
    }

    /* renamed from: a */
    public void m28125a(AbstractC2953m0 m0Var) {
        if (m0Var == this.f10909c) {
            this.f10910d = null;
            this.f10909c = null;
            this.f10911e = true;
        }
    }

    /* renamed from: a */
    public final boolean m28124a(boolean z) {
        AbstractC2953m0 m0Var = this.f10909c;
        return m0Var == null || m0Var.mo18567c() || (!this.f10909c.mo18188b() && (z || this.f10909c.mo28368i()));
    }

    /* renamed from: b */
    public long m28121b(boolean z) {
        m28120c(z);
        return mo28118l();
    }

    /* renamed from: b */
    public void m28123b() {
        this.f10912f = false;
        this.f10907a.m28739b();
    }

    /* renamed from: b */
    public void m28122b(AbstractC2953m0 m0Var) throws ExoPlaybackException {
        AbstractC2896q qVar;
        AbstractC2896q q = m0Var.mo28219q();
        if (q != null && q != (qVar = this.f10910d)) {
            if (qVar == null) {
                this.f10910d = q;
                this.f10909c = m0Var;
                q.mo28126a(this.f10907a.mo28119g());
                return;
            }
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    /* renamed from: c */
    public final void m28120c(boolean z) {
        if (m28124a(z)) {
            this.f10911e = true;
            if (this.f10912f) {
                this.f10907a.m28741a();
                return;
            }
            return;
        }
        long l = this.f10910d.mo28118l();
        if (this.f10911e) {
            if (l < this.f10907a.mo28118l()) {
                this.f10907a.m28739b();
                return;
            }
            this.f10911e = false;
            if (this.f10912f) {
                this.f10907a.m28741a();
            }
        }
        this.f10907a.m28740a(l);
        C2910h0 g = this.f10910d.mo28119g();
        if (!g.equals(this.f10907a.mo28119g())) {
            this.f10907a.mo28126a(g);
            this.f10908b.onPlaybackParametersChanged(g);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: g */
    public C2910h0 mo28119g() {
        AbstractC2896q qVar = this.f10910d;
        return qVar != null ? qVar.mo28119g() : this.f10907a.mo28119g();
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: l */
    public long mo28118l() {
        return this.f10911e ? this.f10907a.mo28118l() : this.f10910d.mo28118l();
    }
}

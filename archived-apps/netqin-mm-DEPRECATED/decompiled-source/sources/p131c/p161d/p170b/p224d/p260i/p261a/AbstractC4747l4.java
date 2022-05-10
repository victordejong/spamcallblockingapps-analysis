package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzfu;
/* renamed from: c.d.b.d.i.a.l4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/l4.class */
public abstract class AbstractC4747l4 extends C4756m4 {

    /* renamed from: b */
    public boolean f17251b;

    public AbstractC4747l4(zzfu zzfuVar) {
        super(zzfuVar);
        this.f17262a.m9070a(this);
    }

    /* renamed from: i */
    public void mo8679i() {
    }

    /* renamed from: k */
    public final boolean m24910k() {
        return this.f17251b;
    }

    /* renamed from: l */
    public final void m24909l() {
        if (!m24910k()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: m */
    public final void m24908m() {
        if (this.f17251b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo8676o()) {
            this.f17262a.m9054g();
            this.f17251b = true;
        }
    }

    /* renamed from: n */
    public final void m24907n() {
        if (!this.f17251b) {
            mo8679i();
            this.f17262a.m9054g();
            this.f17251b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: o */
    public abstract boolean mo8676o();
}

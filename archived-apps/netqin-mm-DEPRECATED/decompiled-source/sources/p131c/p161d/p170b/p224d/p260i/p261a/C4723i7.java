package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* renamed from: c.d.b.d.i.a.i7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/i7.class */
public final class C4723i7 {

    /* renamed from: a */
    public final Clock f17175a;

    /* renamed from: b */
    public long f17176b;

    public C4723i7(Clock clock) {
        Preconditions.m17288a(clock);
        this.f17175a = clock;
    }

    /* renamed from: a */
    public final void m24937a() {
        this.f17176b = this.f17175a.mo17092a();
    }

    /* renamed from: a */
    public final boolean m24936a(long j) {
        return this.f17176b == 0 || this.f17175a.mo17092a() - this.f17176b >= 3600000;
    }

    /* renamed from: b */
    public final void m24935b() {
        this.f17176b = 0L;
    }
}

package p193e.p194a.p372b0.p430q;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import s1.z.c.l;
/* renamed from: e.a.b0.q.l0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/l0.class */
public final class C8601l0 {

    /* renamed from: a */
    public final AbstractC19222c f26428a;

    @Inject
    public C8601l0(AbstractC19222c abstractC19222c) {
        l.e(abstractC19222c, "clock");
        this.f26428a = abstractC19222c;
    }

    /* renamed from: a */
    public final boolean m28260a(long j, long j2, TimeUnit timeUnit) {
        l.e(timeUnit, "timeUnit");
        return m28259b(j, timeUnit.toMillis(j2));
    }

    /* renamed from: b */
    public final boolean m28259b(long j, long j2) {
        return m28258c() - j > j2;
    }

    /* renamed from: c */
    public final long m28258c() {
        return this.f26428a.mo13819c();
    }
}

package p067i.p095c.p097b0.p101b;

import i.c.b0.e.a.d;
import i.c.b0.h.a;
import java.util.concurrent.TimeUnit;
import p067i.p095c.p097b0.p102c.AbstractC2165c;
/* renamed from: i.c.b0.b.d0 */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/d0.class */
public abstract class AbstractC2143d0 {

    /* renamed from: a */
    static final long f5860a = m94a(Long.getLong("rx3.scheduler.drift-tolerance", 15).longValue(), System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes"));

    /* renamed from: a */
    static long m94a(long j, String str) {
        return "seconds".equalsIgnoreCase(str) ? TimeUnit.SECONDS.toNanos(j) : "milliseconds".equalsIgnoreCase(str) ? TimeUnit.MILLISECONDS.toNanos(j) : TimeUnit.MINUTES.toNanos(j);
    }

    /* renamed from: b */
    public abstract c m93b();

    /* renamed from: c */
    public long m92c(TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: d */
    public AbstractC2165c m91d(Runnable runnable) {
        return m90e(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    /* renamed from: e */
    public AbstractC2165c m90e(Runnable runnable, long j, TimeUnit timeUnit) {
        c m93b = m93b();
        a aVar = new a(a.v(runnable), m93b);
        m93b.c(aVar, j, timeUnit);
        return aVar;
    }

    /* renamed from: f */
    public AbstractC2165c m89f(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        c m93b = m93b();
        b bVar = new b(a.v(runnable), m93b);
        d d = m93b.d(bVar, j, j2, timeUnit);
        return d == d.INSTANCE ? d : bVar;
    }
}

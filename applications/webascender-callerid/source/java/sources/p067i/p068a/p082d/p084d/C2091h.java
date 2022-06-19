package p067i.p068a.p082d.p084d;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
import p067i.p068a.p082d.p083c.AbstractC2083d;
/* renamed from: i.a.d.d.h */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/h.class */
public class C2091h {

    /* renamed from: e */
    private static final TimeUnit f5694e = TimeUnit.MINUTES;

    /* renamed from: a */
    private final Logger f5695a;

    /* renamed from: b */
    private final AtomicBoolean f5696b;

    /* renamed from: c */
    private final C2090f f5697c;

    /* renamed from: d */
    private final C2090f f5698d;

    public C2091h(Logger logger) {
        this(logger, g.c());
    }

    C2091h(Logger logger, AbstractC2083d abstractC2083d) {
        this.f5696b = new AtomicBoolean(false);
        this.f5695a = logger;
        TimeUnit timeUnit = f5694e;
        this.f5697c = new C2090f(5.0d / timeUnit.toSeconds(1L), 5.0d, abstractC2083d);
        this.f5698d = new C2090f(5.0d / timeUnit.toSeconds(1L), 1.0d, abstractC2083d);
    }

    /* renamed from: a */
    private void m240a(Level level, String str, Throwable th) {
        if (th != null) {
            this.f5695a.log(level, str, th);
        } else {
            this.f5695a.log(level, str);
        }
    }

    /* renamed from: b */
    public boolean m239b(Level level) {
        return this.f5695a.isLoggable(level);
    }

    /* renamed from: c */
    public void m238c(Level level, String str, Throwable th) {
        if (!m239b(level)) {
            return;
        }
        if (this.f5696b.get()) {
            if (!this.f5698d.m241a(1.0d)) {
                return;
            }
            m240a(level, str, th);
        } else if (this.f5697c.m241a(1.0d)) {
            m240a(level, str, th);
        } else if (!this.f5696b.compareAndSet(false, true)) {
        } else {
            this.f5698d.m241a(1.0d);
            this.f5695a.log(level, "Too many log messages detected. Will only log once per minute from now on.");
            m240a(level, str, th);
        }
    }
}

package p037i.p038a.p052d.p054d;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
import p037i.p038a.p052d.p053c.AbstractC0415d;
/* renamed from: i.a.d.d.h */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/h.class */
public class C0423h {

    /* renamed from: e */
    private static final TimeUnit f1015e = TimeUnit.MINUTES;

    /* renamed from: a */
    private final Logger f1016a;

    /* renamed from: b */
    private final AtomicBoolean f1017b;

    /* renamed from: c */
    private final C0422f f1018c;

    /* renamed from: d */
    private final C0422f f1019d;

    public C0423h(Logger logger) {
        this(logger, g.c());
    }

    C0423h(Logger logger, AbstractC0415d dVar) {
        this.f1017b = new AtomicBoolean(false);
        this.f1016a = logger;
        TimeUnit timeUnit = f1015e;
        this.f1018c = new C0422f(5.0d / timeUnit.toSeconds(1L), 5.0d, dVar);
        this.f1019d = new C0422f(5.0d / timeUnit.toSeconds(1L), 1.0d, dVar);
    }

    /* renamed from: a */
    private void m240a(Level level, String str, Throwable th) {
        if (th != null) {
            this.f1016a.log(level, str, th);
        } else {
            this.f1016a.log(level, str);
        }
    }

    /* renamed from: b */
    public boolean m239b(Level level) {
        return this.f1016a.isLoggable(level);
    }

    /* renamed from: c */
    public void m238c(Level level, String str, Throwable th) {
        if (m239b(level)) {
            if (this.f1017b.get()) {
                if (this.f1019d.m241a(1.0d)) {
                    m240a(level, str, th);
                }
            } else if (this.f1018c.m241a(1.0d)) {
                m240a(level, str, th);
            } else if (this.f1017b.compareAndSet(false, true)) {
                this.f1019d.m241a(1.0d);
                this.f1016a.log(level, "Too many log messages detected. Will only log once per minute from now on.");
                m240a(level, str, th);
            }
        }
    }
}

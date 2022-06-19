package p067i.p068a.p082d.p084d;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: i.a.d.d.d */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/d.class */
public class C2089d {

    /* renamed from: a */
    private static final Logger f5688a;

    /* renamed from: b */
    private static final C2089d f5689b;

    static {
        Logger logger = Logger.getLogger(C2089d.class.getName());
        f5688a = logger;
        C2089d m245a = C2087b.m245a();
        f5689b = m245a;
        if (m245a.getClass() != C2089d.class) {
            logger.log(Level.FINE, "Using the APIs optimized for: {0}", m245a.m242c());
        }
    }

    /* renamed from: b */
    static C2089d m243b() {
        return f5689b;
    }

    /* renamed from: a */
    long m244a() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    /* renamed from: c */
    String m242c() {
        return "Java 8";
    }
}

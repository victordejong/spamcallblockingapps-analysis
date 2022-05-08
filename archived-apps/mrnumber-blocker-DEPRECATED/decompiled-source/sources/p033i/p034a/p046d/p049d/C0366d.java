package p033i.p034a.p046d.p049d;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: i.a.d.d.d */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/d.class */
public class C0366d {

    /* renamed from: a */
    private static final Logger f889a;

    /* renamed from: b */
    private static final C0366d f890b;

    static {
        Logger logger = Logger.getLogger(C0366d.class.getName());
        f889a = logger;
        C0366d a = C0364b.m323a();
        f890b = a;
        if (a.getClass() != C0366d.class) {
            logger.log(Level.FINE, "Using the APIs optimized for: {}", a.m320c());
        }
    }

    /* renamed from: b */
    static C0366d m321b() {
        return f890b;
    }

    /* renamed from: a */
    long m322a() {
        return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    }

    /* renamed from: c */
    String m320c() {
        return "Java 8";
    }
}

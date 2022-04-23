package p037i.p038a.p052d.p054d;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: i.a.d.d.d */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/d.class */
public class C0421d {

    /* renamed from: a */
    private static final Logger f1009a;

    /* renamed from: b */
    private static final C0421d f1010b;

    static {
        Logger logger = Logger.getLogger(C0421d.class.getName());
        f1009a = logger;
        C0421d a = C0419b.m245a();
        f1010b = a;
        if (a.getClass() != C0421d.class) {
            logger.log(Level.FINE, "Using the APIs optimized for: {0}", a.m242c());
        }
    }

    /* renamed from: b */
    static C0421d m243b() {
        return f1010b;
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

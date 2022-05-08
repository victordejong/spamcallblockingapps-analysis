package com.aotter.net.trek.util;

import androidx.annotation.NonNull;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/util/TrekLog.class */
public class TrekLog {

    /* renamed from: a */
    public static final String f1595a = "AotterTrek";
    public static final String LOGGER_NAMESPACE = "com.aotter.trek";

    /* renamed from: b */
    public static final Logger f1596b = Logger.getLogger(LOGGER_NAMESPACE);

    /* renamed from: c */
    public static final C1766c f1597c = new C1766c();

    static {
        f1596b.setUseParentHandlers(false);
        f1596b.setLevel(Level.ALL);
        f1597c.setLevel(Level.FINE);
        LogManager.getLogManager().addLogger(f1596b);
        m36322a(f1596b, f1597c);
    }

    /* renamed from: a */
    public static void m36322a(@NonNull Logger logger, @NonNull Handler handler) {
        for (Handler handler2 : logger.getHandlers()) {
            if (handler2.equals(handler)) {
                return;
            }
        }
        logger.addHandler(handler);
    }

    /* renamed from: c */
    public static void m36321c(String str) {
        m36320c(str, null);
    }

    /* renamed from: c */
    public static void m36320c(String str, Throwable th) {
        f1596b.log(Level.FINEST, str, th);
    }

    /* renamed from: d */
    public static void m36319d(String str) {
        m36318d(str, null);
    }

    /* renamed from: d */
    public static void m36318d(String str, Throwable th) {
        f1596b.log(Level.CONFIG, str, th);
    }

    /* renamed from: e */
    public static void m36317e(String str) {
        m36316e(str, null);
    }

    /* renamed from: e */
    public static void m36316e(String str, Throwable th) {
        f1596b.log(Level.SEVERE, str, th);
    }

    /* renamed from: i */
    public static void m36315i(String str) {
        m36314i(str, null);
    }

    /* renamed from: i */
    public static void m36314i(String str, Throwable th) {
        f1596b.log(Level.INFO, str, th);
    }

    public static void setSdkHandlerLevel(@NonNull Level level) {
        f1597c.setLevel(level);
    }

    /* renamed from: v */
    public static void m36313v(String str) {
        m36312v(str, null);
    }

    /* renamed from: v */
    public static void m36312v(String str, Throwable th) {
        f1596b.log(Level.FINE, str, th);
    }

    /* renamed from: w */
    public static void m36311w(String str) {
        m36310w(str, null);
    }

    /* renamed from: w */
    public static void m36310w(String str, Throwable th) {
        f1596b.log(Level.WARNING, str, th);
    }
}

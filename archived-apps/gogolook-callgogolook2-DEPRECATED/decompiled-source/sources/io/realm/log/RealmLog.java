package io.realm.log;

import android.util.Log;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/log/RealmLog.class */
public final class RealmLog {
    public static String REALM_JAVA_TAG = "REALM_JAVA";

    public static void add(RealmLogger realmLogger) {
        if (realmLogger != null) {
            nativeAddLogger(realmLogger);
            return;
        }
        throw new IllegalArgumentException("A non-null logger has to be provided");
    }

    public static void clear() {
        nativeClearLoggers();
    }

    public static void debug(String str, Object... objArr) {
        debug(null, str, objArr);
    }

    public static void debug(@Nullable Throwable th) {
        debug(th, null, new Object[0]);
    }

    public static void debug(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        log(3, th, str, objArr);
    }

    public static void error(String str, Object... objArr) {
        error(null, str, objArr);
    }

    public static void error(Throwable th) {
        error(th, null, new Object[0]);
    }

    public static void error(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        log(6, th, str, objArr);
    }

    public static void fatal(String str, Object... objArr) {
        fatal(null, str, objArr);
    }

    public static void fatal(Throwable th) {
        fatal(th, null, new Object[0]);
    }

    public static void fatal(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        log(7, th, str, objArr);
    }

    public static int getLevel() {
        return nativeGetLogLevel();
    }

    public static void info(String str, Object... objArr) {
        info(null, str, objArr);
    }

    public static void info(Throwable th) {
        info(th, null, new Object[0]);
    }

    public static void info(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        log(4, th, str, objArr);
    }

    public static void log(int i, @Nullable Throwable th, @Nullable String str, @Nullable Object... objArr) {
        if (i >= getLevel()) {
            StringBuilder sb = new StringBuilder();
            String str2 = str;
            if (str != null) {
                str2 = str;
                if (objArr != null) {
                    str2 = str;
                    if (objArr.length > 0) {
                        str2 = String.format(Locale.US, str, objArr);
                    }
                }
            }
            if (th != null) {
                sb.append(Log.getStackTraceString(th));
            }
            if (str2 != null) {
                if (th != null) {
                    sb.append("\n");
                }
                sb.append(str2);
            }
            nativeLog(i, REALM_JAVA_TAG, th, sb.toString());
        }
    }

    public static native void nativeAddLogger(RealmLogger realmLogger);

    public static native void nativeClearLoggers();

    public static native void nativeCloseCoreLoggerBridge(long j);

    public static native long nativeCreateCoreLoggerBridge(String str);

    public static native int nativeGetLogLevel();

    public static native void nativeLog(int i, String str, @Nullable Throwable th, @Nullable String str2);

    public static native void nativeLogToCoreLoggerBridge(long j, int i, String str);

    public static native void nativeRegisterDefaultLogger();

    public static native void nativeRemoveLogger(RealmLogger realmLogger);

    public static native void nativeSetLogLevel(int i);

    public static void registerDefaultLogger() {
        nativeRegisterDefaultLogger();
    }

    public static boolean remove(RealmLogger realmLogger) {
        if (realmLogger != null) {
            nativeRemoveLogger(realmLogger);
            return true;
        }
        throw new IllegalArgumentException("A non-null logger has to be provided");
    }

    public static void setLevel(int i) {
        if (i < 1 || i > 8) {
            throw new IllegalArgumentException("Invalid log level: " + i);
        }
        nativeSetLogLevel(i);
    }

    public static void trace(String str, Object... objArr) {
        trace(null, str, objArr);
    }

    public static void trace(Throwable th) {
        trace(th, null, new Object[0]);
    }

    public static void trace(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        log(2, th, str, objArr);
    }

    public static void warn(String str, Object... objArr) {
        warn(null, str, objArr);
    }

    public static void warn(Throwable th) {
        warn(th, null, new Object[0]);
    }

    public static void warn(@Nullable Throwable th, @Nullable String str, Object... objArr) {
        log(5, th, str, objArr);
    }
}

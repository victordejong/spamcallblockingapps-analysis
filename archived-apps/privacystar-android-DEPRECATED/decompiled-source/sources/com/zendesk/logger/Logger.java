package com.zendesk.logger;

import android.os.Build;
import android.util.Log;
import com.privacystar.core.util.BlockingManager;
import com.zendesk.service.ErrorResponse;
import com.zendesk.util.StringUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/zendesk/logger/Logger.class */
public class Logger {
    private static final String ISO_8601_FORMAT = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    private static boolean loggable = false;
    private static LogAppender platformLogger;
    private static final TimeZone UTC_TIMEZONE = TimeZone.getTimeZone("UTC");
    private static final List<LogAppender> USER_DEFINED_APPENDER = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/zendesk/logger/Logger$Android.class */
    static class Android implements LogAppender {
        private static final int MAX_LINE_LENGTH = 4000;

        Android() {
        }

        private boolean appendUtcInLogs(String str) {
            return StringUtils.hasLength(str) && (str.endsWith("Provider") || str.endsWith("Service"));
        }

        @Override // com.zendesk.logger.Logger.LogAppender
        public void log(Priority priority, String str, String str2, Throwable th) {
            SimpleDateFormat simpleDateFormat;
            String androidTag = LoggerHelper.getAndroidTag(str);
            if (appendUtcInLogs(str) && Priority.ERROR == priority) {
                new SimpleDateFormat(Logger.ISO_8601_FORMAT, Locale.US).setTimeZone(Logger.UTC_TIMEZONE);
                Log.println(Priority.ERROR.priority, androidTag, "Time in UTC: " + simpleDateFormat.format(new Date()));
            }
            String str3 = str2;
            if (th != null) {
                str3 = str2 + StringUtils.LINE_SEPARATOR + Log.getStackTraceString(th);
            }
            for (String str4 : LoggerHelper.splitLogMessage(str3, MAX_LINE_LENGTH)) {
                Log.println(priority == null ? Priority.INFO.priority : priority.priority, androidTag, str4);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/zendesk/logger/Logger$Java.class */
    static class Java implements LogAppender {
        Java() {
        }

        @Override // com.zendesk.logger.Logger.LogAppender
        public void log(Priority priority, String str, String str2, Throwable th) {
            StringBuilder sb = new StringBuilder(100);
            sb.append("[");
            sb.append(new SimpleDateFormat(Logger.ISO_8601_FORMAT, Locale.US).format(new Date()));
            sb.append("]");
            sb.append(" ");
            sb.append(priority == null ? LoggerHelper.getLevelFromPriority(Priority.INFO.priority) : LoggerHelper.getLevelFromPriority(priority.priority));
            sb.append("/");
            if (!StringUtils.hasLength(str)) {
                str = BlockingManager.MATCHVALUE_UNKNOWN;
            }
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            System.out.println(sb.toString());
            if (th != null) {
                th.printStackTrace(System.out);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/zendesk/logger/Logger$LogAppender.class */
    public interface LogAppender {
        void log(Priority priority, String str, String str2, Throwable th);
    }

    /* loaded from: classes2-dex2jar.jar:com/zendesk/logger/Logger$Priority.class */
    public enum Priority {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);
        
        private final int priority;

        Priority(int i) {
            this.priority = i;
        }
    }

    static {
        Java java;
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                platformLogger = new Android();
            }
        } catch (ClassNotFoundException e) {
            if (platformLogger == null) {
                java = new Java();
            } else {
                return;
            }
        } catch (Throwable th) {
            if (platformLogger == null) {
                platformLogger = new Java();
            }
            throw th;
        }
        if (platformLogger == null) {
            java = new Java();
            platformLogger = java;
        }
    }

    private Logger() {
    }

    public static void addLogAppender(LogAppender logAppender) {
        if (logAppender != null) {
            USER_DEFINED_APPENDER.add(logAppender);
        }
    }

    /* renamed from: d */
    public static void m299d(String str, String str2, Throwable th, Object... objArr) {
        logInternal(Priority.DEBUG, str, str2, th, objArr);
    }

    /* renamed from: d */
    public static void m298d(String str, String str2, Object... objArr) {
        logInternal(Priority.DEBUG, str, str2, null, objArr);
    }

    /* renamed from: e */
    public static void m297e(String str, ErrorResponse errorResponse) {
        StringBuilder sb = new StringBuilder();
        if (errorResponse != null) {
            sb.append("Network Error: ");
            sb.append(errorResponse.isNetworkError());
            sb.append(", Status Code: ");
            sb.append(errorResponse.getStatus());
            if (StringUtils.hasLength(errorResponse.getReason())) {
                sb.append(", Reason: ");
                sb.append(errorResponse.getReason());
            }
        }
        String sb2 = sb.toString();
        Priority priority = Priority.ERROR;
        if (!StringUtils.hasLength(sb2)) {
            sb2 = "Unknown error";
        }
        logInternal(priority, str, sb2, null, new Object[0]);
    }

    /* renamed from: e */
    public static void m296e(String str, String str2, Throwable th, Object... objArr) {
        logInternal(Priority.ERROR, str, str2, th, objArr);
    }

    /* renamed from: e */
    public static void m295e(String str, String str2, Object... objArr) {
        logInternal(Priority.ERROR, str, str2, null, objArr);
    }

    /* renamed from: i */
    public static void m294i(String str, String str2, Throwable th, Object... objArr) {
        logInternal(Priority.INFO, str, str2, th, objArr);
    }

    /* renamed from: i */
    public static void m293i(String str, String str2, Object... objArr) {
        logInternal(Priority.INFO, str, str2, null, objArr);
    }

    public static boolean isLoggable() {
        return loggable;
    }

    private static void logInternal(Priority priority, String str, String str2, Throwable th, Object... objArr) {
        String str3 = str2;
        if (objArr != null) {
            str3 = str2;
            if (objArr.length > 0) {
                str3 = String.format(Locale.US, str2, objArr);
            }
        }
        if (loggable) {
            platformLogger.log(priority, str, str3, th);
            for (LogAppender logAppender : USER_DEFINED_APPENDER) {
                logAppender.log(priority, str, str3, th);
            }
        }
    }

    public static void removeAllLogAppender() {
        USER_DEFINED_APPENDER.clear();
    }

    public static void setLoggable(boolean z) {
        loggable = z;
    }

    /* renamed from: v */
    public static void m292v(String str, String str2, Throwable th, Object... objArr) {
        logInternal(Priority.VERBOSE, str, str2, th, objArr);
    }

    /* renamed from: v */
    public static void m291v(String str, String str2, Object... objArr) {
        logInternal(Priority.VERBOSE, str, str2, null, objArr);
    }

    /* renamed from: w */
    public static void m290w(String str, String str2, Throwable th, Object... objArr) {
        logInternal(Priority.WARN, str, str2, th, objArr);
    }

    /* renamed from: w */
    public static void m289w(String str, String str2, Object... objArr) {
        logInternal(Priority.WARN, str, str2, null, objArr);
    }
}

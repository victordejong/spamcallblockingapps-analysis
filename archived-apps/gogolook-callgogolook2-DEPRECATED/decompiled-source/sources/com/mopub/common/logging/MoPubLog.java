package com.mopub.common.logging;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Strings;
import java.text.MessageFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog.class */
public class MoPubLog {
    public static final String LOGTAG = "MoPub";
    @NonNull

    /* renamed from: d */
    public static final MoPubLog f8190d = new MoPubLog();
    @NonNull

    /* renamed from: a */
    public LogLevel f8191a = LogLevel.INFO;
    @NonNull

    /* renamed from: b */
    public Map<MoPubLogger, LogLevel> f8192b = new HashMap();
    @NonNull

    /* renamed from: c */
    public MoPubLogger f8193c = new MoPubDefaultLogger();

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog$AdLogEvent.class */
    public enum AdLogEvent implements MPLogEventType {
        REQUESTED(LogLevel.DEBUG, "Ad requesting from AdServer: {0}\n{1}"),
        RESPONSE_RECEIVED(LogLevel.DEBUG, "Ad server responded with:\n{0}"),
        LOAD_ATTEMPTED(LogLevel.INFO, "Ad attempting to load"),
        LOAD_SUCCESS(LogLevel.INFO, "Ad loaded"),
        LOAD_FAILED(LogLevel.INFO, "Ad failed to load: ({0}) {1}"),
        SHOW_ATTEMPTED(LogLevel.INFO, "Attempting to show ad"),
        SHOW_SUCCESS(LogLevel.INFO, "Ad shown"),
        SHOW_FAILED(LogLevel.INFO, "Ad failed to show: ({0}) {1}"),
        EXPIRED(LogLevel.DEBUG, "Ad expired since it was not shown within {0} seconds of it being loaded"),
        CLICKED(LogLevel.DEBUG, "Ad clicked"),
        WILL_APPEAR(LogLevel.DEBUG, "Ad will appear"),
        DID_APPEAR(LogLevel.DEBUG, "Ad did appear"),
        WILL_DISAPPEAR(LogLevel.DEBUG, "Ad will disappear"),
        DID_DISAPPEAR(LogLevel.DEBUG, "Ad did disappear"),
        SHOULD_REWARD(LogLevel.DEBUG, "Ad should reward user with {0} {1}"),
        WILL_LEAVE_APPLICATION(LogLevel.DEBUG, "Ad will leave application"),
        CUSTOM(LogLevel.DEBUG, "Ad Log - {0}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "Ad Log With Throwable - {0}, {1}");
        

        /* renamed from: a */
        public LogLevel f8195a;

        /* renamed from: b */
        public String f8196b;

        AdLogEvent(@NonNull LogLevel logLevel, @NonNull String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f8195a = logLevel;
            this.f8196b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public LogLevel getLogLevel() {
            return this.f8195a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public String getMessage(@Nullable Object... objArr) {
            return MessageFormat.format(this.f8196b, objArr);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog$AdapterLogEvent.class */
    public enum AdapterLogEvent implements MPLogEventType {
        LOAD_ATTEMPTED(LogLevel.DEBUG, "Adapter {0} attempting to load ad{1}{2}"),
        LOAD_SUCCESS(LogLevel.DEBUG, "Adapter {0} successfully loaded ad"),
        LOAD_FAILED(LogLevel.DEBUG, "Adapter {0} failed to load ad: ({1}) {2}"),
        SHOW_ATTEMPTED(LogLevel.DEBUG, "Adapter {0} attempting to show ad"),
        SHOW_SUCCESS(LogLevel.DEBUG, "Adapter {0} successfully showed ad"),
        SHOW_FAILED(LogLevel.DEBUG, "Adapter {0} failed to show ad: ({1}) {2}"),
        EXPIRED(LogLevel.DEBUG, "Adapter {0} expired since it was not shown within {1} seconds of it being loaded"),
        CLICKED(LogLevel.DEBUG, "Adapter {0} clicked"),
        WILL_APPEAR(LogLevel.DEBUG, "Adapter {0} will appear"),
        DID_APPEAR(LogLevel.DEBUG, "Adapter {0} did appear"),
        WILL_DISAPPEAR(LogLevel.DEBUG, "Adapter {0} will disappear"),
        DID_DISAPPEAR(LogLevel.DEBUG, "Adapter {0} did disappear"),
        SHOULD_REWARD(LogLevel.DEBUG, "Adapter {0} should reward user with {1} {2}"),
        WILL_LEAVE_APPLICATION(LogLevel.DEBUG, "Adapter {0} will leave application"),
        CUSTOM(LogLevel.DEBUG, "Adapter {0} Log - {1}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "Adapter Log With Throwable - {0}, {1}");
        

        /* renamed from: a */
        public LogLevel f8198a;

        /* renamed from: b */
        public String f8199b;

        AdapterLogEvent(@NonNull LogLevel logLevel, @NonNull String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f8198a = logLevel;
            this.f8199b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public LogLevel getLogLevel() {
            return this.f8198a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public String getMessage(@Nullable Object... objArr) {
            MessageFormat messageFormat = new MessageFormat(this.f8199b);
            Object[] copyOf = Arrays.copyOf(objArr, messageFormat.getFormats().length);
            if (this == LOAD_ATTEMPTED) {
                if (objArr.length <= 1 || objArr[1] == null || TextUtils.isEmpty(objArr[1].toString())) {
                    copyOf[1] = "";
                } else {
                    copyOf[1] = MessageFormat.format(" with DSP creative ID {0}", objArr[1].toString());
                }
                if (objArr.length <= 2 || objArr[2] == null || TextUtils.isEmpty(objArr[2].toString())) {
                    copyOf[2] = "";
                } else {
                    copyOf[2] = MessageFormat.format(" with DSP name {0}", objArr[2].toString());
                }
            }
            return messageFormat.format(copyOf);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog$ConsentLogEvent.class */
    public enum ConsentLogEvent implements MPLogEventType {
        SYNC_ATTEMPTED(LogLevel.DEBUG, "Consent attempting to synchronize state"),
        SYNC_COMPLETED(LogLevel.DEBUG, "Consent synchronization completed: {0}"),
        SYNC_FAILED(LogLevel.DEBUG, "Consent synchronization failed: ({0}) {1}"),
        UPDATED(LogLevel.DEBUG, "Consent changed from {0} to {1}: PII {2} be collected. Reason: {3}"),
        SHOULD_SHOW_DIALOG(LogLevel.DEBUG, "Consent dialog should be shown"),
        LOAD_ATTEMPTED(LogLevel.DEBUG, "Consent attempting to load dialog"),
        LOAD_SUCCESS(LogLevel.DEBUG, "Consent dialog loaded"),
        LOAD_FAILED(LogLevel.DEBUG, "Consent dialog failed: ({0}) {1}"),
        SHOW_ATTEMPTED(LogLevel.DEBUG, "Consent dialog attempting to show"),
        SHOW_SUCCESS(LogLevel.DEBUG, "Consent successfully showed dialog"),
        SHOW_FAILED(LogLevel.DEBUG, "Consent dialog failed to show: ({0}) {1}"),
        CUSTOM(LogLevel.DEBUG, "Consent Log - {0}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "Consent Log With Throwable - {0}, {1}");
        

        /* renamed from: a */
        public LogLevel f8201a;

        /* renamed from: b */
        public String f8202b;

        ConsentLogEvent(@NonNull LogLevel logLevel, @NonNull String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f8201a = logLevel;
            this.f8202b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public LogLevel getLogLevel() {
            return this.f8201a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public String getMessage(@Nullable Object... objArr) {
            if (this == UPDATED && objArr != null && objArr.length > 2) {
                objArr[2] = (!(objArr[2] instanceof Boolean) || !((Boolean) objArr[2]).booleanValue()) ? "cannot" : "can";
            }
            return MessageFormat.format(this.f8202b, objArr);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog$LogLevel.class */
    public enum LogLevel implements LogLevelInt {
        DEBUG(20, "DEBUG"),
        INFO(30, "INFO"),
        NONE(70, HlsPlaylistParser.METHOD_NONE);
        

        /* renamed from: a */
        public int f8204a;

        /* renamed from: b */
        public String f8205b;

        LogLevel(int i, String str) {
            this.f8204a = i;
            this.f8205b = str;
        }

        @NonNull
        public static LogLevel valueOf(int i) {
            return i != 20 ? i != 30 ? NONE : INFO : DEBUG;
        }

        @NonNull
        public int intValue() {
            return this.f8204a;
        }

        @Override // java.lang.Enum
        @NonNull
        public String toString() {
            return this.f8205b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog$LogLevelInt.class */
    public interface LogLevelInt {
        public static final int DEBUG_INT = 20;
        public static final int INFO_INT = 30;
        public static final int NONE_INT = 70;
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog$MPLogEventType.class */
    public interface MPLogEventType {
        @NonNull
        LogLevel getLogLevel();

        @NonNull
        String getMessage(@Nullable Object... objArr);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/logging/MoPubLog$SdkLogEvent.class */
    public enum SdkLogEvent implements MPLogEventType {
        INIT_STARTED(LogLevel.DEBUG, "SDK initialization started"),
        INIT_FINISHED(LogLevel.INFO, "SDK initialized and ready to display ads.\nInitialized adapters:\n{0}"),
        INIT_FAILED(LogLevel.INFO, "SDK initialization failed - {0}\n{1}"),
        CUSTOM(LogLevel.DEBUG, "SDK Log - {0}"),
        CUSTOM_WITH_THROWABLE(LogLevel.DEBUG, "SDK Log With Throwable - {0}, {1}"),
        ERROR(LogLevel.DEBUG, "SDK Error Log - {0}"),
        ERROR_WITH_THROWABLE(LogLevel.DEBUG, "SDK Error Log - {0}, {1}");
        

        /* renamed from: a */
        public LogLevel f8207a;

        /* renamed from: b */
        public String f8208b;

        SdkLogEvent(@NonNull LogLevel logLevel, @NonNull String str) {
            Preconditions.checkNotNull(logLevel);
            Preconditions.checkNotNull(str);
            this.f8207a = logLevel;
            this.f8208b = str;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public LogLevel getLogLevel() {
            return this.f8207a;
        }

        @Override // com.mopub.common.logging.MoPubLog.MPLogEventType
        @NonNull
        public String getMessage(@Nullable Object... objArr) {
            if (this == INIT_FINISHED && objArr.length > 0) {
                String delimitedString = Strings.getDelimitedString(objArr[0], "\n");
                if (TextUtils.isEmpty(delimitedString)) {
                    objArr[0] = "No adapters initialized.";
                } else {
                    objArr[0] = delimitedString;
                }
            }
            return MessageFormat.format(this.f8208b, objArr);
        }
    }

    /* renamed from: a */
    public static Pair<String, String> m30738a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return new Pair<>(stackTrace[4].getClassName(), stackTrace[4].getMethodName());
    }

    /* renamed from: a */
    public static void m30737a(@NonNull Pair<String, String> pair, @Nullable String str, @Nullable MPLogEventType mPLogEventType, @Nullable Object... objArr) {
        Preconditions.checkNotNull(pair);
        if (mPLogEventType != null) {
            for (MoPubLogger moPubLogger : f8190d.f8192b.keySet()) {
                if (f8190d.f8192b.get(moPubLogger) != null && f8190d.f8192b.get(moPubLogger).intValue() <= mPLogEventType.getLogLevel().intValue()) {
                    moPubLogger.log(pair.first, pair.second, str, mPLogEventType.getMessage(objArr));
                }
            }
        }
    }

    /* renamed from: a */
    public static void m30736a(@Nullable String str, @Nullable Throwable th) {
        log(SdkLogEvent.CUSTOM_WITH_THROWABLE, str, th != null ? th.getMessage() : "");
    }

    public static void addLogger(@Nullable MoPubLogger moPubLogger) {
        addLogger(moPubLogger, f8190d.f8191a);
    }

    public static void addLogger(@Nullable MoPubLogger moPubLogger, @Nullable LogLevel logLevel) {
        f8190d.f8192b.put(moPubLogger, logLevel);
    }

    @Deprecated
    /* renamed from: c */
    public static void m30735c(String str) {
        m30734c(str, null);
    }

    @Deprecated
    /* renamed from: c */
    public static void m30734c(String str, Throwable th) {
        m30736a(str, th);
    }

    @Deprecated
    /* renamed from: d */
    public static void m30733d(String str) {
        m30732d(str, null);
    }

    @Deprecated
    /* renamed from: d */
    public static void m30732d(String str, Throwable th) {
        m30736a(str, th);
    }

    @Deprecated
    /* renamed from: e */
    public static void m30731e(String str) {
        m30730e(str, null);
    }

    @Deprecated
    /* renamed from: e */
    public static void m30730e(String str, Throwable th) {
        m30736a(str, th);
    }

    @NonNull
    public static LogLevel getLogLevel() {
        return f8190d.f8191a;
    }

    @Deprecated
    /* renamed from: i */
    public static void m30729i(String str) {
        m30728i(str, null);
    }

    @Deprecated
    /* renamed from: i */
    public static void m30728i(String str, Throwable th) {
        m30736a(str, th);
    }

    public static void log(@Nullable MPLogEventType mPLogEventType, @Nullable Object... objArr) {
        m30737a(m30738a(), null, mPLogEventType, objArr);
    }

    public static void log(@Nullable String str, @Nullable MPLogEventType mPLogEventType, @Nullable Object... objArr) {
        m30737a(m30738a(), str, mPLogEventType, objArr);
    }

    public static void setLogLevel(@NonNull LogLevel logLevel) {
        Preconditions.checkNotNull(logLevel);
        MoPubLog moPubLog = f8190d;
        moPubLog.f8191a = logLevel;
        addLogger(moPubLog.f8193c, moPubLog.f8191a);
    }

    @Deprecated
    /* renamed from: v */
    public static void m30727v(String str) {
        m30726v(str, null);
    }

    @Deprecated
    /* renamed from: v */
    public static void m30726v(String str, Throwable th) {
        m30736a(str, th);
    }

    @Deprecated
    /* renamed from: w */
    public static void m30725w(String str) {
        m30724w(str, null);
    }

    @Deprecated
    /* renamed from: w */
    public static void m30724w(String str, Throwable th) {
        m30736a(str, th);
    }
}

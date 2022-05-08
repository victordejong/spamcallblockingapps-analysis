package com.birbit.android.jobqueue.log;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/log/JqLog.class */
public class JqLog {
    private static CustomLogger customLogger;

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/log/JqLog$ErrorLogger.class */
    public static class ErrorLogger implements CustomLogger {
        private static final String TAG = "JobManager";

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: d */
        public void mo303d(String str, Object... objArr) {
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: e */
        public void mo302e(String str, Object... objArr) {
            Log.e(TAG, String.format(str, objArr));
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: e */
        public void mo301e(Throwable th, String str, Object... objArr) {
            Log.e(TAG, String.format(str, objArr), th);
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        public boolean isDebugEnabled() {
            return false;
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        /* renamed from: v */
        public void mo300v(String str, Object... objArr) {
        }
    }

    static {
        clearLogger();
    }

    public static void clearLogger() {
        setCustomLogger(new CustomLogger() { // from class: com.birbit.android.jobqueue.log.JqLog.1
            @Override // com.birbit.android.jobqueue.log.CustomLogger
            /* renamed from: d */
            public void mo303d(String str, Object... objArr) {
            }

            @Override // com.birbit.android.jobqueue.log.CustomLogger
            /* renamed from: e */
            public void mo302e(String str, Object... objArr) {
            }

            @Override // com.birbit.android.jobqueue.log.CustomLogger
            /* renamed from: e */
            public void mo301e(Throwable th, String str, Object... objArr) {
            }

            @Override // com.birbit.android.jobqueue.log.CustomLogger
            public boolean isDebugEnabled() {
                return false;
            }

            @Override // com.birbit.android.jobqueue.log.CustomLogger
            /* renamed from: v */
            public void mo300v(String str, Object... objArr) {
            }
        });
    }

    /* renamed from: d */
    public static void m392d(String str, Object... objArr) {
        customLogger.mo303d(str, objArr);
    }

    /* renamed from: e */
    public static void m391e(String str, Object... objArr) {
        customLogger.mo302e(str, objArr);
    }

    /* renamed from: e */
    public static void m390e(Throwable th, String str, Object... objArr) {
        customLogger.mo301e(th, str, objArr);
    }

    public static boolean isDebugEnabled() {
        return customLogger.isDebugEnabled();
    }

    public static void setCustomLogger(CustomLogger customLogger2) {
        customLogger = customLogger2;
    }

    /* renamed from: v */
    public static void m389v(String str, Object... objArr) {
        customLogger.mo300v(str, objArr);
    }
}

package zendesk.belvedere;

import android.support.annotation.NonNull;
import android.util.Log;
/* renamed from: zendesk.belvedere.L */
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/L.class */
class C2598L {
    private static Logger logger = new DefaultLogger();

    /* renamed from: zendesk.belvedere.L$DefaultLogger */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/L$DefaultLogger.class */
    static class DefaultLogger implements Logger {
        private boolean loggable = false;

        @Override // zendesk.belvedere.C2598L.Logger
        /* renamed from: d */
        public void mo3d(String str, String str2) {
            if (this.loggable) {
                Log.d(str, str2);
            }
        }

        @Override // zendesk.belvedere.C2598L.Logger
        /* renamed from: e */
        public void mo2e(String str, String str2) {
            if (this.loggable) {
                Log.e(str, str2);
            }
        }

        @Override // zendesk.belvedere.C2598L.Logger
        /* renamed from: e */
        public void mo1e(String str, String str2, Throwable th) {
            if (this.loggable) {
                Log.e(str, str2, th);
            }
        }

        @Override // zendesk.belvedere.C2598L.Logger
        public void setLoggable(boolean z) {
            this.loggable = z;
        }

        @Override // zendesk.belvedere.C2598L.Logger
        /* renamed from: w */
        public void mo0w(String str, String str2) {
            if (this.loggable) {
                Log.w(str, str2);
            }
        }
    }

    /* renamed from: zendesk.belvedere.L$Logger */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/L$Logger.class */
    public interface Logger {
        /* renamed from: d */
        void mo3d(@NonNull String str, @NonNull String str2);

        /* renamed from: e */
        void mo2e(@NonNull String str, @NonNull String str2);

        /* renamed from: e */
        void mo1e(@NonNull String str, @NonNull String str2, @NonNull Throwable th);

        void setLoggable(boolean z);

        /* renamed from: w */
        void mo0w(@NonNull String str, @NonNull String str2);
    }

    C2598L() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m7d(@NonNull String str, @NonNull String str2) {
        logger.mo3d(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m6e(@NonNull String str, @NonNull String str2) {
        logger.mo2e(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m5e(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        logger.mo1e(str, str2, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLogger(Logger logger2) {
        logger = logger2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static void m4w(@NonNull String str, @NonNull String str2) {
        logger.mo0w(str, str2);
    }
}

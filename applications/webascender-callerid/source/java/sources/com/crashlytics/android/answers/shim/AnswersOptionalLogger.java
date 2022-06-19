package com.crashlytics.android.answers.shim;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/shim/AnswersOptionalLogger.class */
public class AnswersOptionalLogger {
    private static final String TAG = "AnswersOptionalLogger";
    private static final KitEventLogger logger;

    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    static {
        /*
            com.crashlytics.android.answers.shim.AnswersKitEventLogger r0 = com.crashlytics.android.answers.shim.AnswersKitEventLogger.create()     // Catch: java.lang.Throwable -> L7 java.lang.Throwable -> L23
            r4 = r0
            goto L13
        L7:
            r4 = move-exception
            java.lang.String r0 = "AnswersOptionalLogger"
            java.lang.String r1 = "Unexpected error creating AnswersKitEventLogger"
            r2 = r4
            int r0 = android.util.Log.w(r0, r1, r2)
        L11:
            r0 = 0
            r4 = r0
        L13:
            r0 = r4
            if (r0 == 0) goto L1a
            goto L1e
        L1a:
            com.crashlytics.android.answers.shim.KitEventLogger r0 = com.crashlytics.android.answers.shim.NoopKitEventLogger.create()
            r4 = r0
        L1e:
            r0 = r4
            com.crashlytics.android.answers.shim.AnswersOptionalLogger.logger = r0
            return
        L23:
            r4 = move-exception
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.shim.AnswersOptionalLogger.m7297clinit():void");
    }

    public static KitEventLogger get() {
        return logger;
    }
}

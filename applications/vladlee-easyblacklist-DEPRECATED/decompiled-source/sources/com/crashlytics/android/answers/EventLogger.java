package com.crashlytics.android.answers;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/EventLogger.class */
public interface EventLogger {
    void logEvent(String str, Bundle bundle);

    void logEvent(String str, String str2, Bundle bundle);
}

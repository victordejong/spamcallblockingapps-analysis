package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver.class */
public interface AnalyticsEventReceiver {
    void onEvent(@NonNull String str, @NonNull Bundle bundle);
}

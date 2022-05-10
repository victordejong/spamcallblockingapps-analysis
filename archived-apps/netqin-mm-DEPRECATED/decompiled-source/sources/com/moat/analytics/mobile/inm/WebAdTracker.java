package com.moat.analytics.mobile.inm;

import android.app.Activity;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/WebAdTracker.class */
public interface WebAdTracker {
    void removeListener();

    @Deprecated
    void setActivity(Activity activity);

    void setListener(TrackerListener trackerListener);

    void startTracking();

    void stopTracking();
}

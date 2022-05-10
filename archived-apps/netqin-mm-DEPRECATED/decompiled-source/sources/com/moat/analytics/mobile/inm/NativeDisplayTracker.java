package com.moat.analytics.mobile.inm;

import android.app.Activity;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/NativeDisplayTracker.class */
public interface NativeDisplayTracker {

    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/NativeDisplayTracker$MoatUserInteractionType.class */
    public enum MoatUserInteractionType {
        TOUCH,
        CLICK
    }

    void removeListener();

    void reportUserInteractionEvent(MoatUserInteractionType moatUserInteractionType);

    @Deprecated
    void setActivity(Activity activity);

    void setListener(TrackerListener trackerListener);

    void startTracking();

    void stopTracking();
}

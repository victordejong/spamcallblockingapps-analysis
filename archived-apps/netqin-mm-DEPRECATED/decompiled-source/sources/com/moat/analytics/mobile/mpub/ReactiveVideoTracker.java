package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.view.View;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/ReactiveVideoTracker.class */
public interface ReactiveVideoTracker {
    void changeTargetView(View view);

    void dispatchEvent(MoatAdEvent moatAdEvent);

    void removeListener();

    void removeVideoListener();

    @Deprecated
    void setActivity(Activity activity);

    void setListener(TrackerListener trackerListener);

    void setPlayerVolume(Double d);

    void setVideoListener(VideoTrackerListener videoTrackerListener);

    void stopTracking();

    boolean trackVideoAd(Map<String, String> map, Integer num, View view);
}

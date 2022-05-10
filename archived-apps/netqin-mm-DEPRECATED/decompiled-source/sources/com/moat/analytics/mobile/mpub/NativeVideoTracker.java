package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.media.MediaPlayer;
import android.view.View;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/NativeVideoTracker.class */
public interface NativeVideoTracker {
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

    boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view);
}

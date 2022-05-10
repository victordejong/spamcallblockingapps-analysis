package com.facebook.ads.internal.api;

import android.view.View;
import androidx.annotation.Keep;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.VideoStartReason;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/MediaViewVideoRendererApi.class */
public interface MediaViewVideoRendererApi extends AdComponentViewApiProvider {
    void destroy();

    void disengageSeek(VideoStartReason videoStartReason);

    void engageSeek();

    int getCurrentTimeMs();

    int getDuration();

    View getVideoView();

    float getVolume();

    void initialize(AdViewConstructorParams adViewConstructorParams, MediaViewVideoRenderer mediaViewVideoRenderer);

    void pause(boolean z);

    void play(VideoStartReason videoStartReason);

    void seekTo(int i);

    void setVolume(float f);

    boolean shouldAutoplay();
}

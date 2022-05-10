package com.facebook.ads.internal.api;

import android.view.View;
import androidx.annotation.Keep;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.MediaViewVideoRenderer;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/MediaViewApi.class */
public interface MediaViewApi {
    void bringChildToFront(View view);

    void destroy();

    View getAdContentsView();

    int getMediaHeight();

    int getMediaWidth();

    void initialize(AdViewConstructorParams adViewConstructorParams, MediaView mediaView, MediaViewParentApi mediaViewParentApi);

    void setListener(MediaViewListener mediaViewListener);

    void setVideoRenderer(MediaViewVideoRenderer mediaViewVideoRenderer);
}

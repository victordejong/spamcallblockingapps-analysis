package com.facebook.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.internal.api.AdNativeComponentView;
import com.facebook.ads.internal.api.AdViewConstructorParams;
import com.facebook.ads.internal.api.MediaViewApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
@UiThread
/* loaded from: classes-dex2jar.jar:com/facebook/ads/MediaView.class */
public class MediaView extends AdNativeComponentView {
    public MediaViewApi mMediaViewApi;

    public MediaView(Context context) {
        super(context);
        initializeSelf(new AdViewConstructorParams(context));
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initializeSelf(new AdViewConstructorParams(context, attributeSet));
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initializeSelf(new AdViewConstructorParams(context, attributeSet, i));
    }

    @TargetApi(21)
    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initializeSelf(new AdViewConstructorParams(context, attributeSet, i, i2));
    }

    private void initializeSelf(AdViewConstructorParams adViewConstructorParams) {
        this.mMediaViewApi = DynamicLoaderFactory.makeLoader(adViewConstructorParams.getContext()).createMediaViewApi();
        attachAdComponentViewApi(this.mMediaViewApi);
        this.mMediaViewApi.initialize(adViewConstructorParams, this);
    }

    public void destroy() {
        this.mMediaViewApi.destroy();
    }

    @Override // com.facebook.ads.internal.api.AdNativeComponentView
    public View getAdContentsView() {
        return this.mMediaViewApi.getAdContentsView();
    }

    public int getMediaHeight() {
        return this.mMediaViewApi.getMediaHeight();
    }

    public MediaViewApi getMediaViewApi() {
        return this.mMediaViewApi;
    }

    public int getMediaWidth() {
        return this.mMediaViewApi.getMediaWidth();
    }

    public void setListener(MediaViewListener mediaViewListener) {
        this.mMediaViewApi.setListener(mediaViewListener);
    }

    public void setVideoRenderer(MediaViewVideoRenderer mediaViewVideoRenderer) {
        this.mMediaViewApi.setVideoRenderer(mediaViewVideoRenderer);
    }
}

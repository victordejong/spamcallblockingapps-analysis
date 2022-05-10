package com.mopub.mobileads;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.widget.ImageView;
import android.widget.VideoView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoView.class */
public class VastVideoView extends VideoView {

    /* renamed from: a */
    public VastVideoBlurLastVideoFrameTask f34318a;

    /* renamed from: b */
    public MediaMetadataRetriever f34319b = new MediaMetadataRetriever();

    public VastVideoView(Context context) {
        super(context);
        Preconditions.checkNotNull(context, "context cannot be null");
    }

    @Deprecated
    @VisibleForTesting
    public VastVideoBlurLastVideoFrameTask getBlurLastVideoFrameTask() {
        return this.f34318a;
    }

    public void onDestroy() {
        VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = this.f34318a;
        if (vastVideoBlurLastVideoFrameTask != null && vastVideoBlurLastVideoFrameTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.f34318a.cancel(true);
        }
    }

    public void prepareBlurredLastVideoFrame(ImageView imageView, String str) {
        if (this.f34319b != null) {
            VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = new VastVideoBlurLastVideoFrameTask(this.f34319b, imageView, getDuration());
            this.f34318a = vastVideoBlurLastVideoFrameTask;
            try {
                AsyncTasks.safeExecuteOnExecutor(vastVideoBlurLastVideoFrameTask, str);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to blur last video frame", e);
            }
        }
    }

    @Deprecated
    @VisibleForTesting
    public void setBlurLastVideoFrameTask(VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask) {
        this.f34318a = vastVideoBlurLastVideoFrameTask;
    }

    @Deprecated
    @VisibleForTesting
    public void setMediaMetadataRetriever(MediaMetadataRetriever mediaMetadataRetriever) {
        this.f34319b = mediaMetadataRetriever;
    }
}

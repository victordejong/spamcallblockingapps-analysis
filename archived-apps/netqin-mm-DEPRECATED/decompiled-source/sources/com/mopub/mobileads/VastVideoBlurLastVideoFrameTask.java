package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoBlurLastVideoFrameTask.class */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a */
    public final MediaMetadataRetriever f34266a;

    /* renamed from: b */
    public final ImageView f34267b;

    /* renamed from: c */
    public int f34268c;

    /* renamed from: d */
    public Bitmap f34269d;

    /* renamed from: e */
    public Bitmap f34270e;

    public VastVideoBlurLastVideoFrameTask(MediaMetadataRetriever mediaMetadataRetriever, ImageView imageView, int i) {
        this.f34266a = mediaMetadataRetriever;
        this.f34267b = imageView;
        this.f34268c = i;
    }

    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        if (!(strArr == null || strArr.length == 0 || strArr[0] == null)) {
            try {
                this.f34266a.setDataSource(strArr[0]);
                Bitmap frameAtTime = this.f34266a.getFrameAtTime((this.f34268c * 1000) - 200000, 3);
                this.f34269d = frameAtTime;
                if (frameAtTime == null) {
                    return false;
                }
                this.f34270e = ImageUtils.applyFastGaussianBlurToBitmap(frameAtTime, 4);
                return true;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to blur last video frame", e);
            }
        }
        return false;
    }

    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        if (isCancelled()) {
            onCancelled();
        } else if (bool != null && bool.booleanValue()) {
            this.f34267b.setImageBitmap(this.f34270e);
            this.f34267b.setImageAlpha(100);
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VastVideoBlurLastVideoFrameTask was cancelled.");
    }
}

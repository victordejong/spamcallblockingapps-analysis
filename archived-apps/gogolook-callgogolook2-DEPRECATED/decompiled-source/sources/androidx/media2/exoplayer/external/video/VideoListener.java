package androidx.media2.exoplayer.external.video;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/VideoListener.class */
public interface VideoListener {
    void onRenderedFirstFrame();

    void onSurfaceSizeChanged(int i, int i2);

    void onVideoSizeChanged(int i, int i2, int i3, float f);
}

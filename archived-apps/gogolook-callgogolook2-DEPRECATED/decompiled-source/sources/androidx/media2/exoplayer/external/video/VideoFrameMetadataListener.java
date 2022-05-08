package androidx.media2.exoplayer.external.video;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/VideoFrameMetadataListener.class */
public interface VideoFrameMetadataListener {
    void onVideoFrameAboutToBeRendered(long j, long j2, Format format);
}

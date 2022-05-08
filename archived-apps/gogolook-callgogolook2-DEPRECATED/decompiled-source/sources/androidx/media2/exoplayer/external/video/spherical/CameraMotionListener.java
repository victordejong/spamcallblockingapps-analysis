package androidx.media2.exoplayer.external.video.spherical;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/spherical/CameraMotionListener.class */
public interface CameraMotionListener {
    void onCameraMotion(long j, float[] fArr);

    void onCameraMotionReset();
}

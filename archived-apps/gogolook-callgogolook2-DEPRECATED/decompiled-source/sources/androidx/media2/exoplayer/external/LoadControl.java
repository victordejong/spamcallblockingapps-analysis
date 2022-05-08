package androidx.media2.exoplayer.external;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.upstream.Allocator;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/LoadControl.class */
public interface LoadControl {
    Allocator getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray);

    boolean retainBackBufferFromKeyframe();

    boolean shouldContinueLoading(long j, float f);

    boolean shouldStartPlayback(long j, float f, boolean z);
}

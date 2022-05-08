package androidx.media2.exoplayer.external.source;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.source.SequenceableLoader;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import java.io.IOException;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaPeriod.class */
public interface MediaPeriod extends SequenceableLoader {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaPeriod$Callback.class */
    public interface Callback extends SequenceableLoader.Callback<MediaPeriod> {
        void onPrepared(MediaPeriod mediaPeriod);
    }

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    boolean continueLoading(long j);

    void discardBuffer(long j, boolean z);

    long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters);

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    long getBufferedPositionUs();

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    long getNextLoadPositionUs();

    List<StreamKey> getStreamKeys(List<TrackSelection> list);

    TrackGroupArray getTrackGroups();

    void maybeThrowPrepareError() throws IOException;

    void prepare(Callback callback, long j);

    long readDiscontinuity();

    @Override // androidx.media2.exoplayer.external.source.SequenceableLoader
    void reevaluateBuffer(long j);

    long seekToUs(long j);

    long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j);
}

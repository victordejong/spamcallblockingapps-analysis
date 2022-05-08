package androidx.media2.exoplayer.external.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/BaseTrackSelection.class */
public abstract class BaseTrackSelection implements TrackSelection {
    public final long[] blacklistUntilTimes;
    public final Format[] formats;
    public final TrackGroup group;
    public int hashCode;
    public final int length;
    public final int[] tracks;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/BaseTrackSelection$DecreasingBandwidthComparator.class */
    public static final class DecreasingBandwidthComparator implements Comparator<Format> {
        public DecreasingBandwidthComparator() {
        }

        public int compare(Format format, Format format2) {
            return format2.bitrate - format.bitrate;
        }
    }

    public BaseTrackSelection(TrackGroup trackGroup, int... iArr) {
        int i = 0;
        Assertions.checkState(iArr.length > 0);
        this.group = (TrackGroup) Assertions.checkNotNull(trackGroup);
        this.length = iArr.length;
        this.formats = new Format[this.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.formats[i2] = trackGroup.getFormat(iArr[i2]);
        }
        Arrays.sort(this.formats, new DecreasingBandwidthComparator());
        this.tracks = new int[this.length];
        while (true) {
            int i3 = this.length;
            if (i < i3) {
                this.tracks[i] = trackGroup.indexOf(this.formats[i]);
                i++;
            } else {
                this.blacklistUntilTimes = new long[i3];
                return;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final boolean blacklist(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean isBlacklisted = isBlacklisted(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.length && !isBlacklisted) {
            isBlacklisted = i2 != i && !isBlacklisted(i2, elapsedRealtime);
            i2++;
        }
        if (!isBlacklisted) {
            return false;
        }
        long[] jArr = this.blacklistUntilTimes;
        jArr[i] = Math.max(jArr[i], Util.addWithOverflowDefault(elapsedRealtime, j, Long.MAX_VALUE));
        return true;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void disable() {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void enable() {
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
        if (this.group != baseTrackSelection.group || !Arrays.equals(this.tracks, baseTrackSelection.tracks)) {
            z = false;
        }
        return z;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
        return list.size();
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final Format getFormat(int i) {
        return this.formats[i];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final int getIndexInTrackGroup(int i) {
        return this.tracks[i];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final Format getSelectedFormat() {
        return this.formats[getSelectedIndex()];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final int getSelectedIndexInTrackGroup() {
        return this.tracks[getSelectedIndex()];
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final TrackGroup getTrackGroup() {
        return this.group;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (System.identityHashCode(this.group) * 31) + Arrays.hashCode(this.tracks);
        }
        return this.hashCode;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final int indexOf(int i) {
        for (int i2 = 0; i2 < this.length; i2++) {
            if (this.tracks[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final int indexOf(Format format) {
        for (int i = 0; i < this.length; i++) {
            if (this.formats[i] == format) {
                return i;
            }
        }
        return -1;
    }

    public final boolean isBlacklisted(int i, long j) {
        return this.blacklistUntilTimes[i] > j;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public final int length() {
        return this.tracks.length;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void onDiscontinuity() {
        TrackSelection$$CC.onDiscontinuity$$dflt$$(this);
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void onPlaybackSpeed(float f) {
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void updateSelectedTrack(long j, long j2, long j3) {
        TrackSelection$$CC.updateSelectedTrack$$dflt$$(this, j, j2, j3);
    }

    @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List list, MediaChunkIterator[] mediaChunkIteratorArr) {
        updateSelectedTrack(j, j2, j3);
    }
}

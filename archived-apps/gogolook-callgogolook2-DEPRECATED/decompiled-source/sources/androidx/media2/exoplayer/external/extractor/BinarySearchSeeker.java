package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.extractor.SeekMap;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker.class */
public abstract class BinarySearchSeeker {
    public static final long MAX_SKIP_BYTES = 262144;
    public final int minimumSearchRange;
    public final BinarySearchSeekMap seekMap;
    @Nullable
    public SeekOperationParams seekOperationParams;
    public final TimestampSeeker timestampSeeker;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$BinarySearchSeekMap.class */
    public static class BinarySearchSeekMap implements SeekMap {
        public final long approxBytesPerFrame;
        public final long ceilingBytePosition;
        public final long ceilingTimePosition;
        public final long durationUs;
        public final long floorBytePosition;
        public final long floorTimePosition;
        public final SeekTimestampConverter seekTimestampConverter;

        public BinarySearchSeekMap(SeekTimestampConverter seekTimestampConverter, long j, long j2, long j3, long j4, long j5, long j6) {
            this.seekTimestampConverter = seekTimestampConverter;
            this.durationUs = j;
            this.floorTimePosition = j2;
            this.ceilingTimePosition = j3;
            this.floorBytePosition = j4;
            this.ceilingBytePosition = j5;
            this.approxBytesPerFrame = j6;
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            return new SeekMap.SeekPoints(new SeekPoint(j, SeekOperationParams.calculateNextSearchBytePosition(this.seekTimestampConverter.timeUsToTargetTime(j), this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame)));
        }

        @Override // androidx.media2.exoplayer.external.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        public long timeUsToTargetTime(long j) {
            return this.seekTimestampConverter.timeUsToTargetTime(j);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter.class */
    public static final class DefaultSeekTimestampConverter implements SeekTimestampConverter {
        @Override // androidx.media2.exoplayer.external.extractor.BinarySearchSeeker.SeekTimestampConverter
        public long timeUsToTargetTime(long j) {
            return j;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder.class */
    public static final class OutputFrameHolder {
        public final ByteBuffer byteBuffer;
        public long timeUs = 0;

        public OutputFrameHolder(ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekOperationParams.class */
    public static class SeekOperationParams {
        public final long approxBytesPerFrame;
        public long ceilingBytePosition;
        public long ceilingTimePosition;
        public long floorBytePosition;
        public long floorTimePosition;
        public long nextSearchBytePosition;
        public final long seekTimeUs;
        public final long targetTimePosition;

        public SeekOperationParams(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.seekTimeUs = j;
            this.targetTimePosition = j2;
            this.floorTimePosition = j3;
            this.ceilingTimePosition = j4;
            this.floorBytePosition = j5;
            this.ceilingBytePosition = j6;
            this.approxBytesPerFrame = j7;
            this.nextSearchBytePosition = calculateNextSearchBytePosition(j2, j3, j4, j5, j6, j7);
        }

        public static long calculateNextSearchBytePosition(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return Util.constrainValue(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getCeilingBytePosition() {
            return this.ceilingBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getFloorBytePosition() {
            return this.floorBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getNextSearchBytePosition() {
            return this.nextSearchBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getSeekTimeUs() {
            return this.seekTimeUs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getTargetTimePosition() {
            return this.targetTimePosition;
        }

        private void updateNextSearchBytePosition() {
            this.nextSearchBytePosition = calculateNextSearchBytePosition(this.targetTimePosition, this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateSeekCeiling(long j, long j2) {
            this.ceilingTimePosition = j;
            this.ceilingBytePosition = j2;
            updateNextSearchBytePosition();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateSeekFloor(long j, long j2) {
            this.floorTimePosition = j;
            this.floorBytePosition = j2;
            updateNextSearchBytePosition();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter.class */
    public interface SeekTimestampConverter {
        long timeUsToTargetTime(long j);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult.class */
    public static final class TimestampSearchResult {
        public static final TimestampSearchResult NO_TIMESTAMP_IN_RANGE_RESULT = new TimestampSearchResult(-3, C0463C.TIME_UNSET, -1);
        public static final int TYPE_NO_TIMESTAMP = -3;
        public static final int TYPE_POSITION_OVERESTIMATED = -1;
        public static final int TYPE_POSITION_UNDERESTIMATED = -2;
        public static final int TYPE_TARGET_TIMESTAMP_FOUND = 0;
        public final long bytePositionToUpdate;
        public final long timestampToUpdate;
        public final int type;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSearchResult$Type.class */
        public @interface Type {
        }

        public TimestampSearchResult(int i, long j, long j2) {
            this.type = i;
            this.timestampToUpdate = j;
            this.bytePositionToUpdate = j2;
        }

        public static TimestampSearchResult overestimatedResult(long j, long j2) {
            return new TimestampSearchResult(-1, j, j2);
        }

        public static TimestampSearchResult targetFoundResult(long j) {
            return new TimestampSearchResult(0, C0463C.TIME_UNSET, j);
        }

        public static TimestampSearchResult underestimatedResult(long j, long j2) {
            return new TimestampSearchResult(-2, j, j2);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker.class */
    public interface TimestampSeeker {
        void onSeekFinished();

        TimestampSearchResult searchForTimestamp(ExtractorInput extractorInput, long j, OutputFrameHolder outputFrameHolder) throws IOException, InterruptedException;
    }

    public BinarySearchSeeker(SeekTimestampConverter seekTimestampConverter, TimestampSeeker timestampSeeker, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.timestampSeeker = timestampSeeker;
        this.minimumSearchRange = i;
        this.seekMap = new BinarySearchSeekMap(seekTimestampConverter, j, j2, j3, j4, j5, j6);
    }

    public SeekOperationParams createSeekParamsForTargetTimeUs(long j) {
        return new SeekOperationParams(j, this.seekMap.timeUsToTargetTime(j), this.seekMap.floorTimePosition, this.seekMap.ceilingTimePosition, this.seekMap.floorBytePosition, this.seekMap.ceilingBytePosition, this.seekMap.approxBytesPerFrame);
    }

    public final SeekMap getSeekMap() {
        return this.seekMap;
    }

    public int handlePendingSeek(ExtractorInput extractorInput, PositionHolder positionHolder, OutputFrameHolder outputFrameHolder) throws InterruptedException, IOException {
        TimestampSeeker timestampSeeker = (TimestampSeeker) Assertions.checkNotNull(this.timestampSeeker);
        while (true) {
            SeekOperationParams seekOperationParams = (SeekOperationParams) Assertions.checkNotNull(this.seekOperationParams);
            long floorBytePosition = seekOperationParams.getFloorBytePosition();
            long ceilingBytePosition = seekOperationParams.getCeilingBytePosition();
            long nextSearchBytePosition = seekOperationParams.getNextSearchBytePosition();
            if (ceilingBytePosition - floorBytePosition <= this.minimumSearchRange) {
                markSeekOperationFinished(false, floorBytePosition);
                return seekToPosition(extractorInput, floorBytePosition, positionHolder);
            } else if (!skipInputUntilPosition(extractorInput, nextSearchBytePosition)) {
                return seekToPosition(extractorInput, nextSearchBytePosition, positionHolder);
            } else {
                extractorInput.resetPeekPosition();
                TimestampSearchResult searchForTimestamp = timestampSeeker.searchForTimestamp(extractorInput, seekOperationParams.getTargetTimePosition(), outputFrameHolder);
                int i = searchForTimestamp.type;
                if (i == -3) {
                    markSeekOperationFinished(false, nextSearchBytePosition);
                    return seekToPosition(extractorInput, nextSearchBytePosition, positionHolder);
                } else if (i == -2) {
                    seekOperationParams.updateSeekFloor(searchForTimestamp.timestampToUpdate, searchForTimestamp.bytePositionToUpdate);
                } else if (i == -1) {
                    seekOperationParams.updateSeekCeiling(searchForTimestamp.timestampToUpdate, searchForTimestamp.bytePositionToUpdate);
                } else if (i == 0) {
                    markSeekOperationFinished(true, searchForTimestamp.bytePositionToUpdate);
                    skipInputUntilPosition(extractorInput, searchForTimestamp.bytePositionToUpdate);
                    return seekToPosition(extractorInput, searchForTimestamp.bytePositionToUpdate, positionHolder);
                } else {
                    throw new IllegalStateException("Invalid case");
                }
            }
        }
    }

    public final boolean isSeeking() {
        return this.seekOperationParams != null;
    }

    public final void markSeekOperationFinished(boolean z, long j) {
        this.seekOperationParams = null;
        this.timestampSeeker.onSeekFinished();
        onSeekOperationFinished(z, j);
    }

    public void onSeekOperationFinished(boolean z, long j) {
    }

    public final int seekToPosition(ExtractorInput extractorInput, long j, PositionHolder positionHolder) {
        if (j == extractorInput.getPosition()) {
            return 0;
        }
        positionHolder.position = j;
        return 1;
    }

    public final void setSeekTargetUs(long j) {
        SeekOperationParams seekOperationParams = this.seekOperationParams;
        if (seekOperationParams == null || seekOperationParams.getSeekTimeUs() != j) {
            this.seekOperationParams = createSeekParamsForTargetTimeUs(j);
        }
    }

    public final boolean skipInputUntilPosition(ExtractorInput extractorInput, long j) throws IOException, InterruptedException {
        long position = j - extractorInput.getPosition();
        if (position < 0 || position > 262144) {
            return false;
        }
        extractorInput.skipFully((int) position);
        return true;
    }
}

package androidx.media2.exoplayer.external.source;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.SeekParameters;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaPeriod.class */
public final class ClippingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    @Nullable
    public MediaPeriod.Callback callback;
    public long endUs;
    public final MediaPeriod mediaPeriod;
    public long pendingInitialDiscontinuityPositionUs;
    public ClippingSampleStream[] sampleStreams = new ClippingSampleStream[0];
    public long startUs;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ClippingMediaPeriod$ClippingSampleStream.class */
    public final class ClippingSampleStream implements SampleStream {
        public final SampleStream childStream;
        public boolean sentEos;

        public ClippingSampleStream(SampleStream sampleStream) {
            this.childStream = sampleStream;
        }

        public void clearSentEos() {
            this.sentEos = false;
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public boolean isReady() {
            return !ClippingMediaPeriod.this.isPendingInitialDiscontinuity() && this.childStream.isReady();
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.childStream.maybeThrowError();
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            if (this.sentEos) {
                decoderInputBuffer.setFlags(4);
                return -4;
            }
            int readData = this.childStream.readData(formatHolder, decoderInputBuffer, z);
            if (readData == -5) {
                Format format = (Format) Assertions.checkNotNull(formatHolder.format);
                if (format.encoderDelay == 0 && format.encoderPadding == 0) {
                    return -5;
                }
                int i = 0;
                int i2 = ClippingMediaPeriod.this.startUs != 0 ? 0 : format.encoderDelay;
                if (ClippingMediaPeriod.this.endUs == Long.MIN_VALUE) {
                    i = format.encoderPadding;
                }
                formatHolder.format = format.copyWithGaplessInfo(i2, i);
                return -5;
            }
            long j = ClippingMediaPeriod.this.endUs;
            if (j == Long.MIN_VALUE || ((readData != -4 || decoderInputBuffer.timeUs < j) && (readData != -3 || ClippingMediaPeriod.this.getBufferedPositionUs() != Long.MIN_VALUE))) {
                return readData;
            }
            decoderInputBuffer.clear();
            decoderInputBuffer.setFlags(4);
            this.sentEos = true;
            return -4;
        }

        @Override // androidx.media2.exoplayer.external.source.SampleStream
        public int skipData(long j) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            return this.childStream.skipData(j);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z, long j, long j2) {
        this.mediaPeriod = mediaPeriod;
        this.pendingInitialDiscontinuityPositionUs = z ? j : -9223372036854775807;
        this.startUs = j;
        this.endUs = j2;
    }

    private SeekParameters clipSeekParameters(long j, SeekParameters seekParameters) {
        long constrainValue = Util.constrainValue(seekParameters.toleranceBeforeUs, 0L, j - this.startUs);
        long j2 = seekParameters.toleranceAfterUs;
        long j3 = this.endUs;
        long constrainValue2 = Util.constrainValue(j2, 0L, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j);
        return (constrainValue == seekParameters.toleranceBeforeUs && constrainValue2 == seekParameters.toleranceAfterUs) ? seekParameters : new SeekParameters(constrainValue, constrainValue2);
    }

    public static boolean shouldKeepInitialDiscontinuity(long j, TrackSelection[] trackSelectionArr) {
        if (j == 0) {
            return false;
        }
        for (TrackSelection trackSelection : trackSelectionArr) {
            if (!(trackSelection == null || MimeTypes.isAudio(trackSelection.getSelectedFormat().sampleMimeType))) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public boolean continueLoading(long j) {
        return this.mediaPeriod.continueLoading(j);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        this.mediaPeriod.discardBuffer(j, z);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
        long j2 = this.startUs;
        if (j == j2) {
            return j2;
        }
        return this.mediaPeriod.getAdjustedSeekPositionUs(j, clipSeekParameters(j, seekParameters));
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        if (bufferedPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.endUs;
        if (j == Long.MIN_VALUE || bufferedPositionUs < j) {
            return bufferedPositionUs;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.endUs;
        if (j == Long.MIN_VALUE || nextLoadPositionUs < j) {
            return nextLoadPositionUs;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public List getStreamKeys(List list) {
        List emptyList;
        emptyList = Collections.emptyList();
        return emptyList;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    public boolean isPendingInitialDiscontinuity() {
        return this.pendingInitialDiscontinuityPositionUs != C0463C.TIME_UNSET;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.mediaPeriod.maybeThrowPrepareError();
    }

    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        this.mediaPeriod.prepare(this, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDiscontinuity() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.isPendingInitialDiscontinuity()
            if (r0 == 0) goto L_0x0024
            r0 = r5
            long r0 = r0.pendingInitialDiscontinuityPositionUs
            r6 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.pendingInitialDiscontinuityPositionUs = r1
            r0 = r5
            long r0 = r0.readDiscontinuity()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0022
            r0 = r8
            r6 = r0
        L_0x0022:
            r0 = r6
            return r0
        L_0x0024:
            r0 = r5
            androidx.media2.exoplayer.external.source.MediaPeriod r0 = r0.mediaPeriod
            long r0 = r0.readDiscontinuity()
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003a
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x003a:
            r0 = r5
            long r0 = r0.startUs
            r8 = r0
            r0 = 1
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x004e
            r0 = 1
            r11 = r0
            goto L_0x0051
        L_0x004e:
            r0 = 0
            r11 = r0
        L_0x0051:
            r0 = r11
            androidx.media2.exoplayer.external.util.Assertions.checkState(r0)
            r0 = r5
            long r0 = r0.endUs
            r8 = r0
            r0 = r10
            r11 = r0
            r0 = r8
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0077
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0074
            r0 = r10
            r11 = r0
            goto L_0x0077
        L_0x0074:
            r0 = 0
            r11 = r0
        L_0x0077:
            r0 = r11
            androidx.media2.exoplayer.external.util.Assertions.checkState(r0)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaPeriod.readDiscontinuity():long");
    }

    @Override // androidx.media2.exoplayer.external.source.MediaPeriod, androidx.media2.exoplayer.external.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.mediaPeriod.reevaluateBuffer(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r0 <= r0) goto L_0x006c;
     */
    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long seekToUs(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.pendingInitialDiscontinuityPositionUs = r1
            r0 = r5
            androidx.media2.exoplayer.external.source.ClippingMediaPeriod$ClippingSampleStream[] r0 = r0.sampleStreams
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0016:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x0033
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x002d
            r0 = r12
            r0.clearSentEos()
        L_0x002d:
            int r11 = r11 + 1
            goto L_0x0016
        L_0x0033:
            r0 = r5
            androidx.media2.exoplayer.external.source.MediaPeriod r0 = r0.mediaPeriod
            r1 = r6
            long r0 = r0.seekToUs(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.startUs
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x006f
            r0 = r5
            long r0 = r0.endUs
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x006f
        L_0x006c:
            r0 = 1
            r15 = r0
        L_0x006f:
            r0 = r15
            androidx.media2.exoplayer.external.util.Assertions.checkState(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaPeriod.seekToUs(long):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00be, code lost:
        if (r0 > r0) goto L_0x00c4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00dd  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.SampleStream[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ClippingMediaPeriod.selectTracks(androidx.media2.exoplayer.external.trackselection.TrackSelection[], boolean[], androidx.media2.exoplayer.external.source.SampleStream[], boolean[], long):long");
    }

    public void updateClipping(long j, long j2) {
        this.startUs = j;
        this.endUs = j2;
    }
}

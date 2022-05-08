package androidx.media2.exoplayer.external.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Method;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioTrackPositionTracker.class */
public final class AudioTrackPositionTracker {
    public static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    public static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    public static final long MAX_LATENCY_US = 5000000;
    public static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    public static final int MIN_LATENCY_SAMPLE_INTERVAL_US = 500000;
    public static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    public static final int PLAYSTATE_PAUSED = 2;
    public static final int PLAYSTATE_PLAYING = 3;
    public static final int PLAYSTATE_STOPPED = 1;
    @Nullable
    public AudioTimestampPoller audioTimestampPoller;
    @Nullable
    public AudioTrack audioTrack;
    public int bufferSize;
    public long bufferSizeUs;
    public long endPlaybackHeadPosition;
    public long forceResetWorkaroundTimeMs;
    @Nullable
    public Method getLatencyMethod;
    public boolean hasData;
    public boolean isOutputPcm;
    public long lastLatencySampleTimeUs;
    public long lastPlayheadSampleTimeUs;
    public long lastRawPlaybackHeadPosition;
    public long latencyUs;
    public final Listener listener;
    public boolean needsPassthroughWorkarounds;
    public int nextPlayheadOffsetIndex;
    public int outputPcmFrameSize;
    public int outputSampleRate;
    public long passthroughWorkaroundPauseOffset;
    public int playheadOffsetCount;
    public final long[] playheadOffsets;
    public long rawPlaybackHeadWrapCount;
    public long smoothedPlayheadOffsetUs;
    public long stopPlaybackHeadPosition;
    public long stopTimestampUs;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener.class */
    public interface Listener {
        void onInvalidLatency(long j);

        void onPositionFramesMismatch(long j, long j2, long j3, long j4);

        void onSystemTimeUsMismatch(long j, long j2, long j3, long j4);

        void onUnderrun(int i, long j);
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$PlayState.class */
    public @interface PlayState {
    }

    public AudioTrackPositionTracker(Listener listener) {
        this.listener = (Listener) Assertions.checkNotNull(listener);
        if (Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.playheadOffsets = new long[10];
    }

    private boolean forceHasPendingData() {
        return this.needsPassthroughWorkarounds && ((AudioTrack) Assertions.checkNotNull(this.audioTrack)).getPlayState() == 2 && getPlaybackHeadPosition() == 0;
    }

    private long framesToDurationUs(long j) {
        return (j * 1000000) / this.outputSampleRate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getPlaybackHeadPosition() {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioTrackPositionTracker.getPlaybackHeadPosition():long");
    }

    private long getPlaybackHeadPositionUs() {
        return framesToDurationUs(getPlaybackHeadPosition());
    }

    private void maybePollAndCheckTimestamp(long j, long j2) {
        AudioTimestampPoller audioTimestampPoller = (AudioTimestampPoller) Assertions.checkNotNull(this.audioTimestampPoller);
        if (audioTimestampPoller.maybePollTimestamp(j)) {
            long timestampSystemTimeUs = audioTimestampPoller.getTimestampSystemTimeUs();
            long timestampPositionFrames = audioTimestampPoller.getTimestampPositionFrames();
            if (Math.abs(timestampSystemTimeUs - j) > 5000000) {
                this.listener.onSystemTimeUsMismatch(timestampPositionFrames, timestampSystemTimeUs, j, j2);
                audioTimestampPoller.rejectTimestamp();
            } else if (Math.abs(framesToDurationUs(timestampPositionFrames) - j2) > 5000000) {
                this.listener.onPositionFramesMismatch(timestampPositionFrames, timestampSystemTimeUs, j, j2);
                audioTimestampPoller.rejectTimestamp();
            } else {
                audioTimestampPoller.acceptTimestamp();
            }
        }
    }

    private void maybeSampleSyncParams() {
        long playbackHeadPositionUs = getPlaybackHeadPositionUs();
        if (playbackHeadPositionUs != 0) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
                long[] jArr = this.playheadOffsets;
                int i = this.nextPlayheadOffsetIndex;
                jArr[i] = playbackHeadPositionUs - nanoTime;
                this.nextPlayheadOffsetIndex = (i + 1) % 10;
                int i2 = this.playheadOffsetCount;
                if (i2 < 10) {
                    this.playheadOffsetCount = i2 + 1;
                }
                this.lastPlayheadSampleTimeUs = nanoTime;
                this.smoothedPlayheadOffsetUs = 0L;
                int i3 = 0;
                while (true) {
                    int i4 = this.playheadOffsetCount;
                    if (i3 >= i4) {
                        break;
                    }
                    this.smoothedPlayheadOffsetUs += this.playheadOffsets[i3] / i4;
                    i3++;
                }
            }
            if (!this.needsPassthroughWorkarounds) {
                maybePollAndCheckTimestamp(nanoTime, playbackHeadPositionUs);
                maybeUpdateLatency(nanoTime);
            }
        }
    }

    private void maybeUpdateLatency(long j) {
        Method method;
        if (this.isOutputPcm && (method = this.getLatencyMethod) != null && j - this.lastLatencySampleTimeUs >= 500000) {
            try {
                this.latencyUs = (((Integer) Util.castNonNull((Integer) method.invoke(Assertions.checkNotNull(this.audioTrack), new Object[0]))).intValue() * 1000) - this.bufferSizeUs;
                this.latencyUs = Math.max(this.latencyUs, 0L);
                if (this.latencyUs > 5000000) {
                    this.listener.onInvalidLatency(this.latencyUs);
                    this.latencyUs = 0L;
                }
            } catch (Exception e) {
                this.getLatencyMethod = null;
            }
            this.lastLatencySampleTimeUs = j;
        }
    }

    public static boolean needsPassthroughWorkarounds(int i) {
        return Util.SDK_INT < 23 && (i == 5 || i == 6);
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
    }

    public int getAvailableBufferSize(long j) {
        return this.bufferSize - ((int) (j - (getPlaybackHeadPosition() * this.outputPcmFrameSize)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getCurrentPositionUs(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            android.media.AudioTrack r0 = r0.audioTrack
            java.lang.Object r0 = androidx.media2.exoplayer.external.util.Assertions.checkNotNull(r0)
            android.media.AudioTrack r0 = (android.media.AudioTrack) r0
            int r0 = r0.getPlayState()
            r1 = 3
            if (r0 != r1) goto L_0x0015
            r0 = r7
            r0.maybeSampleSyncParams()
        L_0x0015:
            long r0 = java.lang.System.nanoTime()
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r9 = r0
            r0 = r7
            androidx.media2.exoplayer.external.audio.AudioTimestampPoller r0 = r0.audioTimestampPoller
            java.lang.Object r0 = androidx.media2.exoplayer.external.util.Assertions.checkNotNull(r0)
            androidx.media2.exoplayer.external.audio.AudioTimestampPoller r0 = (androidx.media2.exoplayer.external.audio.AudioTimestampPoller) r0
            r11 = r0
            r0 = r11
            boolean r0 = r0.hasTimestamp()
            if (r0 == 0) goto L_0x0052
            r0 = r7
            r1 = r11
            long r1 = r1.getTimestampPositionFrames()
            long r0 = r0.framesToDurationUs(r1)
            r12 = r0
            r0 = r11
            boolean r0 = r0.isTimestampAdvancing()
            if (r0 != 0) goto L_0x0047
            r0 = r12
            return r0
        L_0x0047:
            r0 = r12
            r1 = r9
            r2 = r11
            long r2 = r2.getTimestampSystemTimeUs()
            long r1 = r1 - r2
            long r0 = r0 + r1
            return r0
        L_0x0052:
            r0 = r7
            int r0 = r0.playheadOffsetCount
            if (r0 != 0) goto L_0x0061
            r0 = r7
            long r0 = r0.getPlaybackHeadPositionUs()
            r9 = r0
            goto L_0x0068
        L_0x0061:
            r0 = r9
            r1 = r7
            long r1 = r1.smoothedPlayheadOffsetUs
            long r0 = r0 + r1
            r9 = r0
        L_0x0068:
            r0 = r9
            r12 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0077
            r0 = r9
            r1 = r7
            long r1 = r1.latencyUs
            long r0 = r0 - r1
            r12 = r0
        L_0x0077:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioTrackPositionTracker.getCurrentPositionUs(boolean):long");
    }

    public void handleEndOfStream(long j) {
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
        this.stopTimestampUs = SystemClock.elapsedRealtime() * 1000;
        this.endPlaybackHeadPosition = j;
    }

    public boolean hasPendingData(long j) {
        return j > getPlaybackHeadPosition() || forceHasPendingData();
    }

    public boolean isPlaying() {
        return ((AudioTrack) Assertions.checkNotNull(this.audioTrack)).getPlayState() == 3;
    }

    public boolean isStalled(long j) {
        return this.forceResetWorkaroundTimeMs != C0463C.TIME_UNSET && j > 0 && SystemClock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= 200;
    }

    public boolean mayHandleBuffer(long j) {
        Listener listener;
        int playState = ((AudioTrack) Assertions.checkNotNull(this.audioTrack)).getPlayState();
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2) {
                this.hasData = false;
                return false;
            } else if (playState == 1 && getPlaybackHeadPosition() == 0) {
                return false;
            }
        }
        boolean z = this.hasData;
        this.hasData = hasPendingData(j);
        if (!z || this.hasData || playState == 1 || (listener = this.listener) == null) {
            return true;
        }
        listener.onUnderrun(this.bufferSize, C0463C.usToMs(this.bufferSizeUs));
        return true;
    }

    public boolean pause() {
        resetSyncParams();
        if (this.stopTimestampUs != C0463C.TIME_UNSET) {
            return false;
        }
        ((AudioTimestampPoller) Assertions.checkNotNull(this.audioTimestampPoller)).reset();
        return true;
    }

    public void reset() {
        resetSyncParams();
        this.audioTrack = null;
        this.audioTimestampPoller = null;
    }

    public void setAudioTrack(AudioTrack audioTrack, int i, int i2, int i3) {
        this.audioTrack = audioTrack;
        this.outputPcmFrameSize = i2;
        this.bufferSize = i3;
        this.audioTimestampPoller = new AudioTimestampPoller(audioTrack);
        this.outputSampleRate = audioTrack.getSampleRate();
        this.needsPassthroughWorkarounds = needsPassthroughWorkarounds(i);
        this.isOutputPcm = Util.isEncodingLinearPcm(i);
        this.bufferSizeUs = this.isOutputPcm ? framesToDurationUs(i3 / i2) : C0463C.TIME_UNSET;
        this.lastRawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.passthroughWorkaroundPauseOffset = 0L;
        this.hasData = false;
        this.stopTimestampUs = C0463C.TIME_UNSET;
        this.forceResetWorkaroundTimeMs = C0463C.TIME_UNSET;
        this.latencyUs = 0L;
    }

    public void start() {
        ((AudioTimestampPoller) Assertions.checkNotNull(this.audioTimestampPoller)).reset();
    }
}

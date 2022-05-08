package androidx.media2.exoplayer.external.audio;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioTimestampPoller.class */
public final class AudioTimestampPoller {
    public static final int ERROR_POLL_INTERVAL_US = 500000;
    public static final int FAST_POLL_INTERVAL_US = 5000;
    public static final int INITIALIZING_DURATION_US = 500000;
    public static final int SLOW_POLL_INTERVAL_US = 10000000;
    public static final int STATE_ERROR = 4;
    public static final int STATE_INITIALIZING = 0;
    public static final int STATE_NO_TIMESTAMP = 3;
    public static final int STATE_TIMESTAMP = 1;
    public static final int STATE_TIMESTAMP_ADVANCING = 2;
    @Nullable
    public final AudioTimestampV19 audioTimestamp;
    public long initialTimestampPositionFrames;
    public long initializeSystemTimeUs;
    public long lastTimestampSampleTimeUs;
    public long sampleIntervalUs;
    public int state;

    @TargetApi(19)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioTimestampPoller$AudioTimestampV19.class */
    public static final class AudioTimestampV19 {
        public final AudioTimestamp audioTimestamp = new AudioTimestamp();
        public final AudioTrack audioTrack;
        public long lastTimestampPositionFrames;
        public long lastTimestampRawPositionFrames;
        public long rawTimestampFramePositionWrapCount;

        public AudioTimestampV19(AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
        }

        public long getTimestampPositionFrames() {
            return this.lastTimestampPositionFrames;
        }

        public long getTimestampSystemTimeUs() {
            return this.audioTimestamp.nanoTime / 1000;
        }

        public boolean maybeUpdateTimestamp() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j = this.audioTimestamp.framePosition;
                if (this.lastTimestampRawPositionFrames > j) {
                    this.rawTimestampFramePositionWrapCount++;
                }
                this.lastTimestampRawPositionFrames = j;
                this.lastTimestampPositionFrames = j + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioTimestampPoller$State.class */
    public @interface State {
    }

    public AudioTimestampPoller(AudioTrack audioTrack) {
        if (Util.SDK_INT >= 19) {
            this.audioTimestamp = new AudioTimestampV19(audioTrack);
            reset();
            return;
        }
        this.audioTimestamp = null;
        updateState(3);
    }

    private void updateState(int i) {
        this.state = i;
        if (i == 0) {
            this.lastTimestampSampleTimeUs = 0L;
            this.initialTimestampPositionFrames = -1L;
            this.initializeSystemTimeUs = System.nanoTime() / 1000;
            this.sampleIntervalUs = 5000L;
        } else if (i == 1) {
            this.sampleIntervalUs = 5000L;
        } else if (i == 2 || i == 3) {
            this.sampleIntervalUs = 10000000L;
        } else if (i == 4) {
            this.sampleIntervalUs = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }

    public void acceptTimestamp() {
        if (this.state == 4) {
            reset();
        }
    }

    public long getTimestampPositionFrames() {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        return audioTimestampV19 != null ? audioTimestampV19.getTimestampPositionFrames() : -1L;
    }

    public long getTimestampSystemTimeUs() {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        return audioTimestampV19 != null ? audioTimestampV19.getTimestampSystemTimeUs() : C0463C.TIME_UNSET;
    }

    public boolean hasTimestamp() {
        int i = this.state;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    public boolean isTimestampAdvancing() {
        return this.state == 2;
    }

    public boolean maybePollTimestamp(long j) {
        boolean z;
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        if (audioTimestampV19 == null || j - this.lastTimestampSampleTimeUs < this.sampleIntervalUs) {
            return false;
        }
        this.lastTimestampSampleTimeUs = j;
        boolean maybeUpdateTimestamp = audioTimestampV19.maybeUpdateTimestamp();
        int i = this.state;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    z = maybeUpdateTimestamp;
                    if (!maybeUpdateTimestamp) {
                        reset();
                        z = maybeUpdateTimestamp;
                    }
                } else if (i == 3) {
                    z = maybeUpdateTimestamp;
                    if (maybeUpdateTimestamp) {
                        reset();
                        z = maybeUpdateTimestamp;
                    }
                } else if (i == 4) {
                    z = maybeUpdateTimestamp;
                } else {
                    throw new IllegalStateException();
                }
            } else if (maybeUpdateTimestamp) {
                z = maybeUpdateTimestamp;
                if (this.audioTimestamp.getTimestampPositionFrames() > this.initialTimestampPositionFrames) {
                    updateState(2);
                    z = maybeUpdateTimestamp;
                }
            } else {
                reset();
                z = maybeUpdateTimestamp;
            }
        } else if (!maybeUpdateTimestamp) {
            z = maybeUpdateTimestamp;
            if (j - this.initializeSystemTimeUs > 500000) {
                updateState(3);
                z = maybeUpdateTimestamp;
            }
        } else if (this.audioTimestamp.getTimestampSystemTimeUs() >= this.initializeSystemTimeUs) {
            this.initialTimestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
            updateState(1);
            z = maybeUpdateTimestamp;
        } else {
            z = false;
        }
        return z;
    }

    public void rejectTimestamp() {
        updateState(4);
    }

    public void reset() {
        if (this.audioTimestamp != null) {
            updateState(0);
        }
    }
}

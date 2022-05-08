package androidx.media2.exoplayer.external;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.DefaultAllocator;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/DefaultLoadControl.class */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_MS = 15000;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = true;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public final DefaultAllocator allocator;
    public final long backBufferDurationUs;
    public final long bufferForPlaybackAfterRebufferUs;
    public final long bufferForPlaybackUs;
    public boolean hasVideo;
    public boolean isBuffering;
    public final long maxBufferUs;
    public final long minBufferAudioUs;
    public final long minBufferVideoUs;
    public final boolean prioritizeTimeOverSizeThresholds;
    public final boolean retainBackBufferFromKeyframe;
    public final int targetBufferBytesOverwrite;
    public int targetBufferSize;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/DefaultLoadControl$Builder.class */
    public static final class Builder {
        public DefaultAllocator allocator;
        public boolean createDefaultLoadControlCalled;
        public int minBufferAudioMs = 15000;
        public int minBufferVideoMs = 50000;
        public int maxBufferMs = 50000;
        public int bufferForPlaybackMs = 2500;
        public int bufferForPlaybackAfterRebufferMs = 5000;
        public int targetBufferBytes = -1;
        public boolean prioritizeTimeOverSizeThresholds = true;
        public int backBufferDurationMs = 0;
        public boolean retainBackBufferFromKeyframe = false;

        public DefaultLoadControl createDefaultLoadControl() {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.createDefaultLoadControlCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            return new DefaultLoadControl(this.allocator, this.minBufferAudioMs, this.minBufferVideoMs, this.maxBufferMs, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.backBufferDurationMs, this.retainBackBufferFromKeyframe);
        }

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.allocator = defaultAllocator;
            return this;
        }

        public Builder setBackBuffer(int i, boolean z) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            DefaultLoadControl.assertGreaterOrEqual(i, 0, "backBufferDurationMs", "0");
            this.backBufferDurationMs = i;
            this.retainBackBufferFromKeyframe = z;
            return this;
        }

        public Builder setBufferDurationsMs(int i, int i2, int i3, int i4) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            DefaultLoadControl.assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
            this.minBufferAudioMs = i;
            this.minBufferVideoMs = i;
            this.maxBufferMs = i2;
            this.bufferForPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferMs = i4;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.prioritizeTimeOverSizeThresholds = z;
            return this;
        }

        public Builder setTargetBufferBytes(int i) {
            Assertions.checkState(!this.createDefaultLoadControlCalled);
            this.targetBufferBytes = i;
            return this;
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536));
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator) {
        this(defaultAllocator, 15000, 50000, 50000, 2500, 5000, -1, true, 0, false);
    }

    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
        assertGreaterOrEqual(i4, 0, "bufferForPlaybackMs", "0");
        assertGreaterOrEqual(i5, 0, "bufferForPlaybackAfterRebufferMs", "0");
        assertGreaterOrEqual(i, i4, "minBufferAudioMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i2, i4, "minBufferVideoMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i, i5, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i2, i5, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i3, i, "maxBufferMs", "minBufferAudioMs");
        assertGreaterOrEqual(i3, i2, "maxBufferMs", "minBufferVideoMs");
        assertGreaterOrEqual(i7, 0, "backBufferDurationMs", "0");
        this.allocator = defaultAllocator;
        this.minBufferAudioUs = C0463C.msToUs(i);
        this.minBufferVideoUs = C0463C.msToUs(i2);
        this.maxBufferUs = C0463C.msToUs(i3);
        this.bufferForPlaybackUs = C0463C.msToUs(i4);
        this.bufferForPlaybackAfterRebufferUs = C0463C.msToUs(i5);
        this.targetBufferBytesOverwrite = i6;
        this.prioritizeTimeOverSizeThresholds = z;
        this.backBufferDurationUs = C0463C.msToUs(i7);
        this.retainBackBufferFromKeyframe = z2;
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, boolean z) {
        this(defaultAllocator, i, i, i2, i3, i4, i5, z, 0, false);
    }

    public static void assertGreaterOrEqual(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        Assertions.checkArgument(z, sb.toString());
    }

    public static boolean hasVideo(Renderer[] rendererArr, TrackSelectionArray trackSelectionArray) {
        for (int i = 0; i < rendererArr.length; i++) {
            if (rendererArr[i].getTrackType() == 2 && trackSelectionArray.get(i) != null) {
                return true;
            }
        }
        return false;
    }

    private void reset(boolean z) {
        this.targetBufferSize = 0;
        this.isBuffering = false;
        if (z) {
            this.allocator.reset();
        }
    }

    public int calculateTargetBufferSize(Renderer[] rendererArr, TrackSelectionArray trackSelectionArray) {
        int i = 0;
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            i = i;
            if (trackSelectionArray.get(i2) != null) {
                i += Util.getDefaultBufferSize(rendererArr[i2].getTrackType());
            }
        }
        return i;
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public long getBackBufferDurationUs() {
        return this.backBufferDurationUs;
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public void onPrepared() {
        reset(false);
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public void onReleased() {
        reset(true);
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public void onStopped() {
        reset(true);
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        this.hasVideo = hasVideo(rendererArr, trackSelectionArray);
        int i = this.targetBufferBytesOverwrite;
        int i2 = i;
        if (i == -1) {
            i2 = calculateTargetBufferSize(rendererArr, trackSelectionArray);
        }
        this.targetBufferSize = i2;
        this.allocator.setTargetBufferSize(this.targetBufferSize);
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public boolean retainBackBufferFromKeyframe() {
        return this.retainBackBufferFromKeyframe;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.LoadControl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldContinueLoading(long r6, float r8) {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.upstream.DefaultAllocator r0 = r0.allocator
            int r0 = r0.getTotalBytesAllocated()
            r9 = r0
            r0 = r5
            int r0 = r0.targetBufferSize
            r10 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 < r1) goto L_0x001f
            r0 = 1
            r9 = r0
            goto L_0x0022
        L_0x001f:
            r0 = 0
            r9 = r0
        L_0x0022:
            r0 = r5
            boolean r0 = r0.hasVideo
            if (r0 == 0) goto L_0x0032
            r0 = r5
            long r0 = r0.minBufferVideoUs
            r12 = r0
            goto L_0x0038
        L_0x0032:
            r0 = r5
            long r0 = r0.minBufferAudioUs
            r12 = r0
        L_0x0038:
            r0 = r12
            r14 = r0
            r0 = r8
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0051
            r0 = r12
            r1 = r8
            long r0 = androidx.media2.exoplayer.external.util.Util.getMediaDurationForPlayoutDuration(r0, r1)
            r1 = r5
            long r1 = r1.maxBufferUs
            long r0 = java.lang.Math.min(r0, r1)
            r14 = r0
        L_0x0051:
            r0 = r6
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x007b
            r0 = r11
            r16 = r0
            r0 = r5
            boolean r0 = r0.prioritizeTimeOverSizeThresholds
            if (r0 != 0) goto L_0x0072
            r0 = r9
            if (r0 != 0) goto L_0x006f
            r0 = r11
            r16 = r0
            goto L_0x0072
        L_0x006f:
            r0 = 0
            r16 = r0
        L_0x0072:
            r0 = r5
            r1 = r16
            r0.isBuffering = r1
            goto L_0x008e
        L_0x007b:
            r0 = r6
            r1 = r5
            long r1 = r1.maxBufferUs
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0089
            r0 = r9
            if (r0 == 0) goto L_0x008e
        L_0x0089:
            r0 = r5
            r1 = 0
            r0.isBuffering = r1
        L_0x008e:
            r0 = r5
            boolean r0 = r0.isBuffering
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.DefaultLoadControl.shouldContinueLoading(long, float):boolean");
    }

    @Override // androidx.media2.exoplayer.external.LoadControl
    public boolean shouldStartPlayback(long j, float f, boolean z) {
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(j, f);
        long j2 = z ? this.bufferForPlaybackAfterRebufferUs : this.bufferForPlaybackUs;
        return j2 <= 0 || playoutDurationForMediaDuration >= j2 || (!this.prioritizeTimeOverSizeThresholds && this.allocator.getTotalBytesAllocated() >= this.targetBufferSize);
    }
}

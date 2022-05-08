package androidx.media2.exoplayer.external.trackselection;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.DefaultLoadControl;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.LoadControl;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import androidx.media2.exoplayer.external.trackselection.BufferSizeAdaptationBuilder;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionUtil;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.upstream.DefaultAllocator;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Clock;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder.class */
public final class BufferSizeAdaptationBuilder {
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_HYSTERESIS_BUFFER_MS = 5000;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_MS = 15000;
    public static final float DEFAULT_START_UP_BANDWIDTH_FRACTION = 0.75f;
    public static final int DEFAULT_START_UP_MIN_BUFFER_FOR_QUALITY_INCREASE_MS = 10000;
    @Nullable
    public DefaultAllocator allocator;
    public boolean buildCalled;
    public Clock clock = Clock.DEFAULT;
    public int minBufferMs = 15000;
    public int maxBufferMs = 50000;
    public int bufferForPlaybackMs = 2500;
    public int bufferForPlaybackAfterRebufferMs = 5000;
    public int hysteresisBufferMs = 5000;
    public float startUpBandwidthFraction = 0.75f;
    public int startUpMinBufferForQualityIncreaseMs = 10000;
    public DynamicFormatFilter dynamicFormatFilter = DynamicFormatFilter.NO_FILTER;

    /* renamed from: androidx.media2.exoplayer.external.trackselection.BufferSizeAdaptationBuilder$1 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$1.class */
    public class C05321 implements TrackSelection.Factory {
        public C05321() {
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        public TrackSelection createTrackSelection(TrackGroup trackGroup, BandwidthMeter bandwidthMeter, int... iArr) {
            return TrackSelection$Factory$$CC.createTrackSelection$$dflt$$(this, trackGroup, bandwidthMeter, iArr);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection.Factory
        public TrackSelection[] createTrackSelections(TrackSelection.Definition[] definitionArr, final BandwidthMeter bandwidthMeter) {
            return TrackSelectionUtil.createTrackSelectionsForDefinitions(definitionArr, new TrackSelectionUtil.AdaptiveTrackSelectionFactory(this, bandwidthMeter) { // from class: androidx.media2.exoplayer.external.trackselection.BufferSizeAdaptationBuilder$1$$Lambda$0
                public final BufferSizeAdaptationBuilder.C05321 arg$1;
                public final BandwidthMeter arg$2;

                {
                    this.arg$1 = this;
                    this.arg$2 = bandwidthMeter;
                }

                @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
                public TrackSelection createAdaptiveTrackSelection(TrackSelection.Definition definition) {
                    return this.arg$1.lambda$createTrackSelections$0$BufferSizeAdaptationBuilder$1(this.arg$2, definition);
                }
            });
        }

        public final /* synthetic */ TrackSelection lambda$createTrackSelections$0$BufferSizeAdaptationBuilder$1(BandwidthMeter bandwidthMeter, TrackSelection.Definition definition) {
            return new BufferSizeAdaptiveTrackSelection(definition.group, definition.tracks, bandwidthMeter, BufferSizeAdaptationBuilder.this.minBufferMs, BufferSizeAdaptationBuilder.this.maxBufferMs, BufferSizeAdaptationBuilder.this.hysteresisBufferMs, BufferSizeAdaptationBuilder.this.startUpBandwidthFraction, BufferSizeAdaptationBuilder.this.startUpMinBufferForQualityIncreaseMs, BufferSizeAdaptationBuilder.this.dynamicFormatFilter, BufferSizeAdaptationBuilder.this.clock, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$BufferSizeAdaptiveTrackSelection.class */
    public static final class BufferSizeAdaptiveTrackSelection extends BaseTrackSelection {
        public static final int BITRATE_BLACKLISTED = -1;
        public final BandwidthMeter bandwidthMeter;
        public final double bitrateToBufferFunctionIntercept;
        public final double bitrateToBufferFunctionSlope;
        public final Clock clock;
        public final DynamicFormatFilter dynamicFormatFilter;
        public final int[] formatBitrates;
        public final long hysteresisBufferUs;
        public boolean isInSteadyState;
        public final int maxBitrate;
        public final long maxBufferUs;
        public final int minBitrate;
        public final long minBufferUs;
        public float playbackSpeed;
        public int selectedIndex;
        public int selectionReason;
        public final float startUpBandwidthFraction;
        public final long startUpMinBufferForQualityIncreaseUs;

        public BufferSizeAdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter, int i, int i2, int i3, float f, int i4, DynamicFormatFilter dynamicFormatFilter, Clock clock) {
            super(trackGroup, iArr);
            this.bandwidthMeter = bandwidthMeter;
            this.minBufferUs = C0463C.msToUs(i);
            this.maxBufferUs = C0463C.msToUs(i2);
            this.hysteresisBufferUs = C0463C.msToUs(i3);
            this.startUpBandwidthFraction = f;
            this.startUpMinBufferForQualityIncreaseUs = C0463C.msToUs(i4);
            this.dynamicFormatFilter = dynamicFormatFilter;
            this.clock = clock;
            this.formatBitrates = new int[this.length];
            this.maxBitrate = getFormat(0).bitrate;
            this.minBitrate = getFormat(this.length - 1).bitrate;
            this.selectionReason = 0;
            this.playbackSpeed = 1.0f;
            this.bitrateToBufferFunctionSlope = ((this.maxBufferUs - this.hysteresisBufferUs) - this.minBufferUs) / Math.log(this.maxBitrate / this.minBitrate);
            this.bitrateToBufferFunctionIntercept = this.minBufferUs - (this.bitrateToBufferFunctionSlope * Math.log(this.minBitrate));
        }

        public /* synthetic */ BufferSizeAdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter, int i, int i2, int i3, float f, int i4, DynamicFormatFilter dynamicFormatFilter, Clock clock, C05321 r23) {
            this(trackGroup, iArr, bandwidthMeter, i, i2, i3, f, i4, dynamicFormatFilter, clock);
        }

        public static long getCurrentPeriodBufferedDurationUs(long j, long j2) {
            if (j < 0) {
                j2 += j;
            }
            return j2;
        }

        private long getTargetBufferForBitrateUs(int i) {
            return i <= this.minBitrate ? this.minBufferUs : i >= this.maxBitrate ? this.maxBufferUs - this.hysteresisBufferUs : (int) ((this.bitrateToBufferFunctionSlope * Math.log(i)) + this.bitrateToBufferFunctionIntercept);
        }

        private boolean isOutsideHysteresis(long j) {
            int[] iArr = this.formatBitrates;
            int i = this.selectedIndex;
            boolean z = true;
            if (iArr[i] == -1) {
                return true;
            }
            if (Math.abs(j - getTargetBufferForBitrateUs(iArr[i])) <= this.hysteresisBufferUs) {
                z = false;
            }
            return z;
        }

        private int selectIdealIndexUsingBandwidth(boolean z) {
            long bitrateEstimate = ((float) this.bandwidthMeter.getBitrateEstimate()) * this.startUpBandwidthFraction;
            int i = 0;
            int i2 = 0;
            while (true) {
                int[] iArr = this.formatBitrates;
                if (i >= iArr.length) {
                    return i2;
                }
                if (iArr[i] != -1) {
                    if (Math.round(iArr[i] * this.playbackSpeed) <= bitrateEstimate && this.dynamicFormatFilter.isFormatAllowed(getFormat(i), this.formatBitrates[i], z)) {
                        return i;
                    }
                    i2 = i;
                }
                i++;
            }
        }

        private int selectIdealIndexUsingBufferSize(long j) {
            int i = 0;
            int i2 = 0;
            while (true) {
                int[] iArr = this.formatBitrates;
                if (i >= iArr.length) {
                    return i2;
                }
                if (iArr[i] != -1) {
                    if (getTargetBufferForBitrateUs(iArr[i]) <= j && this.dynamicFormatFilter.isFormatAllowed(getFormat(i), this.formatBitrates[i], false)) {
                        return i;
                    }
                    i2 = i;
                }
                i++;
            }
        }

        private void selectIndexStartUpPhase(long j) {
            int selectIdealIndexUsingBandwidth = selectIdealIndexUsingBandwidth(false);
            int selectIdealIndexUsingBufferSize = selectIdealIndexUsingBufferSize(j);
            int i = this.selectedIndex;
            if (selectIdealIndexUsingBufferSize <= i) {
                this.selectedIndex = selectIdealIndexUsingBufferSize;
                this.isInSteadyState = true;
            } else if (j >= this.startUpMinBufferForQualityIncreaseUs || selectIdealIndexUsingBandwidth >= i || this.formatBitrates[i] == -1) {
                this.selectedIndex = selectIdealIndexUsingBandwidth;
            }
        }

        private void selectIndexSteadyState(long j) {
            if (isOutsideHysteresis(j)) {
                this.selectedIndex = selectIdealIndexUsingBufferSize(j);
            }
        }

        private void updateFormatBitrates(long j) {
            for (int i = 0; i < this.length; i++) {
                if (j == Long.MIN_VALUE || !isBlacklisted(i, j)) {
                    this.formatBitrates[i] = getFormat(i).bitrate;
                } else {
                    this.formatBitrates[i] = -1;
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
        @Nullable
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
        public int getSelectionReason() {
            return this.selectionReason;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
        public void onDiscontinuity() {
            this.isInSteadyState = false;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
        public void onPlaybackSpeed(float f) {
            this.playbackSpeed = f;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            updateFormatBitrates(this.clock.elapsedRealtime());
            if (this.selectionReason == 0) {
                this.selectionReason = 1;
                this.selectedIndex = selectIdealIndexUsingBandwidth(true);
                return;
            }
            long currentPeriodBufferedDurationUs = getCurrentPeriodBufferedDurationUs(j, j2);
            int i = this.selectedIndex;
            if (this.isInSteadyState) {
                selectIndexSteadyState(currentPeriodBufferedDurationUs);
            } else {
                selectIndexStartUpPhase(currentPeriodBufferedDurationUs);
            }
            if (this.selectedIndex != i) {
                this.selectionReason = 3;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/BufferSizeAdaptationBuilder$DynamicFormatFilter.class */
    public interface DynamicFormatFilter {
        public static final DynamicFormatFilter NO_FILTER = BufferSizeAdaptationBuilder$DynamicFormatFilter$$Lambda$0.$instance;

        boolean isFormatAllowed(Format format, int i, boolean z);
    }

    public Pair<TrackSelection.Factory, LoadControl> buildPlayerComponents() {
        Assertions.checkArgument(this.hysteresisBufferMs < this.maxBufferMs - this.minBufferMs);
        Assertions.checkState(!this.buildCalled);
        this.buildCalled = true;
        DefaultLoadControl.Builder targetBufferBytes = new DefaultLoadControl.Builder().setTargetBufferBytes(Integer.MAX_VALUE);
        int i = this.maxBufferMs;
        DefaultLoadControl.Builder bufferDurationsMs = targetBufferBytes.setBufferDurationsMs(i, i, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs);
        DefaultAllocator defaultAllocator = this.allocator;
        if (defaultAllocator != null) {
            bufferDurationsMs.setAllocator(defaultAllocator);
        }
        return Pair.create(new C05321(), bufferDurationsMs.createDefaultLoadControl());
    }

    public BufferSizeAdaptationBuilder setAllocator(DefaultAllocator defaultAllocator) {
        Assertions.checkState(!this.buildCalled);
        this.allocator = defaultAllocator;
        return this;
    }

    public BufferSizeAdaptationBuilder setBufferDurationsMs(int i, int i2, int i3, int i4) {
        Assertions.checkState(!this.buildCalled);
        this.minBufferMs = i;
        this.maxBufferMs = i2;
        this.bufferForPlaybackMs = i3;
        this.bufferForPlaybackAfterRebufferMs = i4;
        return this;
    }

    public BufferSizeAdaptationBuilder setClock(Clock clock) {
        Assertions.checkState(!this.buildCalled);
        this.clock = clock;
        return this;
    }

    public BufferSizeAdaptationBuilder setDynamicFormatFilter(DynamicFormatFilter dynamicFormatFilter) {
        Assertions.checkState(!this.buildCalled);
        this.dynamicFormatFilter = dynamicFormatFilter;
        return this;
    }

    public BufferSizeAdaptationBuilder setHysteresisBufferMs(int i) {
        Assertions.checkState(!this.buildCalled);
        this.hysteresisBufferMs = i;
        return this;
    }

    public BufferSizeAdaptationBuilder setStartUpTrackSelectionParameters(float f, int i) {
        Assertions.checkState(!this.buildCalled);
        this.startUpBandwidthFraction = f;
        this.startUpMinBufferForQualityIncreaseMs = i;
        return this;
    }
}

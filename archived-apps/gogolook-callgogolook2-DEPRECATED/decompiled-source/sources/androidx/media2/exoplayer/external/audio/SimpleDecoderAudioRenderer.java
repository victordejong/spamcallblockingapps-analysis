package androidx.media2.exoplayer.external.audio;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.BaseRenderer;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.PlaybackParameters;
import androidx.media2.exoplayer.external.audio.AudioRendererEventListener;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.decoder.DecoderInputBuffer;
import androidx.media2.exoplayer.external.decoder.SimpleDecoder;
import androidx.media2.exoplayer.external.decoder.SimpleOutputBuffer;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.DrmSessionManager;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MediaClock;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.TraceUtil;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer.class */
public abstract class SimpleDecoderAudioRenderer extends BaseRenderer implements MediaClock {
    public static final int REINITIALIZATION_STATE_NONE = 0;
    public static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    public static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    public boolean allowFirstBufferPositionDiscontinuity;
    public boolean allowPositionDiscontinuity;
    public final AudioSink audioSink;
    public boolean audioTrackNeedsConfigure;
    public long currentPositionUs;
    public SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException> decoder;
    public DecoderCounters decoderCounters;
    @Nullable
    public DrmSession<ExoMediaCrypto> decoderDrmSession;
    public boolean decoderReceivedBuffers;
    public int decoderReinitializationState;
    public final DrmSessionManager<ExoMediaCrypto> drmSessionManager;
    public int encoderDelay;
    public int encoderPadding;
    public final AudioRendererEventListener.EventDispatcher eventDispatcher;
    public final DecoderInputBuffer flagsOnlyBuffer;
    public final FormatHolder formatHolder;
    public DecoderInputBuffer inputBuffer;
    public Format inputFormat;
    public boolean inputStreamEnded;
    public SimpleOutputBuffer outputBuffer;
    public boolean outputStreamEnded;
    public final boolean playClearSamplesWithoutKeys;
    @Nullable
    public DrmSession<ExoMediaCrypto> sourceDrmSession;
    public boolean waitingForKeys;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer$AudioSinkListener.class */
    public final class AudioSinkListener implements AudioSink.Listener {
        public AudioSinkListener() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.Listener
        public void onAudioSessionId(int i) {
            SimpleDecoderAudioRenderer.this.eventDispatcher.audioSessionId(i);
            SimpleDecoderAudioRenderer.this.onAudioSessionId(i);
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.Listener
        public void onPositionDiscontinuity() {
            SimpleDecoderAudioRenderer.this.onAudioTrackPositionDiscontinuity();
            SimpleDecoderAudioRenderer.this.allowPositionDiscontinuity = true;
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioSink.Listener
        public void onUnderrun(int i, long j, long j2) {
            SimpleDecoderAudioRenderer.this.eventDispatcher.audioTrackUnderrun(i, j, j2);
            SimpleDecoderAudioRenderer.this.onAudioTrackUnderrun(i, j, j2);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/SimpleDecoderAudioRenderer$ReinitializationState.class */
    public @interface ReinitializationState {
    }

    public SimpleDecoderAudioRenderer() {
        this((Handler) null, (AudioRendererEventListener) null, new AudioProcessor[0]);
    }

    public SimpleDecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, @Nullable AudioCapabilities audioCapabilities) {
        this(handler, audioRendererEventListener, audioCapabilities, null, false, new AudioProcessor[0]);
    }

    public SimpleDecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, @Nullable AudioCapabilities audioCapabilities, @Nullable DrmSessionManager<ExoMediaCrypto> drmSessionManager, boolean z, AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, drmSessionManager, z, new DefaultAudioSink(audioCapabilities, audioProcessorArr));
    }

    public SimpleDecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, @Nullable DrmSessionManager<ExoMediaCrypto> drmSessionManager, boolean z, AudioSink audioSink) {
        super(1);
        this.drmSessionManager = drmSessionManager;
        this.playClearSamplesWithoutKeys = z;
        this.eventDispatcher = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        this.audioSink = audioSink;
        audioSink.setListener(new AudioSinkListener());
        this.formatHolder = new FormatHolder();
        this.flagsOnlyBuffer = DecoderInputBuffer.newFlagsOnlyInstance();
        this.decoderReinitializationState = 0;
        this.audioTrackNeedsConfigure = true;
    }

    public SimpleDecoderAudioRenderer(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, null, null, false, audioProcessorArr);
    }

    private boolean drainOutputBuffer() throws ExoPlaybackException, AudioDecoderException, AudioSink.ConfigurationException, AudioSink.InitializationException, AudioSink.WriteException {
        if (this.outputBuffer == null) {
            this.outputBuffer = (SimpleOutputBuffer) this.decoder.dequeueOutputBuffer();
            SimpleOutputBuffer simpleOutputBuffer = this.outputBuffer;
            if (simpleOutputBuffer == null) {
                return false;
            }
            int i = simpleOutputBuffer.skippedOutputBufferCount;
            if (i > 0) {
                this.decoderCounters.skippedOutputBufferCount += i;
                this.audioSink.handleDiscontinuity();
            }
        }
        if (!this.outputBuffer.isEndOfStream()) {
            if (this.audioTrackNeedsConfigure) {
                Format outputFormat = getOutputFormat();
                this.audioSink.configure(outputFormat.pcmEncoding, outputFormat.channelCount, outputFormat.sampleRate, 0, null, this.encoderDelay, this.encoderPadding);
                this.audioTrackNeedsConfigure = false;
            }
            AudioSink audioSink = this.audioSink;
            SimpleOutputBuffer simpleOutputBuffer2 = this.outputBuffer;
            if (!audioSink.handleBuffer(simpleOutputBuffer2.data, simpleOutputBuffer2.timeUs)) {
                return false;
            }
            this.decoderCounters.renderedOutputBufferCount++;
            this.outputBuffer.release();
            this.outputBuffer = null;
            return true;
        } else if (this.decoderReinitializationState == 2) {
            releaseDecoder();
            maybeInitDecoder();
            this.audioTrackNeedsConfigure = true;
            return false;
        } else {
            this.outputBuffer.release();
            this.outputBuffer = null;
            processEndOfStream();
            return false;
        }
    }

    private boolean feedInputBuffer() throws AudioDecoderException, ExoPlaybackException {
        SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException> simpleDecoder = this.decoder;
        if (simpleDecoder == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            this.inputBuffer = simpleDecoder.dequeueInputBuffer();
            if (this.inputBuffer == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 1) {
            this.inputBuffer.setFlags(4);
            this.decoder.queueInputBuffer((SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException>) this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 2;
            return false;
        }
        int readSource = this.waitingForKeys ? -4 : readSource(this.formatHolder, this.inputBuffer, false);
        if (readSource == -3) {
            return false;
        }
        if (readSource == -5) {
            onInputFormatChanged(this.formatHolder.format);
            return true;
        } else if (this.inputBuffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            this.decoder.queueInputBuffer((SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException>) this.inputBuffer);
            this.inputBuffer = null;
            return false;
        } else {
            this.waitingForKeys = shouldWaitForKeys(this.inputBuffer.isEncrypted());
            if (this.waitingForKeys) {
                return false;
            }
            this.inputBuffer.flip();
            onQueueInputBuffer(this.inputBuffer);
            this.decoder.queueInputBuffer((SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException>) this.inputBuffer);
            this.decoderReceivedBuffers = true;
            this.decoderCounters.inputBufferCount++;
            this.inputBuffer = null;
            return true;
        }
    }

    private void flushDecoder() throws ExoPlaybackException {
        this.waitingForKeys = false;
        if (this.decoderReinitializationState != 0) {
            releaseDecoder();
            maybeInitDecoder();
            return;
        }
        this.inputBuffer = null;
        SimpleOutputBuffer simpleOutputBuffer = this.outputBuffer;
        if (simpleOutputBuffer != null) {
            simpleOutputBuffer.release();
            this.outputBuffer = null;
        }
        this.decoder.flush();
        this.decoderReceivedBuffers = false;
    }

    private void maybeInitDecoder() throws ExoPlaybackException {
        if (this.decoder == null) {
            setDecoderDrmSession(this.sourceDrmSession);
            ExoMediaCrypto exoMediaCrypto = null;
            DrmSession<ExoMediaCrypto> drmSession = this.decoderDrmSession;
            if (drmSession != null) {
                ExoMediaCrypto mediaCrypto = drmSession.getMediaCrypto();
                exoMediaCrypto = mediaCrypto;
                if (mediaCrypto == null) {
                    if (this.decoderDrmSession.getError() != null) {
                        exoMediaCrypto = mediaCrypto;
                    } else {
                        return;
                    }
                }
            }
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                TraceUtil.beginSection("createAudioDecoder");
                this.decoder = createDecoder(this.inputFormat, exoMediaCrypto);
                TraceUtil.endSection();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                this.eventDispatcher.decoderInitialized(this.decoder.getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                this.decoderCounters.decoderInitCount++;
            } catch (AudioDecoderException e) {
                throw ExoPlaybackException.createForRenderer(e, getIndex());
            }
        }
    }

    private void onInputFormatChanged(Format format) throws ExoPlaybackException {
        Format format2 = this.inputFormat;
        this.inputFormat = format;
        if (!Util.areEqual(this.inputFormat.drmInitData, format2 == null ? null : format2.drmInitData)) {
            if (this.inputFormat.drmInitData != null) {
                DrmSessionManager<ExoMediaCrypto> drmSessionManager = this.drmSessionManager;
                if (drmSessionManager != null) {
                    DrmSession<ExoMediaCrypto> acquireSession = drmSessionManager.acquireSession(Looper.myLooper(), format.drmInitData);
                    if (acquireSession == this.decoderDrmSession || acquireSession == this.sourceDrmSession) {
                        this.drmSessionManager.releaseSession(acquireSession);
                    }
                    setSourceDrmSession(acquireSession);
                } else {
                    throw ExoPlaybackException.createForRenderer(new IllegalStateException("Media requires a DrmSessionManager"), getIndex());
                }
            } else {
                setSourceDrmSession(null);
            }
        }
        if (this.decoderReceivedBuffers) {
            this.decoderReinitializationState = 1;
        } else {
            releaseDecoder();
            maybeInitDecoder();
            this.audioTrackNeedsConfigure = true;
        }
        this.encoderDelay = format.encoderDelay;
        this.encoderPadding = format.encoderPadding;
        this.eventDispatcher.inputFormatChanged(format);
    }

    private void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        if (this.allowFirstBufferPositionDiscontinuity && !decoderInputBuffer.isDecodeOnly()) {
            if (Math.abs(decoderInputBuffer.timeUs - this.currentPositionUs) > 500000) {
                this.currentPositionUs = decoderInputBuffer.timeUs;
            }
            this.allowFirstBufferPositionDiscontinuity = false;
        }
    }

    private void processEndOfStream() throws ExoPlaybackException {
        this.outputStreamEnded = true;
        try {
            this.audioSink.playToEndOfStream();
        } catch (AudioSink.WriteException e) {
            throw ExoPlaybackException.createForRenderer(e, getIndex());
        }
    }

    private void releaseDecoder() {
        this.inputBuffer = null;
        this.outputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException> simpleDecoder = this.decoder;
        if (simpleDecoder != null) {
            simpleDecoder.release();
            this.decoder = null;
            this.decoderCounters.decoderReleaseCount++;
        }
        setDecoderDrmSession(null);
    }

    private void releaseDrmSessionIfUnused(@Nullable DrmSession<ExoMediaCrypto> drmSession) {
        if (drmSession != null && drmSession != this.decoderDrmSession && drmSession != this.sourceDrmSession) {
            this.drmSessionManager.releaseSession(drmSession);
        }
    }

    private void setDecoderDrmSession(@Nullable DrmSession<ExoMediaCrypto> drmSession) {
        DrmSession<ExoMediaCrypto> drmSession2 = this.decoderDrmSession;
        this.decoderDrmSession = drmSession;
        releaseDrmSessionIfUnused(drmSession2);
    }

    private void setSourceDrmSession(@Nullable DrmSession<ExoMediaCrypto> drmSession) {
        DrmSession<ExoMediaCrypto> drmSession2 = this.sourceDrmSession;
        this.sourceDrmSession = drmSession;
        releaseDrmSessionIfUnused(drmSession2);
    }

    private boolean shouldWaitForKeys(boolean z) throws ExoPlaybackException {
        if (this.decoderDrmSession == null) {
            return false;
        }
        if (!z && this.playClearSamplesWithoutKeys) {
            return false;
        }
        int state = this.decoderDrmSession.getState();
        boolean z2 = true;
        if (state != 1) {
            if (state == 4) {
                z2 = false;
            }
            return z2;
        }
        throw ExoPlaybackException.createForRenderer(this.decoderDrmSession.getError(), getIndex());
    }

    private void updateCurrentPosition() {
        long currentPositionUs = this.audioSink.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs = Math.max(this.currentPositionUs, currentPositionUs);
            }
            this.currentPositionUs = currentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
    }

    public abstract SimpleDecoder<DecoderInputBuffer, ? extends SimpleOutputBuffer, ? extends AudioDecoderException> createDecoder(Format format, ExoMediaCrypto exoMediaCrypto) throws AudioDecoderException;

    @Override // androidx.media2.exoplayer.external.BaseRenderer, androidx.media2.exoplayer.external.Renderer
    public MediaClock getMediaClock() {
        return this;
    }

    public Format getOutputFormat() {
        Format format = this.inputFormat;
        return Format.createAudioSampleFormat(null, MimeTypes.AUDIO_RAW, null, -1, -1, format.channelCount, format.sampleRate, 2, null, null, 0, null);
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.audioSink.getPlaybackParameters();
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public long getPositionUs() {
        if (getState() == 2) {
            updateCurrentPosition();
        }
        return this.currentPositionUs;
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer, androidx.media2.exoplayer.external.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
        if (i == 2) {
            this.audioSink.setVolume(((Float) obj).floatValue());
        } else if (i == 3) {
            this.audioSink.setAudioAttributes((AudioAttributes) obj);
        } else if (i != 5) {
            super.handleMessage(i, obj);
        } else {
            this.audioSink.setAuxEffectInfo((AuxEffectInfo) obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded && this.audioSink.isEnded();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isReady() {
        return this.audioSink.hasPendingData() || (this.inputFormat != null && !this.waitingForKeys && (isSourceReady() || this.outputBuffer != null));
    }

    public void onAudioSessionId(int i) {
    }

    public void onAudioTrackPositionDiscontinuity() {
    }

    public void onAudioTrackUnderrun(int i, long j, long j2) {
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        this.audioTrackNeedsConfigure = true;
        this.waitingForKeys = false;
        try {
            setSourceDrmSession(null);
            releaseDecoder();
            this.audioSink.reset();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
        }
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onEnabled(boolean z) throws ExoPlaybackException {
        this.decoderCounters = new DecoderCounters();
        this.eventDispatcher.enabled(this.decoderCounters);
        int i = getConfiguration().tunnelingAudioSessionId;
        if (i != 0) {
            this.audioSink.enableTunnelingV21(i);
        } else {
            this.audioSink.disableTunneling();
        }
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        this.audioSink.flush();
        this.currentPositionUs = j;
        this.allowFirstBufferPositionDiscontinuity = true;
        this.allowPositionDiscontinuity = true;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.decoder != null) {
            flushDecoder();
        }
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onStarted() {
        this.audioSink.play();
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onStopped() {
        updateCurrentPosition();
        this.audioSink.pause();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            try {
                this.audioSink.playToEndOfStream();
            } catch (AudioSink.WriteException e) {
                throw ExoPlaybackException.createForRenderer(e, getIndex());
            }
        } else {
            if (this.inputFormat == null) {
                this.flagsOnlyBuffer.clear();
                int readSource = readSource(this.formatHolder, this.flagsOnlyBuffer, true);
                if (readSource == -5) {
                    onInputFormatChanged(this.formatHolder.format);
                } else if (readSource == -4) {
                    Assertions.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    processEndOfStream();
                    return;
                } else {
                    return;
                }
            }
            maybeInitDecoder();
            if (this.decoder != null) {
                try {
                    TraceUtil.beginSection("drainAndFeed");
                    while (drainOutputBuffer()) {
                    }
                    while (feedInputBuffer()) {
                    }
                    TraceUtil.endSection();
                    this.decoderCounters.ensureUpdated();
                } catch (AudioDecoderException | AudioSink.ConfigurationException | AudioSink.InitializationException | AudioSink.WriteException e2) {
                    throw ExoPlaybackException.createForRenderer(e2, getIndex());
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.util.MediaClock
    public PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters) {
        return this.audioSink.setPlaybackParameters(playbackParameters);
    }

    @Override // androidx.media2.exoplayer.external.RendererCapabilities
    public final int supportsFormat(Format format) {
        int i = 0;
        if (!MimeTypes.isAudio(format.sampleMimeType)) {
            return 0;
        }
        int supportsFormatInternal = supportsFormatInternal(this.drmSessionManager, format);
        if (supportsFormatInternal <= 2) {
            return supportsFormatInternal;
        }
        if (Util.SDK_INT >= 21) {
            i = 32;
        }
        return supportsFormatInternal | i | 8;
    }

    public abstract int supportsFormatInternal(DrmSessionManager<ExoMediaCrypto> drmSessionManager, Format format);

    public final boolean supportsOutput(int i, int i2) {
        return this.audioSink.supportsOutput(i, i2);
    }
}

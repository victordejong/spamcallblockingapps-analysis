package androidx.media2.exoplayer.external.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.BaseRenderer;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.FormatHolder;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/TextRenderer.class */
public final class TextRenderer extends BaseRenderer implements Handler.Callback {
    public static final int MSG_UPDATE_OUTPUT = 0;
    public static final int REPLACEMENT_STATE_NONE = 0;
    public static final int REPLACEMENT_STATE_SIGNAL_END_OF_STREAM = 1;
    public static final int REPLACEMENT_STATE_WAIT_END_OF_STREAM = 2;
    public SubtitleDecoder decoder;
    public final SubtitleDecoderFactory decoderFactory;
    public int decoderReplacementState;
    public final FormatHolder formatHolder;
    public boolean inputStreamEnded;
    public SubtitleInputBuffer nextInputBuffer;
    public SubtitleOutputBuffer nextSubtitle;
    public int nextSubtitleEventIndex;
    public final TextOutput output;
    @Nullable
    public final Handler outputHandler;
    public boolean outputStreamEnded;
    public Format streamFormat;
    public SubtitleOutputBuffer subtitle;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/TextRenderer$Output.class */
    public interface Output extends TextOutput {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/TextRenderer$ReplacementState.class */
    public @interface ReplacementState {
    }

    public TextRenderer(TextOutput textOutput, @Nullable Looper looper) {
        this(textOutput, looper, SubtitleDecoderFactory.DEFAULT);
    }

    public TextRenderer(TextOutput textOutput, @Nullable Looper looper, SubtitleDecoderFactory subtitleDecoderFactory) {
        super(3);
        this.output = (TextOutput) Assertions.checkNotNull(textOutput);
        this.outputHandler = looper == null ? null : Util.createHandler(looper, this);
        this.decoderFactory = subtitleDecoderFactory;
        this.formatHolder = new FormatHolder();
    }

    private void clearOutput() {
        updateOutput(Collections.emptyList());
    }

    private long getNextEventTime() {
        int i = this.nextSubtitleEventIndex;
        return (i == -1 || i >= this.subtitle.getEventTimeCount()) ? Long.MAX_VALUE : this.subtitle.getEventTime(this.nextSubtitleEventIndex);
    }

    private void invokeUpdateOutputInternal(List<Cue> list) {
        this.output.onCues(list);
    }

    private void releaseBuffers() {
        this.nextInputBuffer = null;
        this.nextSubtitleEventIndex = -1;
        SubtitleOutputBuffer subtitleOutputBuffer = this.subtitle;
        if (subtitleOutputBuffer != null) {
            subtitleOutputBuffer.release();
            this.subtitle = null;
        }
        SubtitleOutputBuffer subtitleOutputBuffer2 = this.nextSubtitle;
        if (subtitleOutputBuffer2 != null) {
            subtitleOutputBuffer2.release();
            this.nextSubtitle = null;
        }
    }

    private void releaseDecoder() {
        releaseBuffers();
        this.decoder.release();
        this.decoder = null;
        this.decoderReplacementState = 0;
    }

    private void replaceDecoder() {
        releaseDecoder();
        this.decoder = this.decoderFactory.createDecoder(this.streamFormat);
    }

    private void updateOutput(List<Cue> list) {
        Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            invokeUpdateOutputInternal(list);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            invokeUpdateOutputInternal((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onDisabled() {
        this.streamFormat = null;
        clearOutput();
        releaseDecoder();
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        clearOutput();
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.decoderReplacementState != 0) {
            replaceDecoder();
            return;
        }
        releaseBuffers();
        this.decoder.flush();
    }

    @Override // androidx.media2.exoplayer.external.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j) throws ExoPlaybackException {
        this.streamFormat = formatArr[0];
        if (this.decoder != null) {
            this.decoderReplacementState = 1;
        } else {
            this.decoder = this.decoderFactory.createDecoder(this.streamFormat);
        }
    }

    @Override // androidx.media2.exoplayer.external.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        boolean z;
        if (!this.outputStreamEnded) {
            if (this.nextSubtitle == null) {
                this.decoder.setPositionUs(j);
                try {
                    this.nextSubtitle = this.decoder.dequeueOutputBuffer();
                } catch (SubtitleDecoderException e) {
                    throw ExoPlaybackException.createForRenderer(e, getIndex());
                }
            }
            if (getState() == 2) {
                if (this.subtitle != null) {
                    long nextEventTime = getNextEventTime();
                    z = false;
                    while (nextEventTime <= j) {
                        this.nextSubtitleEventIndex++;
                        nextEventTime = getNextEventTime();
                        z = true;
                    }
                } else {
                    z = false;
                }
                SubtitleOutputBuffer subtitleOutputBuffer = this.nextSubtitle;
                boolean z2 = z;
                if (subtitleOutputBuffer != null) {
                    if (subtitleOutputBuffer.isEndOfStream()) {
                        z2 = z;
                        if (!z) {
                            z2 = z;
                            if (getNextEventTime() == Long.MAX_VALUE) {
                                if (this.decoderReplacementState == 2) {
                                    replaceDecoder();
                                    z2 = z;
                                } else {
                                    releaseBuffers();
                                    this.outputStreamEnded = true;
                                    z2 = z;
                                }
                            }
                        }
                    } else {
                        z2 = z;
                        if (this.nextSubtitle.timeUs <= j) {
                            SubtitleOutputBuffer subtitleOutputBuffer2 = this.subtitle;
                            if (subtitleOutputBuffer2 != null) {
                                subtitleOutputBuffer2.release();
                            }
                            this.subtitle = this.nextSubtitle;
                            this.nextSubtitle = null;
                            this.nextSubtitleEventIndex = this.subtitle.getNextEventTimeIndex(j);
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    updateOutput(this.subtitle.getCues(j));
                }
                if (this.decoderReplacementState != 2) {
                    while (!this.inputStreamEnded) {
                        try {
                            if (this.nextInputBuffer == null) {
                                this.nextInputBuffer = this.decoder.dequeueInputBuffer();
                                if (this.nextInputBuffer == null) {
                                    return;
                                }
                            }
                            if (this.decoderReplacementState == 1) {
                                this.nextInputBuffer.setFlags(4);
                                this.decoder.queueInputBuffer(this.nextInputBuffer);
                                this.nextInputBuffer = null;
                                this.decoderReplacementState = 2;
                                return;
                            }
                            int readSource = readSource(this.formatHolder, this.nextInputBuffer, false);
                            if (readSource == -4) {
                                if (this.nextInputBuffer.isEndOfStream()) {
                                    this.inputStreamEnded = true;
                                } else {
                                    this.nextInputBuffer.subsampleOffsetUs = this.formatHolder.format.subsampleOffsetUs;
                                    this.nextInputBuffer.flip();
                                }
                                this.decoder.queueInputBuffer(this.nextInputBuffer);
                                this.nextInputBuffer = null;
                            } else if (readSource == -3) {
                                return;
                            }
                        } catch (SubtitleDecoderException e2) {
                            throw ExoPlaybackException.createForRenderer(e2, getIndex());
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.RendererCapabilities
    public int supportsFormat(Format format) {
        if (!this.decoderFactory.supportsFormat(format)) {
            return MimeTypes.isText(format.sampleMimeType) ? 1 : 0;
        }
        return BaseRenderer.supportsFormatDrm(null, format.drmInitData) ? 4 : 2;
    }
}

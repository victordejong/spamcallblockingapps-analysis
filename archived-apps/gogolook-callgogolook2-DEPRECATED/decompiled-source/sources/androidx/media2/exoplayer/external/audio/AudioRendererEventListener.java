package androidx.media2.exoplayer.external.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.AudioRendererEventListener;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioRendererEventListener.class */
public interface AudioRendererEventListener {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher.class */
    public static final class EventDispatcher {
        @Nullable
        public final Handler handler;
        @Nullable
        public final AudioRendererEventListener listener;

        public EventDispatcher(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = audioRendererEventListener;
        }

        public void audioSessionId(final int i) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, i) { // from class: androidx.media2.exoplayer.external.audio.AudioRendererEventListener$EventDispatcher$$Lambda$5
                    public final AudioRendererEventListener.EventDispatcher arg$1;
                    public final int arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = i;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37499xc1c634cd(this.arg$2);
                    }
                });
            }
        }

        public void audioTrackUnderrun(final int i, final long j, final long j2) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, i, j, j2) { // from class: androidx.media2.exoplayer.external.audio.AudioRendererEventListener$EventDispatcher$$Lambda$3
                    public final AudioRendererEventListener.EventDispatcher arg$1;
                    public final int arg$2;
                    public final long arg$3;
                    public final long arg$4;

                    {
                        this.arg$1 = this;
                        this.arg$2 = i;
                        this.arg$3 = j;
                        this.arg$4 = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37498xe45e91e2(this.arg$2, this.arg$3, this.arg$4);
                    }
                });
            }
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, str, j, j2) { // from class: androidx.media2.exoplayer.external.audio.AudioRendererEventListener$EventDispatcher$$Lambda$1
                    public final AudioRendererEventListener.EventDispatcher arg$1;
                    public final String arg$2;
                    public final long arg$3;
                    public final long arg$4;

                    {
                        this.arg$1 = this;
                        this.arg$2 = str;
                        this.arg$3 = j;
                        this.arg$4 = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37497xba417f1c(this.arg$2, this.arg$3, this.arg$4);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            if (this.listener != null) {
                this.handler.post(new Runnable(this, decoderCounters) { // from class: androidx.media2.exoplayer.external.audio.AudioRendererEventListener$EventDispatcher$$Lambda$4
                    public final AudioRendererEventListener.EventDispatcher arg$1;
                    public final DecoderCounters arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = decoderCounters;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$disabled$4$AudioRendererEventListener$EventDispatcher(this.arg$2);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, decoderCounters) { // from class: androidx.media2.exoplayer.external.audio.AudioRendererEventListener$EventDispatcher$$Lambda$0
                    public final AudioRendererEventListener.EventDispatcher arg$1;
                    public final DecoderCounters arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = decoderCounters;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$enabled$0$AudioRendererEventListener$EventDispatcher(this.arg$2);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, format) { // from class: androidx.media2.exoplayer.external.audio.AudioRendererEventListener$EventDispatcher$$Lambda$2
                    public final AudioRendererEventListener.EventDispatcher arg$1;
                    public final Format arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = format;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37496x2eadf638(this.arg$2);
                    }
                });
            }
        }

        /* renamed from: lambda$audioSessionId$5$AudioRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37499xc1c634cd(int i) {
            this.listener.onAudioSessionId(i);
        }

        /* renamed from: lambda$audioTrackUnderrun$3$AudioRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37498xe45e91e2(int i, long j, long j2) {
            this.listener.onAudioSinkUnderrun(i, j, j2);
        }

        /* renamed from: lambda$decoderInitialized$1$AudioRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37497xba417f1c(String str, long j, long j2) {
            this.listener.onAudioDecoderInitialized(str, j, j2);
        }

        public final /* synthetic */ void lambda$disabled$4$AudioRendererEventListener$EventDispatcher(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            this.listener.onAudioDisabled(decoderCounters);
        }

        public final /* synthetic */ void lambda$enabled$0$AudioRendererEventListener$EventDispatcher(DecoderCounters decoderCounters) {
            this.listener.onAudioEnabled(decoderCounters);
        }

        /* renamed from: lambda$inputFormatChanged$2$AudioRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37496x2eadf638(Format format) {
            this.listener.onAudioInputFormatChanged(format);
        }
    }

    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    void onAudioInputFormatChanged(Format format);

    void onAudioSessionId(int i);

    void onAudioSinkUnderrun(int i, long j, long j2);
}

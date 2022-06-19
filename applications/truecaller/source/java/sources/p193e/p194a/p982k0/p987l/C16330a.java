package p193e.p194a.p982k0.p987l;

import android.content.Context;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import com.nll.nativelibs.callrecording.AudioRecordInterface;
import com.nll.nativelibs.callrecording.AudioRecordWrapper;
import com.nll.nativelibs.callrecording.AudioRecordWrapper$ErrorListener;
import com.truecaller.callrecording.recorder.CallRecorder;
import java.io.IOException;
/* renamed from: e.a.k0.l.a */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/a.class */
public class C16330a extends AbstractC16332b implements CallRecorder, AudioRecordWrapper$ErrorListener {

    /* renamed from: b */
    public final int f45955b;

    /* renamed from: c */
    public final String f45956c;

    /* renamed from: d */
    public final CallRecorder.AbstractC3629a f45957d;

    /* renamed from: e */
    public final Context f45958e;

    /* renamed from: f */
    public C16331a f45959f;

    /* renamed from: g */
    public volatile boolean f45960g;

    /* renamed from: h */
    public MediaMuxer f45961h;

    /* renamed from: e.a.k0.l.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/a$a.class */
    public class C16331a extends Thread {

        /* renamed from: a */
        public final AudioRecordInterface f45962a;

        /* renamed from: b */
        public final MediaCodec f45963b;

        /* renamed from: c */
        public final int f45964c;

        /* renamed from: d */
        public volatile boolean f45965d = true;

        /* renamed from: e */
        public long f45966e;

        /* renamed from: f */
        public boolean f45967f;

        public C16331a(AudioRecordInterface audioRecordInterface, MediaCodec mediaCodec, int i) {
            C16330a.this = r4;
            this.f45962a = audioRecordInterface;
            this.f45963b = mediaCodec;
            this.f45964c = i;
            mediaCodec.start();
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x01cf, code lost:
            throw new java.lang.IllegalStateException("encoderOutputBuffer " + r0 + " was null");
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 819
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p987l.C16330a.C16331a.run():void");
        }
    }

    public C16330a(String str, CallRecorder.AbstractC3629a abstractC3629a, Context context, int i) {
        this.f45956c = str;
        this.f45957d = abstractC3629a;
        this.f45958e = context;
        this.f45955b = i;
    }

    @Override // com.truecaller.callrecording.recorder.CallRecorder
    /* renamed from: a */
    public void mo17515a() throws Exception {
        synchronized (this) {
            try {
                int minBufferSize = AudioRecord.getMinBufferSize(JosStatusCodes.RTN_CODE_COMMON_ERROR, 16, 2);
                int i = 24576;
                if (24576 < minBufferSize) {
                    i = ((minBufferSize / 1024) + 1) * 1024 * 2;
                }
                AudioRecordWrapper audioRecordWrapper = new AudioRecordWrapper(this.f45958e, this.f45955b, (int) JosStatusCodes.RTN_CODE_COMMON_ERROR, 16, 2, i, this);
                if (audioRecordWrapper.getState() != 1) {
                    throw new IllegalStateException("AudioRecordWrapper initialization failed");
                }
                MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", JosStatusCodes.RTN_CODE_COMMON_ERROR, 1);
                createAudioFormat.setInteger("aac-profile", 2);
                createAudioFormat.setInteger("max-input-size", 8192);
                createAudioFormat.setInteger("bitrate", 32768);
                MediaCodec createEncoderByType = MediaCodec.createEncoderByType("audio/mp4a-latm");
                createEncoderByType.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 1);
                this.f45959f = new C16331a(audioRecordWrapper, createEncoderByType, 1024);
                this.f45969a = CallRecorder.RecordingState.READY;
            } catch (Exception e) {
                this.f45969a = CallRecorder.RecordingState.ERROR;
                throw e;
            }
        }
    }

    @Override // com.nll.nativelibs.callrecording.AudioRecordWrapper$ErrorListener
    public void onError(Exception exc) {
        this.f45969a = CallRecorder.RecordingState.ERROR;
        this.f45957d.onError(exc);
    }

    @Override // com.truecaller.callrecording.recorder.CallRecorder
    public void start() throws IOException, IllegalStateException {
        synchronized (this) {
            String str = "start:: mState: " + this.f45969a;
            if (this.f45969a != CallRecorder.RecordingState.READY) {
                this.f45969a = CallRecorder.RecordingState.ERROR;
                throw new IllegalStateException("Recorder cannot be started/restarted");
            }
            this.f45961h = new MediaMuxer(this.f45956c, 0);
            this.f45960g = true;
            this.f45969a = CallRecorder.RecordingState.RECORDING;
            this.f45959f.start();
        }
    }

    @Override // com.truecaller.callrecording.recorder.CallRecorder
    public void stop() throws IOException, IllegalStateException {
        synchronized (this) {
            String str = "stop: mState: " + this.f45969a;
            this.f45959f.f45965d = false;
            if (this.f45969a != CallRecorder.RecordingState.RECORDING) {
                this.f45969a = CallRecorder.RecordingState.ERROR;
                throw new IllegalStateException("Recorder not recording");
            }
            this.f45969a = CallRecorder.RecordingState.STOPPED;
        }
    }
}

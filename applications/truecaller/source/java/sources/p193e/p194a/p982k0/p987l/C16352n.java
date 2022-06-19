package p193e.p194a.p982k0.p987l;

import android.content.ContentResolver;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import com.truecaller.callrecording.recorder.CallRecorder;
import java.io.IOException;
/* renamed from: e.a.k0.l.n */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/n.class */
public class C16352n extends AbstractC16332b implements CallRecorder {

    /* renamed from: b */
    public final String f46009b;

    /* renamed from: c */
    public final ContentResolver f46010c;

    /* renamed from: d */
    public final boolean f46011d;

    /* renamed from: e */
    public final int f46012e;

    /* renamed from: f */
    public final MediaRecorder f46013f = new MediaRecorder();

    /* renamed from: g */
    public ParcelFileDescriptor f46014g;

    /* renamed from: h */
    public CancellationSignal f46015h;

    public C16352n(String str, ContentResolver contentResolver, boolean z, int i) {
        this.f46009b = str;
        this.f46010c = contentResolver;
        this.f46011d = z;
        this.f46012e = i;
    }

    @Override // com.truecaller.callrecording.recorder.CallRecorder
    /* renamed from: a */
    public void mo17515a() throws Exception {
        synchronized (this) {
            try {
                this.f46013f.setAudioSource(this.f46012e);
                if (this.f46011d) {
                    this.f46013f.setOutputFormat(2);
                    this.f46013f.setAudioEncoder(4);
                    this.f46013f.setAudioEncodingBitRate(96000);
                    this.f46013f.setAudioSamplingRate(96000);
                } else {
                    this.f46013f.setOutputFormat(1);
                    this.f46013f.setAudioEncoder(1);
                }
                this.f45969a = CallRecorder.RecordingState.READY;
            } catch (Exception e) {
                this.f45969a = CallRecorder.RecordingState.ERROR;
                throw e;
            }
        }
    }

    @Override // com.truecaller.callrecording.recorder.CallRecorder
    public void start() throws IOException, IllegalStateException {
        synchronized (this) {
            if (this.f45969a != CallRecorder.RecordingState.READY) {
                this.f45969a = CallRecorder.RecordingState.ERROR;
                throw new IllegalStateException("Recorder cannot be started/restarted");
            }
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    CancellationSignal cancellationSignal = this.f46015h;
                    if (cancellationSignal != null && !cancellationSignal.isCanceled()) {
                        this.f46015h.cancel();
                    }
                    this.f46015h = new CancellationSignal();
                    ParcelFileDescriptor openFileDescriptor = this.f46010c.openFileDescriptor(Uri.parse(this.f46009b), "w", this.f46015h);
                    this.f46014g = openFileDescriptor;
                    this.f46013f.setOutputFile(openFileDescriptor.getFileDescriptor());
                } else {
                    this.f46013f.setOutputFile(this.f46009b);
                }
                this.f46013f.prepare();
                this.f46013f.start();
                this.f45969a = CallRecorder.RecordingState.RECORDING;
            } catch (Exception e) {
                this.f45969a = CallRecorder.RecordingState.ERROR;
                throw e;
            }
        }
    }

    @Override // com.truecaller.callrecording.recorder.CallRecorder
    public void stop() throws IOException, IllegalStateException {
        synchronized (this) {
            if (this.f45969a != CallRecorder.RecordingState.RECORDING) {
                this.f45969a = CallRecorder.RecordingState.ERROR;
                throw new IllegalStateException("Recorder not recording");
            }
            this.f46013f.stop();
            this.f46013f.release();
            this.f45969a = CallRecorder.RecordingState.STOPPED;
            ParcelFileDescriptor parcelFileDescriptor = this.f46014g;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
            }
            CancellationSignal cancellationSignal = this.f46015h;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
            }
        }
    }
}

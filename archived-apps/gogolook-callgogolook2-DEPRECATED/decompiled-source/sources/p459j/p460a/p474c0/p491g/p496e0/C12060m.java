package p459j.p460a.p474c0.p491g.p496e0;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.net.Uri;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.criteo.publisher.model.C2052w;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import java.io.FileNotFoundException;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12205r;
/* renamed from: j.a.c0.g.e0.m */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/m.class */
public class C12060m extends MediaRecorder {

    /* renamed from: a */
    public Uri f27033a = MediaScratchFileProvider.m27783b(C12205r.m6813a(m7346b()));

    /* renamed from: b */
    public final CamcorderProfile f27034b;

    /* renamed from: j.a.c0.g.e0.m$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/m$a.class */
    public class RunnableC12061a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Uri f27035a;

        public RunnableC12061a(C12060m mVar, Uri uri) {
            this.f27035a = uri;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(this.f27035a, null, null);
        }
    }

    public C12060m(Camera camera, int i, int i2, int i3) throws FileNotFoundException {
        this.f27034b = CamcorderProfile.get(i, 0);
        long j = i3 * 0.85f;
        CamcorderProfile camcorderProfile = this.f27034b;
        int i4 = camcorderProfile.audioBitRate;
        int i5 = camcorderProfile.videoBitRate;
        double d = (8 * j) / (i4 + i5);
        int i6 = i5;
        int i7 = i4;
        if (d < 25.0d) {
            double d2 = d / 25.0d;
            i7 = (int) (i4 * d2);
            i6 = (int) (i5 * d2);
        }
        setCamera(camera);
        setOrientationHint(i2);
        setAudioSource(5);
        setVideoSource(1);
        setOutputFormat(this.f27034b.fileFormat);
        setOutputFile(AbstractC11516a.m9413n().mo9412a().getContentResolver().openFileDescriptor(this.f27033a, C2052w.f2268l).getFileDescriptor());
        setAudioEncodingBitRate(i7);
        setAudioChannels(this.f27034b.audioChannels);
        setAudioEncoder(this.f27034b.audioCodec);
        setAudioSamplingRate(this.f27034b.audioSampleRate);
        setVideoEncodingBitRate(i6);
        setVideoEncoder(this.f27034b.videoCodec);
        setVideoFrameRate(this.f27034b.videoFrameRate);
        CamcorderProfile camcorderProfile2 = this.f27034b;
        setVideoSize(camcorderProfile2.videoFrameWidth, camcorderProfile2.videoFrameHeight);
        setMaxFileSize(j);
    }

    /* renamed from: a */
    public void m7347a() {
        AbstractAsyncTaskC12189n0.m6856a(new RunnableC12061a(this, this.f27033a));
        this.f27033a = null;
    }

    /* renamed from: b */
    public String m7346b() {
        return this.f27034b.fileFormat == 2 ? MimeTypes.VIDEO_MP4 : MimeTypes.VIDEO_H263;
    }

    /* renamed from: c */
    public int m7345c() {
        return this.f27034b.videoFrameHeight;
    }

    /* renamed from: d */
    public Uri m7344d() {
        return this.f27033a;
    }

    /* renamed from: e */
    public int m7343e() {
        return this.f27034b.videoFrameWidth;
    }
}

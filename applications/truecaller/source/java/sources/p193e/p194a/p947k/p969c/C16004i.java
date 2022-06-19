package p193e.p194a.p947k.p969c;

import android.media.MediaRecorder;
import android.util.Size;
import android.view.Display;
import android.view.Surface;
import com.truecaller.log.AssertionUtil;
import com.truecaller.videocallerid.utils.CameraViewManagerImpl;
import java.io.File;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
import p1727n3.p1758e.p1767b.C25898c1;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1807k.p1820h.AbstractC26552b;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.c.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/i.class */
public final class C16004i implements C25898c1.AbstractC25902d {

    /* renamed from: a */
    public final /* synthetic */ CameraViewManagerImpl f45120a;

    /* renamed from: e.a.k.c.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i$a.class */
    public static final class C16005a implements MediaRecorder.OnInfoListener {
        public C16005a() {
            C16004i.this = r4;
        }

        @Override // android.media.MediaRecorder.OnInfoListener
        public final void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
            a<s> aVar;
            if (i != 800 || (aVar = C16004i.this.f45120a.f16125l) == null) {
                return;
            }
            s sVar = (s) aVar.invoke();
        }
    }

    /* renamed from: e.a.k.c.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i$b.class */
    public static final class C16006b<T> implements AbstractC26552b<C25910f1.AbstractC25916f> {

        /* renamed from: b */
        public final /* synthetic */ boolean f45123b;

        public C16006b(boolean z) {
            C16004i.this = r4;
            this.f45123b = z;
        }

        @Override // p1727n3.p1807k.p1820h.AbstractC26552b
        public void accept(C25910f1.AbstractC25916f abstractC25916f) {
            C25910f1.AbstractC25916f abstractC25916f2 = abstractC25916f;
            l.d(abstractC25916f2, "surfaceRequestResult");
            abstractC25916f2.mo2910a();
            if (this.f45123b) {
                C16004i.this.f45120a.f16122i.release();
            }
        }
    }

    /* renamed from: e.a.k.c.i$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i$c.class */
    public static final class C16007c extends m implements s1.z.b.l<CameraViewManagerImpl, MediaRecorder> {

        /* renamed from: b */
        public final /* synthetic */ File f45124b;

        /* renamed from: c */
        public final /* synthetic */ C25910f1 f45125c;

        /* renamed from: d */
        public final /* synthetic */ int f45126d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16007c(File file, C25910f1 c25910f1, int i) {
            super(1);
            this.f45124b = file;
            this.f45125c = c25910f1;
            this.f45126d = i;
        }

        /* renamed from: d */
        public Object m18010d(Object obj) {
            l.e((CameraViewManagerImpl) obj, "$receiver");
            MediaRecorder mediaRecorder = new MediaRecorder();
            mediaRecorder.setVideoSource(2);
            mediaRecorder.setOutputFormat(2);
            mediaRecorder.setOutputFile(this.f45124b.getAbsolutePath());
            mediaRecorder.setVideoEncodingBitRate(2500000);
            Size size = this.f45125c.f72474a;
            l.d(size, "surfaceRequest.resolution");
            int width = size.getWidth();
            Size size2 = this.f45125c.f72474a;
            l.d(size2, "surfaceRequest.resolution");
            mediaRecorder.setVideoSize(width, size2.getHeight());
            mediaRecorder.setVideoEncoder(2);
            mediaRecorder.setVideoFrameRate(30);
            mediaRecorder.setOrientationHint(this.f45126d);
            mediaRecorder.setMaxDuration(10000);
            mediaRecorder.prepare();
            return mediaRecorder;
        }
    }

    /* renamed from: e.a.k.c.i$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i$d.class */
    public static final class C16008d extends m implements s1.z.b.l<CameraViewManagerImpl, Surface> {

        /* renamed from: b */
        public final /* synthetic */ MediaRecorder f45127b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16008d(MediaRecorder mediaRecorder) {
            super(1);
            this.f45127b = mediaRecorder;
        }

        /* renamed from: d */
        public Object m18009d(Object obj) {
            l.e((CameraViewManagerImpl) obj, "$receiver");
            return this.f45127b.getSurface();
        }
    }

    public C16004i(CameraViewManagerImpl cameraViewManagerImpl) {
        this.f45120a = cameraViewManagerImpl;
    }

    @Override // p1727n3.p1758e.p1767b.C25898c1.AbstractC25902d
    /* renamed from: a */
    public final void mo2914a(C25910f1 c25910f1) {
        MediaRecorder mediaRecorder;
        Surface surface;
        AbstractC26075l0 mo2761a;
        l.e(c25910f1, "surfaceRequest");
        Display display = this.f45120a.f16128o.getDisplay();
        if (display != null) {
            AbstractC25926h0 abstractC25926h0 = this.f45120a.f16118e;
            int m2745e = (abstractC25926h0 == null || (mo2761a = abstractC25926h0.mo2761a()) == null) ? 0 : mo2761a.m2745e(display.getRotation());
            Size size = c25910f1.f72474a;
            l.d(size, "surfaceRequest.resolution");
            CameraViewManagerImpl cameraViewManagerImpl = this.f45120a;
            File file = cameraViewManagerImpl.f16121h;
            if (file == null) {
                return;
            }
            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
            l.d(newSingleThreadExecutor, "Executors.newSingleThreadExecutor()");
            cameraViewManagerImpl.f16124k = newSingleThreadExecutor;
            file.getAbsolutePath();
            String str = "Recording rotation: " + m2745e + ", recording size: " + size;
            CameraViewManagerImpl cameraViewManagerImpl2 = this.f45120a;
            C16007c c16007c = new C16007c(file, c25910f1, m2745e);
            Objects.requireNonNull(cameraViewManagerImpl2);
            try {
                mediaRecorder = c16007c.m18010d(cameraViewManagerImpl2);
            } catch (Exception e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                mediaRecorder = null;
            }
            MediaRecorder mediaRecorder2 = mediaRecorder;
            if (mediaRecorder2 == null) {
                c25910f1.m2911b();
                return;
            }
            mediaRecorder2.setOnInfoListener(new C16005a());
            boolean tryAcquire = this.f45120a.f16122i.tryAcquire(3000L, TimeUnit.MILLISECONDS);
            CameraViewManagerImpl cameraViewManagerImpl3 = this.f45120a;
            C16008d c16008d = new C16008d(mediaRecorder2);
            Objects.requireNonNull(cameraViewManagerImpl3);
            try {
                surface = c16008d.m18009d(cameraViewManagerImpl3);
            } catch (Exception e2) {
                AssertionUtil.reportThrowableButNeverCrash(e2);
                surface = null;
            }
            Surface surface2 = surface;
            if (surface2 == null) {
                return;
            }
            ExecutorService executorService = this.f45120a.f16124k;
            if (executorService == null) {
                l.l("recorderExecutor");
                throw null;
            }
            c25910f1.m2912a(surface2, executorService, new C16006b(tryAcquire));
            this.f45120a.f16120g = mediaRecorder2;
        }
    }
}

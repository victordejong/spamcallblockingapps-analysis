package p193e.p194a.p947k.p969c;

import android.media.MediaRecorder;
import com.truecaller.videocallerid.utils.CameraViewManagerImpl;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.c.k */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/k.class */
public final class C16019k extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ CameraViewManagerImpl f45166b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16019k(CameraViewManagerImpl cameraViewManagerImpl) {
        super(0);
        this.f45166b = cameraViewManagerImpl;
    }

    public Object invoke() {
        CameraViewManagerImpl cameraViewManagerImpl = this.f45166b;
        MediaRecorder mediaRecorder = cameraViewManagerImpl.f16120g;
        if (mediaRecorder != null) {
            Semaphore semaphore = cameraViewManagerImpl.f16122i;
            C16016j c16016j = new C16016j(this, mediaRecorder);
            semaphore.availablePermits();
            boolean tryAcquire = semaphore.tryAcquire(3000L, TimeUnit.MILLISECONDS);
            try {
                c16016j.invoke();
                if (tryAcquire) {
                    semaphore.release();
                }
            } catch (Throwable th) {
                if (tryAcquire) {
                    semaphore.release();
                }
                throw th;
            }
        }
        return s.a;
    }
}

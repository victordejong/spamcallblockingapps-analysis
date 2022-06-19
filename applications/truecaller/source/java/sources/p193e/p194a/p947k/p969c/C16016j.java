package p193e.p194a.p947k.p969c;

import android.media.MediaRecorder;
import com.truecaller.videocallerid.utils.CameraViewManagerImpl;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.c.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/j.class */
public final class C16016j extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C16019k f45158b;

    /* renamed from: c */
    public final /* synthetic */ MediaRecorder f45159c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16016j(C16019k c16019k, MediaRecorder mediaRecorder) {
        super(0);
        this.f45158b = c16019k;
        this.f45159c = mediaRecorder;
    }

    public Object invoke() {
        ExecutorService executorService = this.f45158b.f45166b.f16124k;
        if (executorService != null) {
            executorService.shutdown();
        }
        MediaRecorder mediaRecorder = this.f45159c;
        CameraViewManagerImpl cameraViewManagerImpl = this.f45158b.f45166b;
        Objects.requireNonNull(cameraViewManagerImpl);
        try {
            if (cameraViewManagerImpl.f16114a) {
                mediaRecorder.stop();
            }
        } catch (Exception e) {
        }
        mediaRecorder.release();
        CameraViewManagerImpl cameraViewManagerImpl2 = this.f45158b.f45166b;
        cameraViewManagerImpl2.f16120g = null;
        cameraViewManagerImpl2.f16114a = false;
        return s.a;
    }
}

package p193e.p194a.p947k.p969c;

import android.view.ScaleGestureDetector;
import com.truecaller.videocallerid.utils.CameraViewManagerImpl;
import s1.z.c.l;
/* renamed from: e.a.k.c.n */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/n.class */
public final class C16030n extends ScaleGestureDetector.SimpleOnScaleGestureListener {

    /* renamed from: a */
    public final /* synthetic */ CameraViewManagerImpl f45198a;

    public C16030n(CameraViewManagerImpl cameraViewManagerImpl) {
        this.f45198a = cameraViewManagerImpl;
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        l.e(scaleGestureDetector, "detector");
        this.f45198a.mo18028g(scaleGestureDetector.getScaleFactor());
        return true;
    }
}

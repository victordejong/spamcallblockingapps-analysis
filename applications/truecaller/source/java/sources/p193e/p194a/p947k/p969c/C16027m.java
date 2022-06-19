package p193e.p194a.p947k.p969c;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.truecaller.videocallerid.utils.CameraViewManagerImpl;
import p1727n3.p1758e.p1767b.AbstractC25895b1;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.AbstractC25929i0;
import p1727n3.p1758e.p1767b.C25891a1;
import p1727n3.p1758e.p1767b.C26087r0;
import p1727n3.p1758e.p1776d.C26139w;
import s1.z.c.l;
/* renamed from: e.a.k.c.m */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/m.class */
public final class C16027m extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ CameraViewManagerImpl f45194a;

    public C16027m(CameraViewManagerImpl cameraViewManagerImpl) {
        this.f45194a = cameraViewManagerImpl;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        AbstractC25929i0 mo2760b;
        PointF pointF;
        if (motionEvent != null) {
            this.f45194a.f16128o.performClick();
            CameraViewManagerImpl cameraViewManagerImpl = this.f45194a;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            AbstractC25926h0 abstractC25926h0 = cameraViewManagerImpl.f16118e;
            if (abstractC25926h0 == null || (mo2760b = abstractC25926h0.mo2760b()) == null) {
                return true;
            }
            l.d(mo2760b, "camera?.cameraControl ?: return");
            AbstractC25895b1 meteringPointFactory = cameraViewManagerImpl.f16128o.getMeteringPointFactory();
            l.d(meteringPointFactory, "previewView.meteringPointFactory");
            C26139w c26139w = (C26139w) meteringPointFactory;
            float[] fArr = {x, y};
            synchronized (c26139w) {
                Matrix matrix = c26139w.f72889c;
                if (matrix == null) {
                    pointF = C26139w.f72887d;
                } else {
                    matrix.mapPoints(fArr);
                    pointF = new PointF(fArr[0], fArr[1]);
                }
            }
            C25891a1 c25891a1 = new C25891a1(pointF.x, pointF.y, 0.15f, meteringPointFactory.f72438a);
            l.d(c25891a1, "factory.createPoint(x, y)");
            C26087r0.C26088a c26088a = new C26087r0.C26088a(c25891a1, 1);
            c26088a.f72797d = 0L;
            C26087r0 c26087r0 = new C26087r0(c26088a);
            l.d(c26087r0, "FocusMeteringAction.Buil…el()\n            .build()");
            mo2760b.m2883c(c26087r0);
            cameraViewManagerImpl.f16115b.g(new PointF(x, y));
            return true;
        }
        return false;
    }
}

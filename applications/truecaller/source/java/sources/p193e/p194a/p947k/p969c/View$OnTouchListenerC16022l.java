package p193e.p194a.p947k.p969c;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import p1727n3.p1807k.p1821i.C26574e;
/* renamed from: e.a.k.c.l */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/l.class */
public final class View$OnTouchListenerC16022l implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ C26574e f45167a;

    /* renamed from: b */
    public final /* synthetic */ ScaleGestureDetector f45168b;

    public View$OnTouchListenerC16022l(C26574e c26574e, ScaleGestureDetector scaleGestureDetector) {
        this.f45167a = c26574e;
        this.f45168b = scaleGestureDetector;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ((C26574e.C26576b) this.f45167a.f74449a).f74450a.onTouchEvent(motionEvent);
        this.f45168b.onTouchEvent(motionEvent);
        return true;
    }
}

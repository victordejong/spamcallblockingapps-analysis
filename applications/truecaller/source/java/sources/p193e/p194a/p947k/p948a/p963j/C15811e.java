package p193e.p194a.p947k.p948a.p963j;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import s1.z.c.l;
/* renamed from: e.a.k.a.j.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/j/e.class */
public final class C15811e extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ ToastWithActionView f44600a;

    /* renamed from: b */
    public final /* synthetic */ C15812f f44601b;

    public C15811e(ToastWithActionView toastWithActionView, C15812f c15812f) {
        this.f44600a = toastWithActionView;
        this.f44601b = c15812f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        l.e(motionEvent, "e1");
        l.e(motionEvent2, "e2");
        float y = motionEvent2.getY() - motionEvent.getY();
        if (Math.abs(y) > Math.abs(motionEvent2.getX() - motionEvent.getX())) {
            float abs = Math.abs(y);
            float f3 = 100;
            if (abs <= f3 || Math.abs(f2) <= f3 || y <= 0) {
                return true;
            }
            ToastWithActionView.m34454g(this.f44600a, this.f44601b.f44602b, 0L);
            return true;
        }
        return true;
    }
}

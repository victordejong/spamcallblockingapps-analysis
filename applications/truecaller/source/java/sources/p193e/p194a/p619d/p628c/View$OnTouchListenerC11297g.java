package p193e.p194a.p619d.p628c;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: e.a.d.c.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/g.class */
public final class View$OnTouchListenerC11297g implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ GestureDetector f33273a;

    public View$OnTouchListenerC11297g(GestureDetector gestureDetector) {
        this.f33273a = gestureDetector;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f33273a.onTouchEvent(motionEvent);
    }
}

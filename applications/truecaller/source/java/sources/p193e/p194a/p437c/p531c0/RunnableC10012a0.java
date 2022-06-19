package p193e.p194a.p437c.p531c0;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewParent;
/* renamed from: e.a.c.c0.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/a0.class */
public final class RunnableC10012a0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ View f29848a;

    /* renamed from: b */
    public final /* synthetic */ int f29849b;

    /* renamed from: c */
    public final /* synthetic */ int f29850c;

    public RunnableC10012a0(View view, int i, int i2) {
        this.f29848a = view;
        this.f29849b = i;
        this.f29850c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TouchDelegate touchDelegate;
        View view = this.f29848a;
        int i = this.f29849b;
        int i2 = this.f29850c;
        Rect rect = new Rect();
        view.getHitRect(rect);
        int width = i - rect.width();
        int i3 = width;
        if (width < 0) {
            i3 = 0;
        }
        float f = i3 / 2;
        int height = i2 - rect.height();
        if (height < 0) {
            height = 0;
        }
        float f2 = height / 2;
        if (f == 0.0f && f2 == 0.0f) {
            touchDelegate = null;
        } else {
            int i4 = rect.left;
            int i5 = (int) f;
            rect.left = i4 - i5;
            rect.right += i5;
            int i6 = rect.top;
            int i7 = (int) f2;
            rect.top = i6 - i7;
            rect.bottom += i7;
            touchDelegate = new TouchDelegate(rect, view);
        }
        if (touchDelegate != null) {
            ViewParent parent = this.f29848a.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            ((View) parent).setTouchDelegate(touchDelegate);
        }
    }
}

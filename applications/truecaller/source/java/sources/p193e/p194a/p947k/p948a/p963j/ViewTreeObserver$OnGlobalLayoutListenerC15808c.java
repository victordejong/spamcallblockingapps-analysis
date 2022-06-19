package p193e.p194a.p947k.p948a.p963j;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.transition.Slide;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import s1.z.c.l;
import s1.z.c.z;
/* renamed from: e.a.k.a.j.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/j/c.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC15808c implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ PopupWindow f44593a;

    /* renamed from: b */
    public final /* synthetic */ C15812f f44594b;

    /* renamed from: e.a.k.a.j.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/j/c$a.class */
    public static final class View$OnTouchListenerC15809a implements View.OnTouchListener {

        /* renamed from: b */
        public final /* synthetic */ z f44596b;

        /* renamed from: c */
        public final /* synthetic */ float f44597c;

        /* renamed from: d */
        public final /* synthetic */ float f44598d;

        public View$OnTouchListenerC15809a(z zVar, float f, float f2) {
            ViewTreeObserver$OnGlobalLayoutListenerC15808c.this = r4;
            this.f44596b = zVar;
            this.f44597c = f;
            this.f44598d = f2;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            Activity activity;
            l.d(motionEvent, "event");
            if (motionEvent.getAction() == 0) {
                this.f44596b.a = motionEvent.getY();
            }
            if (motionEvent.getY() <= this.f44597c || motionEvent.getY() >= this.f44598d) {
                float y = motionEvent.getY();
                float f = this.f44597c;
                if ((y >= f || this.f44596b.a >= f) && motionEvent.getY() <= this.f44598d) {
                    return false;
                }
                ToastWithActionView.C4737a c4737a = ToastWithActionView.f16055i;
                Context context = ViewTreeObserver$OnGlobalLayoutListenerC15808c.this.f44594b.f44604d.getContext();
                l.d(context, "anchorView.context");
                while (true) {
                    if (!(context instanceof Activity)) {
                        Context context2 = context;
                        if (!(context instanceof ContextWrapper)) {
                            context2 = null;
                        }
                        ContextWrapper contextWrapper = (ContextWrapper) context2;
                        activity = null;
                        if (contextWrapper == null) {
                            break;
                        }
                        Context baseContext = contextWrapper.getBaseContext();
                        activity = null;
                        if (baseContext == null) {
                            break;
                        }
                        context = baseContext;
                    } else {
                        activity = (Activity) context;
                        break;
                    }
                }
                if (activity != null) {
                    activity.dispatchTouchEvent(motionEvent);
                }
                ViewTreeObserver$OnGlobalLayoutListenerC15808c viewTreeObserver$OnGlobalLayoutListenerC15808c = ViewTreeObserver$OnGlobalLayoutListenerC15808c.this;
                ToastWithActionView.m34454g(viewTreeObserver$OnGlobalLayoutListenerC15808c.f44594b.f44603c, viewTreeObserver$OnGlobalLayoutListenerC15808c.f44593a, 0L);
                return true;
            }
            return false;
        }
    }

    public ViewTreeObserver$OnGlobalLayoutListenerC15808c(PopupWindow popupWindow, C15812f c15812f, Slide slide) {
        this.f44593a = popupWindow;
        this.f44594b = c15812f;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        float y = this.f44594b.f44603c.getY();
        float height = this.f44594b.f44603c.getHeight();
        float y2 = this.f44594b.f44603c.getY();
        z zVar = new z();
        zVar.a = 0.0f;
        this.f44593a.setTouchInterceptor(new View$OnTouchListenerC15809a(zVar, y2, y + height));
    }
}

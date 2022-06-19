package p193e.p194a.p982k0.p989n.p991b;

import android.os.Vibrator;
import android.view.View;
import android.view.WindowManager;
import com.truecaller.callrecording.C3624R;
import com.truecaller.callrecording.p154ui.bubble.BubbleLayout;
import com.truecaller.callrecording.p154ui.bubble.BubblesService;
/* renamed from: e.a.k0.n.b.h */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/h.class */
public final class C16372h {

    /* renamed from: e */
    public static C16372h f46044e;

    /* renamed from: a */
    public C16371g f46045a;

    /* renamed from: b */
    public WindowManager f46046b;

    /* renamed from: c */
    public BubblesService f46047c;

    /* renamed from: d */
    public AbstractC16374b f46048d;

    /* renamed from: e.a.k0.n.b.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/h$a.class */
    public static class C16373a {

        /* renamed from: a */
        public final C16372h f46049a;

        public C16373a(BubblesService bubblesService) {
            if (C16372h.f46044e == null) {
                C16372h.f46044e = new C16372h();
            }
            C16372h c16372h = C16372h.f46044e;
            this.f46049a = c16372h;
            c16372h.f46047c = bubblesService;
        }
    }

    /* renamed from: e.a.k0.n.b.h$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/h$b.class */
    public interface AbstractC16374b {
        /* renamed from: a */
        boolean mo17482a();
    }

    /* renamed from: a */
    public final boolean m17499a(BubbleLayout bubbleLayout) {
        boolean z = false;
        if (this.f46045a.getVisibility() == 0) {
            View childAt = this.f46045a.getChildAt(0);
            z = false;
            if (bubbleLayout.getViewParams().y >= childAt.getTop() - childAt.getMeasuredHeight()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m17498b(BubbleLayout bubbleLayout) {
        if (this.f46045a != null) {
            AbstractC16374b abstractC16374b = this.f46048d;
            if (abstractC16374b != null && !abstractC16374b.mo17482a()) {
                return;
            }
            this.f46045a.setVisibility(0);
            if (!m17499a(bubbleLayout)) {
                C16371g c16371g = this.f46045a;
                if (c16371g.f46041d) {
                    c16371g.f46041d = false;
                    c16371g.m17500a(C3624R.animator.bubble_trash_hide_magnetism_animator);
                }
                c16371g.f46043f = false;
                return;
            }
            C16371g c16371g2 = this.f46045a;
            if (!c16371g2.f46041d) {
                c16371g2.f46041d = true;
                c16371g2.m17500a(C3624R.animator.bubble_trash_shown_magnetism_animator);
            }
            C16371g c16371g3 = this.f46045a;
            if (!c16371g3.f46043f) {
                ((Vibrator) c16371g3.getContext().getSystemService("vibrator")).vibrate(70L);
                c16371g3.f46043f = true;
            }
            View childAt = this.f46045a.getChildAt(0);
            int left = childAt.getLeft();
            int measuredWidth = childAt.getMeasuredWidth() / 2;
            int top = childAt.getTop();
            int measuredHeight = childAt.getMeasuredHeight() / 2;
            int measuredWidth2 = bubbleLayout.getMeasuredWidth() / 2;
            int measuredHeight2 = bubbleLayout.getMeasuredHeight() / 2;
            bubbleLayout.getViewParams().x = (measuredWidth + left) - measuredWidth2;
            bubbleLayout.getViewParams().y = (measuredHeight + top) - measuredHeight2;
            this.f46046b.updateViewLayout(bubbleLayout, bubbleLayout.getViewParams());
        }
    }
}

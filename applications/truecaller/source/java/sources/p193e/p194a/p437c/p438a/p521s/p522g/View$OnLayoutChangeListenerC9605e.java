package p193e.p194a.p437c.p438a.p521s.p522g;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.c.a.s.g.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/g/e.class */
public final class View$OnLayoutChangeListenerC9605e implements View.OnLayoutChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C9607f f29031a;

    /* renamed from: e.a.c.a.s.g.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/s/g/e$a.class */
    public static final class RunnableC9606a implements Runnable {
        public RunnableC9606a() {
            View$OnLayoutChangeListenerC9605e.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (View$OnLayoutChangeListenerC9605e.this.f29031a.isSelected()) {
                C9607f.m27396c(View$OnLayoutChangeListenerC9605e.this.f29031a);
            } else {
                View$OnLayoutChangeListenerC9605e.this.f29031a.m27395d();
            }
        }
    }

    public View$OnLayoutChangeListenerC9605e(C9607f c9607f) {
        this.f29031a = c9607f;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        l.e(view, ViewAction.VIEW);
        view.removeOnLayoutChangeListener(this);
        this.f29031a.post(new RunnableC9606a());
    }
}

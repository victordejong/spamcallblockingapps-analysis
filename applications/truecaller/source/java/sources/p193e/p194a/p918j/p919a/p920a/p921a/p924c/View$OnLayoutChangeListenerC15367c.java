package p193e.p194a.p918j.p919a.p920a.p921a.p924c;

import android.view.View;
import android.widget.RadioButton;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p918j.p919a.p920a.p921a.p924c.C15350a;
import s1.z.c.l;
/* renamed from: e.a.j.a.a.a.c.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/c.class */
public final class View$OnLayoutChangeListenerC15367c implements View.OnLayoutChangeListener {

    /* renamed from: a */
    public final /* synthetic */ RadioButton f43666a;

    /* renamed from: b */
    public final /* synthetic */ C15350a.C15355e.C15357b f43667b;

    /* renamed from: c */
    public final /* synthetic */ C15371f f43668c;

    /* renamed from: e.a.j.a.a.a.c.c$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/c$a.class */
    public static final class RunnableC15368a implements Runnable {
        public RunnableC15368a() {
            View$OnLayoutChangeListenerC15367c.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View$OnLayoutChangeListenerC15367c view$OnLayoutChangeListenerC15367c = View$OnLayoutChangeListenerC15367c.this;
            view$OnLayoutChangeListenerC15367c.f43667b.f43652b.f43649c.d(C15371f.m18882a(view$OnLayoutChangeListenerC15367c.f43668c, null, null, false, Float.valueOf(view$OnLayoutChangeListenerC15367c.f43666a.getTextSize()), 7));
        }
    }

    public View$OnLayoutChangeListenerC15367c(RadioButton radioButton, C15350a.C15355e.C15357b c15357b, C15371f c15371f) {
        this.f43666a = radioButton;
        this.f43667b = c15357b;
        this.f43668c = c15371f;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        l.e(view, ViewAction.VIEW);
        view.removeOnLayoutChangeListener(this);
        this.f43666a.post(new RunnableC15368a());
    }
}

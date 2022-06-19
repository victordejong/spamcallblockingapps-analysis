package p193e.p194a.p947k.p948a.p953d;

import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.constraintlayout.widget.ConstraintLayout;
import s1.a.l;
/* renamed from: e.a.k.a.d.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/c.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC15646c implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ C15639a f44190a;

    public ViewTreeObserver$OnGlobalLayoutListenerC15646c(C15639a c15639a) {
        this.f44190a = c15639a;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        C15639a c15639a = this.f44190a;
        l[] lVarArr = C15639a.f44179i;
        ScrollView scrollView = c15639a.m18556QA().f45549d;
        s1.z.c.l.d(scrollView, "binding.scrollView");
        ConstraintLayout constraintLayout = c15639a.m18556QA().f45548c;
        s1.z.c.l.d(constraintLayout, "binding.scrollContent");
        if (!(scrollView.getHeight() < scrollView.getPaddingBottom() + (scrollView.getPaddingTop() + constraintLayout.getHeight()))) {
            ScrollView scrollView2 = this.f44190a.m18556QA().f45549d;
            s1.z.c.l.d(scrollView2, "binding.scrollView");
            scrollView2.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }
}

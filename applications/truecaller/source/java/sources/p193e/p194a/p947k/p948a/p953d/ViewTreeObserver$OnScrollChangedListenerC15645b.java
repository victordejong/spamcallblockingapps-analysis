package p193e.p194a.p947k.p948a.p953d;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import s1.a.l;
/* renamed from: e.a.k.a.d.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/b.class */
public final class ViewTreeObserver$OnScrollChangedListenerC15645b implements ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    public final /* synthetic */ C15639a f44189a;

    public ViewTreeObserver$OnScrollChangedListenerC15645b(C15639a c15639a) {
        this.f44189a = c15639a;
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        C15639a c15639a = this.f44189a;
        l[] lVarArr = C15639a.f44179i;
        ScrollView scrollView = c15639a.m18556QA().f45549d;
        s1.z.c.l.d(scrollView, "binding.scrollView");
        boolean z = false;
        View childAt = scrollView.getChildAt(0);
        s1.z.c.l.d(childAt, "scrollView.getChildAt(0)");
        if (childAt.getBottom() <= scrollView.getScrollY() + scrollView.getHeight()) {
            z = true;
        }
        if (z) {
            ScrollView scrollView2 = this.f44189a.m18556QA().f45549d;
            s1.z.c.l.d(scrollView2, "binding.scrollView");
            scrollView2.getViewTreeObserver().removeOnScrollChangedListener(this);
        }
    }
}

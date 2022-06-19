package p193e.p194a.p749f3;

import android.view.ViewTreeObserver;
import com.truecaller.callbubbles.CallBubblesContainerView;
import s1.z.b.a;
/* renamed from: e.a.f3.n */
/* loaded from: classes6-dex2jar.jar:e/a/f3/n.class */
public final class ViewTreeObserver$OnPreDrawListenerC13918n implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ CallBubblesContainerView f40311a;

    /* renamed from: b */
    public final /* synthetic */ a f40312b;

    public ViewTreeObserver$OnPreDrawListenerC13918n(CallBubblesContainerView callBubblesContainerView, a aVar) {
        this.f40311a = callBubblesContainerView;
        this.f40312b = aVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f40311a.getViewTreeObserver().removeOnPreDrawListener(this);
        this.f40312b.invoke();
        return true;
    }
}

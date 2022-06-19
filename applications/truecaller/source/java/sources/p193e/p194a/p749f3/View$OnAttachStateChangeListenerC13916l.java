package p193e.p194a.p749f3;

import android.view.View;
import com.truecaller.callbubbles.CallBubblesContainerView;
/* renamed from: e.a.f3.l */
/* loaded from: classes6-dex2jar.jar:e/a/f3/l.class */
public final class View$OnAttachStateChangeListenerC13916l implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallBubblesContainerView f40309a;

    public View$OnAttachStateChangeListenerC13916l(CallBubblesContainerView callBubblesContainerView) {
        this.f40309a = callBubblesContainerView;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        CallBubblesContainerView callBubblesContainerView = this.f40309a;
        int i = CallBubblesContainerView.f10548m;
        callBubblesContainerView.m35792j();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}

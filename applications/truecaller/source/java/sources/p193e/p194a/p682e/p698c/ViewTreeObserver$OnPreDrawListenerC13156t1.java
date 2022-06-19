package p193e.p194a.p682e.p698c;

import android.view.ViewTreeObserver;
/* renamed from: e.a.e.c.t1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/t1.class */
public class ViewTreeObserver$OnPreDrawListenerC13156t1 implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC13135s1 f38258a;

    public ViewTreeObserver$OnPreDrawListenerC13156t1(View$OnClickListenerC13135s1 view$OnClickListenerC13135s1) {
        this.f38258a = view$OnClickListenerC13135s1;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f38258a.f38146U.getViewTreeObserver().removeOnPreDrawListener(this);
        View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = this.f38258a;
        view$OnClickListenerC13135s1.f38189o0 = (this.f38258a.f38146U.getHeight() / 2) + view$OnClickListenerC13135s1.m22023mB(view$OnClickListenerC13135s1.f38146U);
        return false;
    }
}

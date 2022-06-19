package p193e.p194a.p682e;

import android.view.ViewTreeObserver;
import com.truecaller.p183ui.CallMeBackActivity;
/* renamed from: e.a.e.r0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/r0.class */
public class ViewTreeObserver$OnPreDrawListenerC13307r0 implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ CallMeBackActivity f38680a;

    public ViewTreeObserver$OnPreDrawListenerC13307r0(CallMeBackActivity callMeBackActivity) {
        this.f38680a = callMeBackActivity;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        float top = this.f38680a.f15536c.getTop() * 1.5f;
        this.f38680a.f15535b.setTranslationY(top);
        this.f38680a.f15541h.setFloatValues(top, 0.0f);
        this.f38680a.f15541h.start();
        this.f38680a.f15535b.getViewTreeObserver().removeOnPreDrawListener(this);
        return false;
    }
}

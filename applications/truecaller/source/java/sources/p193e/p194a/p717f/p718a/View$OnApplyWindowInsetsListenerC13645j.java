package p193e.p194a.p717f.p718a;

import android.view.View;
import android.view.WindowInsets;
import androidx.constraintlayout.widget.Guideline;
import s1.z.c.l;
/* renamed from: e.a.f.a.j */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/j.class */
public final class View$OnApplyWindowInsetsListenerC13645j implements View.OnApplyWindowInsetsListener {

    /* renamed from: a */
    public final /* synthetic */ Guideline f39540a;

    public View$OnApplyWindowInsetsListenerC13645j(Guideline guideline) {
        this.f39540a = guideline;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        Guideline guideline = this.f39540a;
        l.d(windowInsets, "insets");
        guideline.setGuidelineBegin(windowInsets.getSystemWindowInsetTop());
        return windowInsets;
    }
}

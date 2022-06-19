package p193e.p194a.p437c.p438a.p446c.p447a;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.appbar.AppBarLayout;
import com.truecaller.insights.p168ui.important.view.BusinessInsightsFragment;
import s1.a.l;
/* renamed from: e.a.c.a.c.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/a/c.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC8775c implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ View f26780a;

    /* renamed from: b */
    public final /* synthetic */ BusinessInsightsFragment f26781b;

    public ViewTreeObserver$OnGlobalLayoutListenerC8775c(View view, BusinessInsightsFragment businessInsightsFragment) {
        this.f26780a = view;
        this.f26781b = businessInsightsFragment;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f26780a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        BusinessInsightsFragment businessInsightsFragment = this.f26781b;
        l[] lVarArr = BusinessInsightsFragment.f12805m;
        AppBarLayout m35182RA = businessInsightsFragment.m35182RA();
        if (m35182RA != null) {
            m35182RA.a(this.f26781b.f12817k);
        }
    }
}

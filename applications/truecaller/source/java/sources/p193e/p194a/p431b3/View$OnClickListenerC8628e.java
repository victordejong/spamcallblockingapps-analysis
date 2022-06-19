package p193e.p194a.p431b3;

import android.view.View;
import com.truecaller.bottombar.BottomBarView;
import java.util.Objects;
/* renamed from: e.a.b3.e */
/* loaded from: classes6-dex2jar.jar:e/a/b3/e.class */
public final class View$OnClickListenerC8628e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ BottomBarView f26483a;

    public View$OnClickListenerC8628e(BottomBarView bottomBarView) {
        this.f26483a = bottomBarView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        BottomBarView bottomBarView = this.f26483a;
        Objects.requireNonNull(view, "null cannot be cast to non-null type com.truecaller.bottombar.BottomBarButtonView");
        int i = BottomBarView.f10465w;
        bottomBarView.m35808g1((C8627d) view, false);
    }
}

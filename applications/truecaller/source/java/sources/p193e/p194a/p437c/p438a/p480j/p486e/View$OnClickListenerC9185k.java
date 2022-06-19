package p193e.p194a.p437c.p438a.p480j.p486e;

import android.view.View;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import p193e.p194a.p437c.p438a.p477g.C9035h;
import p193e.p194a.p437c.p438a.p480j.p483c.C9147f;
/* renamed from: e.a.c.a.j.e.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/k.class */
public final class View$OnClickListenerC9185k implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9035h f27929a;

    /* renamed from: b */
    public final /* synthetic */ C9162a f27930b;

    public View$OnClickListenerC9185k(C9035h c9035h, C9162a c9162a) {
        this.f27929a = c9035h;
        this.f27930b = c9162a;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f27929a.f27491c.d();
        C9147f m27837UA = this.f27930b.m27837UA();
        m27837UA.f27858b.clear();
        m27837UA.notifyItemRangeChanged(0, m27837UA.getCurrentList().size());
        InsightsSmartFeedViewModel m27838TA = this.f27930b.m27838TA();
        m27838TA.f12910g.m35207a();
        m27838TA.m35155d("clear_filter");
    }
}

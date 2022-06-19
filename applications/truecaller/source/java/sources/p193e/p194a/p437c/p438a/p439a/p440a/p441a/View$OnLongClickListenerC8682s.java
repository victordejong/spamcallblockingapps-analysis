package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import android.view.View;
import com.truecaller.insights.p168ui.p169qa.view.PdoViewerActivity;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.a.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/s.class */
public final class View$OnLongClickListenerC8682s implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8680r f26577a;

    /* renamed from: b */
    public final /* synthetic */ long f26578b;

    public View$OnLongClickListenerC8682s(C8680r c8680r, long j) {
        this.f26577a = c8680r;
        this.f26578b = j;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        View view2 = this.f26577a.itemView;
        l.d(view2, "itemView");
        view2.getContext().startActivity(PdoViewerActivity.C4121c.m35159a(C22128a.m8700J(this.f26577a.itemView, "itemView", "itemView.context"), this.f26578b));
        return true;
    }
}

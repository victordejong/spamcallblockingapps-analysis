package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import android.view.View;
import com.truecaller.insights.p168ui.p169qa.view.PdoViewerActivity;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.a.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/k.class */
public final class View$OnLongClickListenerC8672k implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8670j f26558a;

    /* renamed from: b */
    public final /* synthetic */ long f26559b;

    public View$OnLongClickListenerC8672k(C8670j c8670j, long j) {
        this.f26558a = c8670j;
        this.f26559b = j;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        View view2 = this.f26558a.itemView;
        l.d(view2, "itemView");
        view2.getContext().startActivity(PdoViewerActivity.C4121c.m35159a(C22128a.m8700J(this.f26558a.itemView, "itemView", "itemView.context"), this.f26559b));
        return true;
    }
}

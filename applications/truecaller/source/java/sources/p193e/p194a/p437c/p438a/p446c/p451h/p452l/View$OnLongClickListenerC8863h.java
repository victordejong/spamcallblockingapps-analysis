package p193e.p194a.p437c.p438a.p446c.p451h.p452l;

import android.view.View;
import com.truecaller.insights.p168ui.p169qa.view.PdoViewerActivity;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.l.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/l/h.class */
public final class View$OnLongClickListenerC8863h implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C8860g f27005a;

    /* renamed from: b */
    public final /* synthetic */ long f27006b;

    public View$OnLongClickListenerC8863h(C8860g c8860g, long j) {
        this.f27005a = c8860g;
        this.f27006b = j;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        View view2 = this.f27005a.itemView;
        l.d(view2, "itemView");
        view2.getContext().startActivity(PdoViewerActivity.C4121c.m35159a(C22128a.m8700J(this.f27005a.itemView, "itemView", "itemView.context"), this.f27006b));
        return true;
    }
}

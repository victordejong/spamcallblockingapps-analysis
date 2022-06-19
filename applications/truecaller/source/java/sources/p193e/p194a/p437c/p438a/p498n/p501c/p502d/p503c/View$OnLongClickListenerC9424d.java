package p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c;

import android.view.View;
import com.truecaller.insights.p168ui.p169qa.view.PdoViewerActivity;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.c.d.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/c/d/c/d.class */
public final class View$OnLongClickListenerC9424d implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9425e f28621a;

    /* renamed from: b */
    public final /* synthetic */ long f28622b;

    public View$OnLongClickListenerC9424d(C9425e c9425e, long j) {
        this.f28621a = c9425e;
        this.f28622b = j;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        View view2 = this.f28621a.itemView;
        l.d(view2, "itemView");
        view2.getContext().startActivity(PdoViewerActivity.C4121c.m35159a(C22128a.m8700J(this.f28621a.itemView, "itemView", "itemView.context"), this.f28622b));
        return true;
    }
}

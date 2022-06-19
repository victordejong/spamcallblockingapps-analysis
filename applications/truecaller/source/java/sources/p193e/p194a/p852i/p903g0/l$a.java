package p193e.p194a.p852i.p903g0;

import android.view.View;
import n3.r.a.l;
/* renamed from: e.a.i.g0.l$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/g0/l$a.class */
public final class l$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ l f43258a;

    public l$a(l lVar) {
        this.f43258a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l activity = this.f43258a.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }
}

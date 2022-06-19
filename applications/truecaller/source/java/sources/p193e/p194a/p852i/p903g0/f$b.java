package p193e.p194a.p852i.p903g0;

import android.view.View;
import n3.r.a.l;
/* renamed from: e.a.i.g0.f$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/g0/f$b.class */
public final class f$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ f f43256a;

    public f$b(f fVar) {
        this.f43256a = fVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l activity = this.f43256a.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }
}

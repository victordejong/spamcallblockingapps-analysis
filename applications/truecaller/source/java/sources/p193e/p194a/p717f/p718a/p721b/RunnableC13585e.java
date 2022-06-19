package p193e.p194a.p717f.p718a.p721b;

import android.content.Context;
import android.view.ViewGroup;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.incallui.C4013R;
import p193e.p194a.p372b0.p373a.p383e0.C8301a;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/e.class */
public final class RunnableC13585e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C13577c f39363a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f39364b;

    public RunnableC13585e(C13577c c13577c, ViewGroup viewGroup) {
        this.f39363a = c13577c;
        this.f39364b = viewGroup;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f39363a.getContext();
        if (context != null) {
            l.d(context, "context ?: return@Runnable");
            C8301a.m28681c(C8301a.f25570a, this.f39364b, TooltipDirection.BOTTOM, C4013R.string.incallui_voip_tooltip, this.f39363a.m21610iB().f39841e, context.getResources().getDimension(C4013R.dimen.space), null, 0, false, z1.c, 224);
        }
    }
}

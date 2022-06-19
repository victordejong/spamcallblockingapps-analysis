package p193e.p194a.p852i.p869d;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import e.m.d.y.n;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.d.r */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/r.class */
public final class C15095r extends RecyclerView.AbstractC0313c0 implements AbstractC15085n.AbstractC15091f {

    /* renamed from: a */
    public final g f43038a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15095r(View view, AbstractC15191g abstractC15191g) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC15191g, "layout");
        g m13660s = C19286f.m13660s(view, 2131362924);
        this.f43038a = m13660s;
        Context context = view.getContext();
        l.d(context, "view.context");
        View z = n.z(context, abstractC15191g, (FrameLayout) m13660s.getValue());
        FrameLayout frameLayout = (FrameLayout) m13660s.getValue();
        if (frameLayout != null) {
            frameLayout.addView(z);
        }
    }
}

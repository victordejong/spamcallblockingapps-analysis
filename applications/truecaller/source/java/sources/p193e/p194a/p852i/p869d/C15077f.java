package p193e.p194a.p852i.p869d;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import e.a.i.f0.m.b;
import e.a.i.f0.m.c;
import e.m.d.y.n;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p855b.C14988a;
import p193e.p194a.p852i.p855b.C14991c;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.d.f */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/f.class */
public final class C15077f extends RecyclerView.AbstractC0313c0 implements AbstractC15085n.AbstractC15087b {

    /* renamed from: a */
    public final g f43027a;

    /* renamed from: b */
    public final C14988a f43028b;

    /* renamed from: c */
    public final AbstractC15076e f43029c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15077f(View view, AbstractC15191g abstractC15191g, AbstractC15076e abstractC15076e) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC15191g, "adLayout");
        l.e(abstractC15076e, "callback");
        this.f43029c = abstractC15076e;
        g m13660s = C19286f.m13660s(view, 2131362924);
        this.f43027a = m13660s;
        Context context = view.getContext();
        l.d(context, "view.context");
        C14988a o0 = n.o0(abstractC15191g, context);
        FrameLayout frameLayout = (FrameLayout) m13660s.getValue();
        if (frameLayout != null) {
            frameLayout.addView(o0);
        }
        this.f43028b = o0;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15085n.AbstractC15087b
    /* renamed from: c4 */
    public void mo19176c4(c cVar) {
        l.e(cVar, "ad");
        n.o(this.f43028b, C14991c.m19311a(cVar), ((b) cVar).c.f43214d, false);
        this.f43029c.onAdShown();
    }
}

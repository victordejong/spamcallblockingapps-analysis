package p193e.p194a.p852i.p869d;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import e.a.i.f0.m.b;
import e.a.i.f0.m.f;
import e.m.d.y.n;
import p193e.p194a.p852i.p853a.C14978f;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import p193e.p194a.p852i.p896f0.p902n.C15187d;
import s1.z.c.l;
/* renamed from: e.a.i.d.g */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/g.class */
public final class C15078g extends RecyclerView.AbstractC0313c0 implements AbstractC15085n.AbstractC15088c {

    /* renamed from: a */
    public final C14978f f43030a;

    /* renamed from: b */
    public final AbstractC15076e f43031b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15078g(View view, AbstractC15076e abstractC15076e) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC15076e, "callback");
        this.f43031b = abstractC15076e;
        this.f43030a = (C14978f) view;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15085n.AbstractC15088c
    /* renamed from: C1 */
    public void mo19175C1(f fVar) {
        l.e(fVar, "ad");
        n.p(this.f43030a, (C15187d) ((b) fVar).b, ((b) fVar).c.f43214d);
        this.f43031b.onAdShown();
    }
}

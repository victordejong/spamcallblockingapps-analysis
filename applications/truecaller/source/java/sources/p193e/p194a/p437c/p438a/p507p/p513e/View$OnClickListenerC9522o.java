package p193e.p194a.p437c.p438a.p507p.p513e;

import android.view.View;
import androidx.fragment.app.FragmentManager;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p480j.p482b.C9138g;
import p193e.p194a.p437c.p438a.p480j.p486e.C9162a;
import s1.a.l;
/* renamed from: e.a.c.a.p.e.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/o.class */
public final class View$OnClickListenerC9522o implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9507f f28856a;

    public View$OnClickListenerC9522o(C9507f c9507f) {
        this.f28856a = c9507f;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C9162a.C9166d c9166d = C9162a.f27893l;
        Objects.requireNonNull(c9166d);
        C9162a c9162a = new C9162a();
        FragmentManager childFragmentManager = this.f28856a.getChildFragmentManager();
        Objects.requireNonNull(c9166d);
        c9162a.show(childFragmentManager, C9162a.f27892k);
        C9507f c9507f = this.f28856a;
        l[] lVarArr = C9507f.f28829m;
        AbstractC9114h abstractC9114h = c9507f.m27488RA().f12926w;
        C9138g c9138g = C9138g.f27842b;
        abstractC9114h.mo27869Zd(C9138g.f27841a);
    }
}

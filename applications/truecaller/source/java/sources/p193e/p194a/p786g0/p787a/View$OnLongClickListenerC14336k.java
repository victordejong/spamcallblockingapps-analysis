package p193e.p194a.p786g0.p787a;

import android.content.Context;
import android.view.View;
import java.util.Objects;
import p193e.p194a.p1128p4.AbstractC19214a;
import s1.z.c.l;
/* renamed from: e.a.g0.a.k */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/k.class */
public final class View$OnLongClickListenerC14336k implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ C14320a f41437a;

    public View$OnLongClickListenerC14336k(C14320a c14320a) {
        this.f41437a = c14320a;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        Context requireContext = this.f41437a.requireContext();
        l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.qa.QaMenuOpener");
        return ((AbstractC19214a) applicationContext).mo13876z();
    }
}

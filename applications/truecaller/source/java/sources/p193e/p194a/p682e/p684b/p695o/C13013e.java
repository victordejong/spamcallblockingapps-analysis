package p193e.p194a.p682e.p684b.p695o;

import android.content.Context;
import android.widget.CompoundButton;
import s1.z.c.l;
/* renamed from: e.a.e.b.o.e */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/o/e.class */
public final class C13013e implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C13017i f37796a;

    public C13013e(C13017i c13017i) {
        this.f37796a = c13017i;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        AbstractC13025m m22205OA = this.f37796a.m22205OA();
        Context requireContext = this.f37796a.requireContext();
        l.d(requireContext, "requireContext()");
        m22205OA.mo22158gi(z, requireContext);
    }
}

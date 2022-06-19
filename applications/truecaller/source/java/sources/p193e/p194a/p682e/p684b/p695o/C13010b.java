package p193e.p194a.p682e.p684b.p695o;

import android.content.Context;
import android.widget.CompoundButton;
import s1.z.c.l;
/* renamed from: e.a.e.b.o.b */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/o/b.class */
public final class C13010b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C13017i f37793a;

    public C13010b(C13017i c13017i) {
        this.f37793a = c13017i;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        AbstractC13025m m22205OA = this.f37793a.m22205OA();
        Context requireContext = this.f37793a.requireContext();
        l.d(requireContext, "requireContext()");
        m22205OA.mo22173Ai(z, requireContext);
    }
}

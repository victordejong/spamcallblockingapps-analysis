package p193e.p194a.p682e.p684b.p691k;

import android.content.Context;
import android.widget.CompoundButton;
import s1.z.c.l;
/* renamed from: e.a.e.b.k.d */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/k/d.class */
public final class C12946d implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C12958p f37568a;

    public C12946d(C12958p c12958p) {
        this.f37568a = c12958p;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        AbstractC12965t m22373OA = this.f37568a.m22373OA();
        Context requireContext = this.f37568a.requireContext();
        l.d(requireContext, "requireContext()");
        m22373OA.mo22323k8(z, requireContext);
    }
}

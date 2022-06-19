package p193e.p194a.p682e.p684b.p694n;

import com.truecaller.p183ui.components.ComboBase;
import java.util.Objects;
import p193e.p194a.p682e.p699c2.C13197i0;
import s1.z.c.l;
/* renamed from: e.a.e.b.n.e */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/n/e.class */
public final class C12997e implements ComboBase.AbstractC4672a {

    /* renamed from: a */
    public final /* synthetic */ C13000h f37723a;

    public C12997e(C13000h c13000h) {
        this.f37723a = c13000h;
    }

    @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
    /* renamed from: a */
    public final void mo14306a(ComboBase comboBase) {
        AbstractC13004j m22274OA = this.f37723a.m22274OA();
        l.d(comboBase, "it");
        C13197i0 selection = comboBase.getSelection();
        l.d(selection, "it.selection");
        Object mo18607e = selection.mo18607e();
        Objects.requireNonNull(mo18607e, "null cannot be cast to non-null type kotlin.Boolean");
        m22274OA.mo22234Ec(((Boolean) mo18607e).booleanValue());
    }
}

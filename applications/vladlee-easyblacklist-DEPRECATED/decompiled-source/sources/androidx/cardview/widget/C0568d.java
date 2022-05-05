package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
/* renamed from: androidx.cardview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/d.class */
final class C0568d implements AbstractC0572h {
    /* renamed from: e */
    private static C0573i m8847e(AbstractC0571g gVar) {
        return (C0573i) gVar.mo8840c();
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: a */
    public final float mo8837a(AbstractC0571g gVar) {
        return m8847e(gVar).m8828b() * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: a */
    public final void mo8838a() {
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: a */
    public final void mo8836a(AbstractC0571g gVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        gVar.mo8842a(new C0573i(colorStateList, f));
        View d = gVar.mo8839d();
        d.setClipToOutline(true);
        d.setElevation(f2);
        m8847e(gVar).m8831a(f3, gVar.mo8845a(), gVar.mo8841b());
        mo8833d(gVar);
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: b */
    public final float mo8835b(AbstractC0571g gVar) {
        return m8847e(gVar).m8828b() * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: c */
    public final float mo8834c(AbstractC0571g gVar) {
        return m8847e(gVar).m8828b();
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: d */
    public final void mo8833d(AbstractC0571g gVar) {
        if (!gVar.mo8845a()) {
            gVar.mo8843a(0, 0, 0, 0);
            return;
        }
        float a = m8847e(gVar).m8832a();
        float b = m8847e(gVar).m8828b();
        int ceil = (int) Math.ceil(C0574j.m8822b(a, b, gVar.mo8841b()));
        int ceil2 = (int) Math.ceil(C0574j.m8825a(a, b, gVar.mo8841b()));
        gVar.mo8843a(ceil, ceil2, ceil, ceil2);
    }
}

package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
/* renamed from: androidx.cardview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/e.class */
class C0569e implements AbstractC0572h {

    /* renamed from: a */
    final RectF f2585a = new RectF();

    /* renamed from: e */
    private static C0574j m8846e(AbstractC0571g gVar) {
        return (C0574j) gVar.mo8840c();
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: a */
    public final float mo8837a(AbstractC0571g gVar) {
        return m8846e(gVar).m8823b();
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: a */
    public void mo8838a() {
        C0574j.f2598a = new C0570f(this);
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: a */
    public final void mo8836a(AbstractC0571g gVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C0574j jVar = new C0574j(context.getResources(), colorStateList, f, f2, f3);
        jVar.m8824a(gVar.mo8841b());
        gVar.mo8842a(jVar);
        mo8833d(gVar);
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: b */
    public final float mo8835b(AbstractC0571g gVar) {
        return m8846e(gVar).m8821c();
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: c */
    public final float mo8834c(AbstractC0571g gVar) {
        return m8846e(gVar).m8827a();
    }

    @Override // androidx.cardview.widget.AbstractC0572h
    /* renamed from: d */
    public final void mo8833d(AbstractC0571g gVar) {
        Rect rect = new Rect();
        m8846e(gVar).getPadding(rect);
        gVar.mo8844a((int) Math.ceil(m8846e(gVar).m8823b()), (int) Math.ceil(m8846e(gVar).m8821c()));
        gVar.mo8843a(rect.left, rect.top, rect.right, rect.bottom);
    }
}

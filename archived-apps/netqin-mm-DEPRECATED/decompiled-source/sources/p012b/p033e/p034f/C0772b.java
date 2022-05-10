package p012b.p033e.p034f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
/* renamed from: b.e.f.b */
/* loaded from: classes-dex2jar.jar:b/e/f/b.class */
public class C0772b implements AbstractC0776e {
    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public float mo36115a(AbstractC0775d dVar) {
        return dVar.mo36117d().getElevation();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36116a() {
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36114a(AbstractC0775d dVar, float f) {
        m36128i(dVar).m36101a(f);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36113a(AbstractC0775d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        dVar.mo36120a(new C0777f(colorStateList, f));
        View d = dVar.mo36117d();
        d.setClipToOutline(true);
        d.setElevation(f2);
        mo36108c(dVar, f3);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36112a(AbstractC0775d dVar, ColorStateList colorStateList) {
        m36128i(dVar).m36095b(colorStateList);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: b */
    public float mo36111b(AbstractC0775d dVar) {
        return m36128i(dVar).m36094c();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: b */
    public void mo36110b(AbstractC0775d dVar, float f) {
        dVar.mo36117d().setElevation(f);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: c */
    public void mo36109c(AbstractC0775d dVar) {
        mo36108c(dVar, mo36107d(dVar));
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: c */
    public void mo36108c(AbstractC0775d dVar, float f) {
        m36128i(dVar).m36100a(f, dVar.mo36119b(), dVar.mo36123a());
        m36127j(dVar);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: d */
    public float mo36107d(AbstractC0775d dVar) {
        return m36128i(dVar).m36096b();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: e */
    public ColorStateList mo36106e(AbstractC0775d dVar) {
        return m36128i(dVar).m36102a();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: f */
    public float mo36105f(AbstractC0775d dVar) {
        return mo36111b(dVar) * 2.0f;
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: g */
    public float mo36104g(AbstractC0775d dVar) {
        return mo36111b(dVar) * 2.0f;
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: h */
    public void mo36103h(AbstractC0775d dVar) {
        mo36108c(dVar, mo36107d(dVar));
    }

    /* renamed from: i */
    public final C0777f m36128i(AbstractC0775d dVar) {
        return (C0777f) dVar.mo36118c();
    }

    /* renamed from: j */
    public void m36127j(AbstractC0775d dVar) {
        if (!dVar.mo36119b()) {
            dVar.mo36121a(0, 0, 0, 0);
            return;
        }
        float d = mo36107d(dVar);
        float b = mo36111b(dVar);
        int ceil = (int) Math.ceil(C0778g.m36090a(d, b, dVar.mo36123a()));
        int ceil2 = (int) Math.ceil(C0778g.m36083b(d, b, dVar.mo36123a()));
        dVar.mo36121a(ceil, ceil2, ceil, ceil2);
    }
}

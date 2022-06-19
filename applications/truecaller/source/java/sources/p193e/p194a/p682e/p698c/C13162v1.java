package p193e.p194a.p682e.p698c;

import n3.r.a.l;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p862c.p864b.C15009a;
import p193e.p194a.p852i.p862c.p866d.AbstractC15046i;
/* renamed from: e.a.e.c.v1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/v1.class */
public class C13162v1 implements AbstractC15046i {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC13135s1 f38266a;

    public C13162v1(View$OnClickListenerC13135s1 view$OnClickListenerC13135s1) {
        this.f38266a = view$OnClickListenerC13135s1;
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15046i
    /* renamed from: a */
    public void mo10600a(AbstractC15003c abstractC15003c) {
        l activity = this.f38266a.getActivity();
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = this.f38266a;
        view$OnClickListenerC13135s1.f38101D1 = abstractC15003c;
        View$OnClickListenerC13135s1.m22036YA(view$OnClickListenerC13135s1);
    }

    @Override // p193e.p194a.p852i.p862c.p866d.AbstractC15046i
    /* renamed from: b */
    public void mo10599b(C15009a c15009a) {
        this.f38266a.f38101D1 = null;
    }
}

package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import android.view.View;
import java.util.HashMap;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.j.a.s3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/s3.class */
public final class C7394s3 extends AbstractC7418u3<AbstractC7185b8> {

    /* renamed from: b */
    public final /* synthetic */ View f17450b;

    /* renamed from: c */
    public final /* synthetic */ HashMap f17451c;

    /* renamed from: d */
    public final /* synthetic */ HashMap f17452d;

    /* renamed from: e */
    public final /* synthetic */ C7297k3 f17453e;

    public C7394s3(C7297k3 k3Var, View view, HashMap hashMap, HashMap hashMap2) {
        this.f17453e = k3Var;
        this.f17450b = view;
        this.f17451c = hashMap;
        this.f17452d = hashMap2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7185b8 mo20653a() {
        C7297k3.m20867a(this.f17450b.getContext(), "native_ad_view_holder_delegate");
        return new BinderC7336n6();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: a */
    public final /* synthetic */ AbstractC7185b8 mo20651a(AbstractC7455x4 x4Var) throws RemoteException {
        return x4Var.mo20455c(BinderC7110d.m21058a(this.f17450b), BinderC7110d.m21058a(this.f17451c), BinderC7110d.m21058a(this.f17452d));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7418u3
    /* renamed from: b */
    public final /* synthetic */ AbstractC7185b8 mo20650b() throws RemoteException {
        C7339n9 n9Var;
        n9Var = this.f17453e.f17365g;
        return n9Var.m20782a(this.f17450b, this.f17451c, this.f17452d);
    }
}

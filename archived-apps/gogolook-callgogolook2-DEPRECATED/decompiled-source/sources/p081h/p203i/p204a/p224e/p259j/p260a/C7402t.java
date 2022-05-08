package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t.class */
public final class C7402t implements AbstractC7270i2<Object, Object> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7228f f17457a;

    public C7402t(BinderC7390s sVar, AbstractC7228f fVar, AbstractC7291ja jaVar) {
        this.f17457a = fVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7270i2
    /* renamed from: a */
    public final void mo20626a(String str) {
        try {
            this.f17457a.mo20926a(str);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }
}

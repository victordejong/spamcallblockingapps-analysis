package p081h.p203i.p204a.p224e.p235d.p240n.p242y;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.d.n.y.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/y/j.class */
public final class C7043j extends AbstractC6991h<AbstractC7046m> {
    public C7043j(Context context, Looper looper, C6983e eVar, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        super(context, looper, 39, eVar, bVar, cVar);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public final /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
        return queryLocalInterface instanceof AbstractC7046m ? (AbstractC7046m) queryLocalInterface : new C7047n(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: v */
    public final String mo16069v() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: w */
    public final String mo16068w() {
        return "com.google.android.gms.common.service.START";
    }
}

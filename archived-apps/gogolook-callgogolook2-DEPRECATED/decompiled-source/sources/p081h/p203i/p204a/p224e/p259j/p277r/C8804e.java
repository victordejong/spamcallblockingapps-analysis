package p081h.p203i.p204a.p224e.p259j.p277r;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.j.r.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/r/e.class */
public final class C8804e extends AbstractC6991h<AbstractC8801b> {
    public C8804e(Context context, Looper looper, C6983e eVar, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        super(context, looper, 51, eVar, bVar, cVar);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public final /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        return queryLocalInterface instanceof AbstractC8801b ? (AbstractC8801b) queryLocalInterface : new C8802c(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public final int mo16071h() {
        return 11925000;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: v */
    public final String mo16069v() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: w */
    public final String mo16068w() {
        return "com.google.android.gms.phenotype.service.START";
    }
}

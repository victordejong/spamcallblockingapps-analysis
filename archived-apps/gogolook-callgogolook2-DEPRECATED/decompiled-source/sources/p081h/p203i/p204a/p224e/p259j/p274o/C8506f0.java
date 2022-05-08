package p081h.p203i.p204a.p224e.p259j.p274o;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.j.o.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/f0.class */
public class C8506f0 extends AbstractC6991h<AbstractC8511i> {

    /* renamed from: E */
    public final String f19537E;

    /* renamed from: F */
    public final AbstractC8532z<AbstractC8511i> f19538F = new C8508g0(this);

    public C8506f0(Context context, Looper looper, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar, String str, C6983e eVar) {
        super(context, looper, 23, eVar, bVar, cVar);
        this.f19537E = str;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return queryLocalInterface instanceof AbstractC8511i ? (AbstractC8511i) queryLocalInterface : new C8513j(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public int mo16071h() {
        return 11925000;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: r */
    public Bundle mo16070r() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.f19537E);
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: v */
    public String mo16069v() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: w */
    public String mo16068w() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
}

package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.internal.zaaf;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.signin.internal.zad;
import com.google.android.gms.signin.internal.zam;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.d.a.a.h */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/h.class */
public final class BinderC3256h extends zad {

    /* renamed from: a */
    public final WeakReference<zaaf> f11949a;

    public BinderC3256h(zaaf zaafVar) {
        this.f11949a = new WeakReference<>(zaafVar);
    }

    @Override // com.google.android.gms.signin.internal.zad, com.google.android.gms.signin.internal.zac
    /* renamed from: a */
    public final void mo8636a(zam zamVar) {
        zaaz zaazVar;
        zaaf zaafVar = this.f11949a.get();
        if (zaafVar != null) {
            zaazVar = zaafVar.f23183a;
            zaazVar.m17534a(new C3262k(this, zaafVar, zaafVar, zamVar));
        }
    }
}

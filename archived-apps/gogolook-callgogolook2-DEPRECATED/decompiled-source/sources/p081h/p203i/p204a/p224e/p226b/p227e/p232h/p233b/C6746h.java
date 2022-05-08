package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.b.e.h.b.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/h.class */
public final class C6746h extends AbstractC6991h<AbstractC6756r> {

    /* renamed from: E */
    public final GoogleSignInOptions f16636E;

    public C6746h(Context context, Looper looper, C6983e eVar, GoogleSignInOptions googleSignInOptions, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        super(context, looper, 91, eVar, bVar, cVar);
        googleSignInOptions = googleSignInOptions == null ? new GoogleSignInOptions.C3558a().m32015a() : googleSignInOptions;
        GoogleSignInOptions googleSignInOptions2 = googleSignInOptions;
        if (!eVar.m21393d().isEmpty()) {
            GoogleSignInOptions.C3558a aVar = new GoogleSignInOptions.C3558a(googleSignInOptions);
            for (Scope scope : eVar.m21393d()) {
                aVar.m32014a(scope, new Scope[0]);
            }
            googleSignInOptions2 = aVar.m32015a();
        }
        this.f16636E = googleSignInOptions2;
    }

    /* renamed from: E */
    public final GoogleSignInOptions m21958E() {
        return this.f16636E;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public final /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof AbstractC6756r ? (AbstractC6756r) queryLocalInterface : new C6757s(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: a */
    public final boolean mo21456a() {
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public final int mo16071h() {
        return C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: j */
    public final Intent mo21422j() {
        return C6747i.m21956a(m21416q(), this.f16636E);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: v */
    public final String mo16069v() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: w */
    public final String mo16068w() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }
}

package p081h.p203i.p204a.p224e.p290p.p291b;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.signin.internal.zah;
import com.google.android.gms.signin.internal.zaj;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6740b;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.p.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/p/b/a.class */
public class C9111a extends AbstractC6991h<AbstractC9116f> implements AbstractC9123f {

    /* renamed from: E */
    public final boolean f20795E;

    /* renamed from: F */
    public final C6983e f20796F;

    /* renamed from: G */
    public final Bundle f20797G;

    /* renamed from: H */
    public Integer f20798H;

    public C9111a(Context context, Looper looper, boolean z, C6983e eVar, Bundle bundle, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        super(context, looper, 44, eVar, bVar, cVar);
        this.f20795E = true;
        this.f20796F = eVar;
        this.f20797G = bundle;
        this.f20798H = eVar.m21392e();
    }

    public C9111a(Context context, Looper looper, boolean z, C6983e eVar, C9109a aVar, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        this(context, looper, true, eVar, m16073a(eVar), bVar, cVar);
    }

    /* renamed from: a */
    public static Bundle m16073a(C6983e eVar) {
        C9109a j = eVar.m21387j();
        Integer e = eVar.m21392e();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.m21399a());
        if (e != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", e.intValue());
        }
        if (j != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", j.m16076g());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", j.m16077f());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", j.m16079d());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", j.m16078e());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", j.m16081b());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", j.m16075h());
            if (j.m16082a() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", j.m16082a().longValue());
            }
            if (j.m16080c() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", j.m16080c().longValue());
            }
        }
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof AbstractC9116f ? (AbstractC9116f) queryLocalInterface : new C9117g(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p290p.AbstractC9123f
    /* renamed from: a */
    public final void mo16057a(AbstractC7003m mVar, boolean z) {
        try {
            ((AbstractC9116f) m21414u()).mo16060a(mVar, this.f20798H.intValue(), z);
        } catch (RemoteException e) {
        }
    }

    @Override // p081h.p203i.p204a.p224e.p290p.AbstractC9123f
    /* renamed from: a */
    public final void mo16056a(AbstractC9114d dVar) {
        C7021t.m21289a(dVar, "Expecting a valid ISignInCallbacks");
        try {
            Account c = this.f20796F.m21394c();
            GoogleSignInAccount googleSignInAccount = null;
            if ("<<default account>>".equals(c.name)) {
                googleSignInAccount = C6740b.m21973a(m21416q()).m21969b();
            }
            ((AbstractC9116f) m21414u()).mo16061a(new zah(new ResolveAccountRequest(c, this.f20798H.intValue(), googleSignInAccount)), dVar);
        } catch (RemoteException e) {
            try {
                dVar.mo16065a(new zaj(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p290p.AbstractC9123f
    public final void connect() {
        m21448a(new AbstractC6969d.C6973d());
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: e */
    public boolean mo16072e() {
        return this.f20795E;
    }

    @Override // p081h.p203i.p204a.p224e.p290p.AbstractC9123f
    /* renamed from: g */
    public final void mo16055g() {
        try {
            ((AbstractC9116f) m21414u()).mo16059b(this.f20798H.intValue());
        } catch (RemoteException e) {
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public int mo16071h() {
        return C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: r */
    public Bundle mo16070r() {
        if (!m21416q().getPackageName().equals(this.f20796F.m21389h())) {
            this.f20797G.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f20796F.m21389h());
        }
        return this.f20797G;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: v */
    public String mo16069v() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: w */
    public String mo16068w() {
        return "com.google.android.gms.signin.service.START";
    }
}

package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.zaj;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
import p081h.p203i.p204a.p224e.p290p.C9120c;
import p081h.p203i.p204a.p224e.p290p.p291b.BinderC9113c;
/* renamed from: h.i.a.e.d.k.q.p1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/p1.class */
public final class BinderC6911p1 extends BinderC9113c implements AbstractC6825f.AbstractC6827b, AbstractC6825f.AbstractC6828c {

    /* renamed from: h */
    public static C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> f16932h = C9120c.f20801c;

    /* renamed from: a */
    public final Context f16933a;

    /* renamed from: b */
    public final Handler f16934b;

    /* renamed from: c */
    public final C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> f16935c;

    /* renamed from: d */
    public Set<Scope> f16936d;

    /* renamed from: e */
    public C6983e f16937e;

    /* renamed from: f */
    public AbstractC9123f f16938f;

    /* renamed from: g */
    public AbstractC6923s1 f16939g;

    @WorkerThread
    public BinderC6911p1(Context context, Handler handler, @NonNull C6983e eVar) {
        this(context, handler, eVar, f16932h);
    }

    @WorkerThread
    public BinderC6911p1(Context context, Handler handler, @NonNull C6983e eVar, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar) {
        this.f16933a = context;
        this.f16934b = handler;
        C7021t.m21289a(eVar, "ClientSettings must not be null");
        this.f16937e = eVar;
        this.f16936d = eVar.m21388i();
        this.f16935c = aVar;
    }

    /* renamed from: G0 */
    public final AbstractC9123f m21598G0() {
        return this.f16938f;
    }

    /* renamed from: H0 */
    public final void m21597H0() {
        AbstractC9123f fVar = this.f16938f;
        if (fVar != null) {
            fVar.disconnect();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c
    @WorkerThread
    /* renamed from: a */
    public final void mo21591a(@NonNull ConnectionResult connectionResult) {
        this.f16939g.mo21571b(connectionResult);
    }

    @Override // p081h.p203i.p204a.p224e.p290p.p291b.AbstractC9114d
    @BinderThread
    /* renamed from: a */
    public final void mo16065a(zaj zajVar) {
        this.f16934b.post(new RunnableC6919r1(this, zajVar));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m21594a(AbstractC6923s1 s1Var) {
        AbstractC9123f fVar = this.f16938f;
        if (fVar != null) {
            fVar.disconnect();
        }
        this.f16937e.m21396a(Integer.valueOf(System.identityHashCode(this)));
        C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar = this.f16935c;
        Context context = this.f16933a;
        Looper looper = this.f16934b.getLooper();
        C6983e eVar = this.f16937e;
        this.f16938f = (AbstractC9123f) aVar.mo16058a(context, looper, eVar, eVar.m21387j(), this, this);
        this.f16939g = s1Var;
        Set<Scope> set = this.f16936d;
        if (set == null || set.isEmpty()) {
            this.f16934b.post(new RunnableC6915q1(this));
        } else {
            this.f16938f.connect();
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m21593b(zaj zajVar) {
        ConnectionResult c = zajVar.m31648c();
        if (c.m32001K()) {
            ResolveAccountResponse H = zajVar.m31649H();
            ConnectionResult H2 = H.m31944H();
            if (!H2.m32001K()) {
                String valueOf = String.valueOf(H2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
                this.f16939g.mo21571b(H2);
                this.f16938f.disconnect();
                return;
            }
            this.f16939g.mo21572a(H.m31941c(), this.f16936d);
        } else {
            this.f16939g.mo21571b(c);
        }
        this.f16938f.disconnect();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    @WorkerThread
    /* renamed from: f */
    public final void mo21503f(int i) {
        this.f16938f.disconnect();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    @WorkerThread
    /* renamed from: j */
    public final void mo21502j(@Nullable Bundle bundle) {
        this.f16938f.mo16056a(this);
    }
}

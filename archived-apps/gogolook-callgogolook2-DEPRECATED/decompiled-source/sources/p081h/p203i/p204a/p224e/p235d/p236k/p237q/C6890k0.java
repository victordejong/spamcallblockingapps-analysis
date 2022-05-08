package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
/* renamed from: h.i.a.e.d.k.q.k0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/k0.class */
public final class C6890k0 implements AbstractC6825f.AbstractC6827b, AbstractC6825f.AbstractC6828c {

    /* renamed from: a */
    public final /* synthetic */ C6847b0 f16873a;

    public C6890k0(C6847b0 b0Var) {
        this.f16873a = b0Var;
    }

    public /* synthetic */ C6890k0(C6847b0 b0Var, RunnableC6851c0 c0Var) {
        this(b0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c
    /* renamed from: a */
    public final void mo21591a(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean a;
        lock = this.f16873a.f16750b;
        lock.lock();
        try {
            a = this.f16873a.m21802a(connectionResult);
            if (a) {
                this.f16873a.m21784e();
                this.f16873a.m21788c();
            } else {
                this.f16873a.m21792b(connectionResult);
            }
        } finally {
            lock2 = this.f16873a.f16750b;
            lock2.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    /* renamed from: f */
    public final void mo21503f(int i) {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
    /* renamed from: j */
    public final void mo21502j(Bundle bundle) {
        C6983e eVar;
        AbstractC9123f fVar;
        Lock lock;
        Lock lock2;
        AbstractC9123f fVar2;
        AbstractC9123f fVar3;
        eVar = this.f16873a.f16766r;
        if (eVar.m21386k()) {
            lock = this.f16873a.f16750b;
            lock.lock();
            try {
                fVar2 = this.f16873a.f16759k;
                if (fVar2 != null) {
                    fVar3 = this.f16873a.f16759k;
                    fVar3.mo16056a(new BinderC6882i0(this.f16873a));
                }
            } finally {
                lock2 = this.f16873a.f16750b;
                lock2.unlock();
            }
        } else {
            fVar = this.f16873a.f16759k;
            fVar.mo16056a(new BinderC6882i0(this.f16873a));
        }
    }
}

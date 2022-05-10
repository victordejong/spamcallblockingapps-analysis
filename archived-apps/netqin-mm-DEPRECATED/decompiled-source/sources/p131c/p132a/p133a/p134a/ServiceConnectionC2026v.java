package p131c.p132a.p133a.p134a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.zza;
import com.google.android.gms.internal.play_billing.zzc;
import java.util.concurrent.Future;
/* renamed from: c.a.a.a.v */
/* loaded from: classes-dex2jar.jar:c/a/a/a/v.class */
public final class ServiceConnectionC2026v implements ServiceConnection {

    /* renamed from: a */
    public final Object f7899a = new Object();

    /* renamed from: b */
    public boolean f7900b = false;

    /* renamed from: c */
    public AbstractC1989e f7901c;

    /* renamed from: d */
    public final /* synthetic */ C1987d f7902d;

    public /* synthetic */ ServiceConnectionC2026v(C1987d dVar, AbstractC1989e eVar, CallableC2018q0 q0Var) {
        this.f7902d = dVar;
        this.f7901c = eVar;
    }

    /* renamed from: a */
    public final void m31253a() {
        synchronized (this.f7899a) {
            this.f7901c = null;
            this.f7900b = true;
        }
    }

    /* renamed from: a */
    public final void m31252a(C1994g gVar) {
        this.f7902d.m31337a(new RunnableC2021s(this, gVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Future a;
        C1994g c;
        zza.m9445a("BillingClient", "Billing service connected.");
        this.f7902d.f7809g = zzc.m9440a(iBinder);
        a = this.f7902d.m31334a(new CallableC2023t(this), 30000L, new RunnableC2025u(this));
        if (a == null) {
            c = this.f7902d.m31328c();
            m31252a(c);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zza.m9442b("BillingClient", "Billing service disconnected.");
        this.f7902d.f7809g = null;
        this.f7902d.f7803a = 0;
        synchronized (this.f7899a) {
            AbstractC1989e eVar = this.f7901c;
            if (eVar != null) {
                eVar.mo19795a();
            }
        }
    }
}

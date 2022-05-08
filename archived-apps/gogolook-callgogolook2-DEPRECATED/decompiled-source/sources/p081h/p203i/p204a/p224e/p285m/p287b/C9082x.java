package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/x.class */
public class C9082x extends BroadcastReceiver {

    /* renamed from: a */
    public final C9061t3 f20751a;

    /* renamed from: b */
    public boolean f20752b;

    /* renamed from: c */
    public boolean f20753c;

    public C9082x(C9061t3 t3Var) {
        C7021t.m21290a(t3Var);
        this.f20751a = t3Var;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16117a() {
        this.f20751a.m16161q();
        this.f20751a.mo16214a().mo16328d();
        this.f20751a.mo16214a().mo16328d();
        if (this.f20752b) {
            this.f20751a.mo16178c().m16389A().m16338a("Unregistering connectivity change receiver");
            this.f20752b = false;
            this.f20753c = false;
            try {
                this.f20751a.getContext().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f20751a.mo16178c().m16375s().m16337a("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16115b() {
        this.f20751a.m16161q();
        this.f20751a.mo16214a().mo16328d();
        if (!this.f20752b) {
            this.f20751a.getContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f20753c = this.f20751a.m16164n().m16307t();
            this.f20751a.mo16178c().m16389A().m16337a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f20753c));
            this.f20752b = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public void onReceive(Context context, Intent intent) {
        this.f20751a.m16161q();
        String action = intent.getAction();
        this.f20751a.mo16178c().m16389A().m16337a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean t = this.f20751a.m16164n().m16307t();
            if (this.f20753c != t) {
                this.f20753c = t;
                this.f20751a.mo16214a().m16364a(new RunnableC9087y(this, t));
                return;
            }
            return;
        }
        this.f20751a.mo16178c().m16372v().m16337a("NetworkBroadcastReceiver received unknown action", action);
    }
}

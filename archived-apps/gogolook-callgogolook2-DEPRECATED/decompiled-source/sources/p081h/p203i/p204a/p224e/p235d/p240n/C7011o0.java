package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import androidx.work.PeriodicWorkRequest;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
import p081h.p203i.p204a.p224e.p259j.p267h.HandlerC7748h;
/* renamed from: h.i.a.e.d.n.o0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/o0.class */
public final class C7011o0 extends AbstractC6996j implements Handler.Callback {

    /* renamed from: e */
    public final Context f17150e;

    /* renamed from: f */
    public final Handler f17151f;
    @GuardedBy("mConnectionStatus")

    /* renamed from: d */
    public final HashMap<AbstractC6996j.C6997a, ServiceConnectionC7008n0> f17149d = new HashMap<>();

    /* renamed from: g */
    public final C7064a f17152g = C7064a.m21184a();

    /* renamed from: h */
    public final long f17153h = 5000;

    /* renamed from: i */
    public final long f17154i = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

    public C7011o0(Context context) {
        this.f17150e = context.getApplicationContext();
        this.f17151f = new HandlerC7748h(context.getMainLooper(), this);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j
    /* renamed from: a */
    public final boolean mo21315a(AbstractC6996j.C6997a aVar, ServiceConnection serviceConnection, String str) {
        ServiceConnectionC7008n0 n0Var;
        boolean d;
        C7021t.m21289a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f17149d) {
            ServiceConnectionC7008n0 n0Var2 = this.f17149d.get(aVar);
            if (n0Var2 == null) {
                ServiceConnectionC7008n0 n0Var3 = new ServiceConnectionC7008n0(this, aVar);
                n0Var3.m21326a(serviceConnection, serviceConnection, str);
                n0Var3.m21324a(str);
                this.f17149d.put(aVar, n0Var3);
                n0Var = n0Var3;
            } else {
                this.f17151f.removeMessages(0, aVar);
                if (!n0Var2.m21327a(serviceConnection)) {
                    n0Var2.m21326a(serviceConnection, serviceConnection, str);
                    int c = n0Var2.m21321c();
                    if (c == 1) {
                        serviceConnection.onServiceConnected(n0Var2.m21323b(), n0Var2.m21328a());
                        n0Var = n0Var2;
                    } else if (c != 2) {
                        n0Var = n0Var2;
                    } else {
                        n0Var2.m21324a(str);
                        n0Var = n0Var2;
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            d = n0Var.m21320d();
        }
        return d;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j
    /* renamed from: b */
    public final void mo21313b(AbstractC6996j.C6997a aVar, ServiceConnection serviceConnection, String str) {
        C7021t.m21289a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f17149d) {
            ServiceConnectionC7008n0 n0Var = this.f17149d.get(aVar);
            if (n0Var == null) {
                String valueOf = String.valueOf(aVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (n0Var.m21327a(serviceConnection)) {
                n0Var.m21325a(serviceConnection, str);
                if (n0Var.m21319e()) {
                    this.f17151f.sendMessageDelayed(this.f17151f.obtainMessage(0, aVar), this.f17153h);
                }
            } else {
                String valueOf2 = String.valueOf(aVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.f17149d) {
                AbstractC6996j.C6997a aVar = (AbstractC6996j.C6997a) message.obj;
                ServiceConnectionC7008n0 n0Var = this.f17149d.get(aVar);
                if (n0Var != null && n0Var.m21319e()) {
                    if (n0Var.m21320d()) {
                        n0Var.m21322b("GmsClientSupervisor");
                    }
                    this.f17149d.remove(aVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (this.f17149d) {
                AbstractC6996j.C6997a aVar2 = (AbstractC6996j.C6997a) message.obj;
                ServiceConnectionC7008n0 n0Var2 = this.f17149d.get(aVar2);
                if (n0Var2 != null && n0Var2.m21321c() == 3) {
                    String valueOf = String.valueOf(aVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName b = n0Var2.m21323b();
                    ComponentName componentName = b;
                    if (b == null) {
                        componentName = aVar2.m21346a();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        componentName2 = new ComponentName(aVar2.m21344b(), "unknown");
                    }
                    n0Var2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}

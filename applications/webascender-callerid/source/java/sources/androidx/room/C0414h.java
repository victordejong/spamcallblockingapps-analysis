package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.AbstractC0407e;
import androidx.room.C0409g;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.h */
/* loaded from: classes-dex2jar.jar:androidx/room/h.class */
public class C0414h {

    /* renamed from: a */
    final Context f2196a;

    /* renamed from: b */
    final String f2197b;

    /* renamed from: c */
    int f2198c;

    /* renamed from: d */
    final C0409g f2199d;

    /* renamed from: e */
    final C0409g.AbstractC0412c f2200e;

    /* renamed from: f */
    AbstractC0407e f2201f;

    /* renamed from: g */
    final Executor f2202g;

    /* renamed from: j */
    final ServiceConnection f2205j;

    /* renamed from: h */
    final AbstractC0406d f2203h = new a(this);

    /* renamed from: i */
    final AtomicBoolean f2204i = new AtomicBoolean(false);

    /* renamed from: k */
    final Runnable f2206k = new RunnableC0416c();

    /* renamed from: l */
    final Runnable f2207l = new RunnableC0417d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/h$b.class */
    public class ServiceConnectionC0415b implements ServiceConnection {
        ServiceConnectionC0415b() {
            C0414h.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0414h.this.f2201f = AbstractC0407e.a.q(iBinder);
            C0414h c0414h = C0414h.this;
            c0414h.f2202g.execute(c0414h.f2206k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C0414h c0414h = C0414h.this;
            c0414h.f2202g.execute(c0414h.f2207l);
            C0414h.this.f2201f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/h$c.class */
    public class RunnableC0416c implements Runnable {
        RunnableC0416c() {
            C0414h.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C0414h c0414h = C0414h.this;
                AbstractC0407e abstractC0407e = c0414h.f2201f;
                if (abstractC0407e == null) {
                    return;
                }
                c0414h.f2198c = abstractC0407e.m4840v0(c0414h.f2203h, c0414h.f2197b);
                C0414h c0414h2 = C0414h.this;
                c0414h2.f2199d.m4838a(c0414h2.f2200e);
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.room.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/h$d.class */
    public class RunnableC0417d implements Runnable {
        RunnableC0417d() {
            C0414h.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0414h c0414h = C0414h.this;
            c0414h.f2199d.m4832g(c0414h.f2200e);
        }
    }

    public C0414h(Context context, String str, C0409g c0409g, Executor executor) {
        ServiceConnectionC0415b serviceConnectionC0415b = new ServiceConnectionC0415b();
        this.f2205j = serviceConnectionC0415b;
        Context applicationContext = context.getApplicationContext();
        this.f2196a = applicationContext;
        this.f2197b = str;
        this.f2199d = c0409g;
        this.f2202g = executor;
        this.f2200e = new e(this, (String[]) c0409g.f2175a.keySet().toArray(new String[0]));
        applicationContext.bindService(new Intent(applicationContext, MultiInstanceInvalidationService.class), serviceConnectionC0415b, 1);
    }
}

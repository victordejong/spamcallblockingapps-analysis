package p131c.p431l.p432a.p466l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* renamed from: c.l.a.l.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/l/a.class */
public class C6835a {

    /* renamed from: a */
    public final Context f21032a;

    /* renamed from: b */
    public final AbstractC6837b f21033b;

    /* renamed from: c */
    public boolean f21034c;

    /* renamed from: d */
    public boolean f21035d;

    /* renamed from: e */
    public boolean f21036e;

    /* renamed from: f */
    public final BroadcastReceiver f21037f = new C6836a();

    /* renamed from: c.l.a.l.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/l/a$a.class */
    public class C6836a extends BroadcastReceiver {
        public C6836a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = C6835a.this.f21034c;
            C6835a aVar = C6835a.this;
            aVar.f21034c = aVar.m19622a(context);
            if (z != C6835a.this.f21034c) {
                C6835a.this.f21033b.mo3387a(C6835a.this.f21034c);
            }
        }
    }

    /* renamed from: c.l.a.l.a$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/l/a$b.class */
    public interface AbstractC6837b {
        /* renamed from: a */
        void mo3387a(boolean z);
    }

    public C6835a(Context context, AbstractC6837b bVar) {
        this.f21032a = context.getApplicationContext();
        this.f21033b = bVar;
        this.f21036e = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
    }

    /* renamed from: a */
    public void m19623a() {
        if (this.f21036e && !this.f21035d) {
            this.f21034c = m19622a(this.f21032a);
            this.f21032a.registerReceiver(this.f21037f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f21035d = true;
        }
    }

    /* renamed from: a */
    public final boolean m19622a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: b */
    public void m19618b() {
        if (this.f21035d && this.f21036e) {
            this.f21032a.unregisterReceiver(this.f21037f);
            this.f21035d = false;
        }
    }
}

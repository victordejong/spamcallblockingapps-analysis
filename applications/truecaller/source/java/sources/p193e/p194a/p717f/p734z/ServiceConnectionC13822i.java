package p193e.p194a.p717f.p734z;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.f.z.i */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/i.class */
public final class ServiceConnectionC13822i implements ServiceConnection {

    /* renamed from: a */
    public boolean f40083a;

    /* renamed from: b */
    public final Context f40084b;

    public ServiceConnectionC13822i(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f40084b = context;
    }

    /* renamed from: a */
    public final void m21041a() {
        if (this.f40083a) {
            this.f40084b.unbindService(this);
            this.f40083a = false;
        }
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        m21041a();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        l.e(componentName, "className");
        l.e(iBinder, "service");
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        l.e(componentName, "componentName");
        m21041a();
    }
}

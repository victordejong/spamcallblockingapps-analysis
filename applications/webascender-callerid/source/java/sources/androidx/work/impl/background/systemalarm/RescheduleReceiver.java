package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.AbstractC0541m;
import androidx.work.impl.j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f2483a = AbstractC0541m.m4305f("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC0541m.m4308c().m4310a(f2483a, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT < 23) {
            context.startService(b.e(context));
            return;
        }
        try {
            j.q(context).A(goAsync());
        } catch (IllegalStateException e) {
            AbstractC0541m.m4308c().m4309b(f2483a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}

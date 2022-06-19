package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0541m;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.j;
import androidx.work.impl.utils.C0523d;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver.class */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    static final String f2479a = AbstractC0541m.m4305f("ConstrntProxyUpdtRecvr");

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver$a.class */
    class RunnableC0481a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Intent f2480f;

        /* renamed from: g */
        final /* synthetic */ Context f2481g;

        /* renamed from: h */
        final /* synthetic */ BroadcastReceiver.PendingResult f2482h;

        RunnableC0481a(ConstraintProxyUpdateReceiver constraintProxyUpdateReceiver, Intent intent, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f2480f = intent;
            this.f2481g = context;
            this.f2482h = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f2480f.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f2480f.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f2480f.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f2480f.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                AbstractC0541m.m4308c().m4310a(ConstraintProxyUpdateReceiver.f2479a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", Boolean.valueOf(booleanExtra), Boolean.valueOf(booleanExtra2), Boolean.valueOf(booleanExtra3), Boolean.valueOf(booleanExtra4)), new Throwable[0]);
                C0523d.m4340a(this.f2481g, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                C0523d.m4340a(this.f2481g, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                C0523d.m4340a(this.f2481g, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                C0523d.m4340a(this.f2481g, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f2482h.finish();
            }
        }
    }

    /* renamed from: a */
    public static Intent m4487a(Context context, boolean z, boolean z2, boolean z3, boolean z4) {
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            AbstractC0541m.m4308c().m4310a(f2479a, String.format("Ignoring unknown action %s", action), new Throwable[0]);
        } else {
            j.q(context).w().m4318b(new RunnableC0481a(this, intent, context, goAsync()));
        }
    }
}

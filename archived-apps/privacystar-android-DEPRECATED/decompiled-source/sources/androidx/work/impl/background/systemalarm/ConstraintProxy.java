package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.model.WorkSpec;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
public abstract class ConstraintProxy extends BroadcastReceiver {
    private static final String TAG = Logger.tagWithPrefix("ConstraintProxy");

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy.class */
    public static class BatteryChargingProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy.class */
    public static class BatteryNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy.class */
    public static class NetworkStateProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy.class */
    public static class StorageNotLowProxy extends ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(Context context, Intent intent) {
            ConstraintProxy.super.onReceive(context, intent);
        }
    }

    ConstraintProxy() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateAll(Context context, List<WorkSpec> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Iterator<WorkSpec> it = list.iterator();
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            z = z5;
            z2 = z6;
            z3 = z7;
            z4 = z8;
            if (!it.hasNext()) {
                break;
            }
            Constraints constraints = it.next().constraints;
            z = z5 | constraints.requiresBatteryNotLow();
            z2 = z6 | constraints.requiresCharging();
            z3 = z7 | constraints.requiresStorageNotLow();
            z4 = z8 | (constraints.getRequiredNetworkType() != NetworkType.NOT_REQUIRED);
            z5 = z;
            z6 = z2;
            z7 = z3;
            z8 = z4;
            if (z) {
                z5 = z;
                z6 = z2;
                z7 = z3;
                z8 = z4;
                if (z2) {
                    z5 = z;
                    z6 = z2;
                    z7 = z3;
                    z8 = z4;
                    if (z3) {
                        z5 = z;
                        z6 = z2;
                        z7 = z3;
                        z8 = z4;
                        if (z4) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.newConstraintProxyUpdateIntent(context, z, z2, z3, z4));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Logger.get().debug(TAG, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(CommandHandler.createConstraintsChangedIntent(context));
    }
}

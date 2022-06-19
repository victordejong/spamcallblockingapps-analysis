package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0541m;
import androidx.work.C0470c;
import androidx.work.EnumC0542n;
import androidx.work.impl.p015n.C0513p;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/ConstraintProxy.class */
abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f2478a = AbstractC0541m.m4305f("ConstraintProxy");

    ConstraintProxy() {
    }

    /* renamed from: a */
    public static void m4488a(Context context, List<C0513p> list) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Iterator<C0513p> it = list.iterator();
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
            C0470c c0470c = it.next().f2603j;
            z = z5 | c0470c.m4531f();
            z2 = z6 | c0470c.m4530g();
            z3 = z7 | c0470c.m4528i();
            z4 = z8 | (c0470c.m4535b() != EnumC0542n.NOT_REQUIRED);
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
        context.sendBroadcast(ConstraintProxyUpdateReceiver.m4487a(context, z, z2, z3, z4));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC0541m.m4308c().m4310a(f2478a, String.format("onReceive : %s", intent), new Throwable[0]);
        context.startService(b.a(context));
    }
}

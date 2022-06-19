package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0541m;
import androidx.work.AbstractC0551w;
import androidx.work.impl.workers.DiagnosticsWorker;
import androidx.work.o;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/diagnostics/DiagnosticsReceiver.class */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f2501a = AbstractC0541m.m4305f("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC0541m.m4308c().m4310a(f2501a, "Requesting diagnostics", new Throwable[0]);
        try {
            AbstractC0551w.m4291i(context).m4296d(o.d(DiagnosticsWorker.class));
        } catch (IllegalStateException e) {
            AbstractC0541m.m4308c().m4309b(f2501a, "WorkManager is not initialized", e);
        }
    }
}

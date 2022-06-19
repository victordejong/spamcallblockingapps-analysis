package androidx.work.impl.p012m.p014f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0541m;
/* renamed from: androidx.work.impl.m.f.e$a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/e$a.class */
class e$a extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ e f2576a;

    e$a(e eVar) {
        this.f2576a = eVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            return;
        }
        AbstractC0541m.m4308c().m4310a(e.j, "Network broadcast received", new Throwable[0]);
        e eVar = this.f2576a;
        eVar.m4429d(eVar.g());
    }
}

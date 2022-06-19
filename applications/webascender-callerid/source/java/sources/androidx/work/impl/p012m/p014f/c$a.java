package androidx.work.impl.p012m.p014f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: androidx.work.impl.m.f.c$a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/c$a.class */
class c$a extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ c f2567a;

    c$a(c cVar) {
        this.f2567a = cVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            this.f2567a.h(context, intent);
        }
    }
}

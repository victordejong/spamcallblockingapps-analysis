package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import javax.annotation.Nullable;
/* renamed from: com.google.firebase.iid.ab */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ab.class */
final class C3188ab extends BroadcastReceiver {
    @Nullable

    /* renamed from: a */
    private RunnableC3234y f19059a;

    public C3188ab(RunnableC3234y yVar) {
        this.f19059a = yVar;
    }

    /* renamed from: a */
    public final void m530a() {
        if (FirebaseInstanceId.m549f()) {
            Log.d("FirebaseInstanceId", "Connectivity change received registered");
        }
        this.f19059a.m433a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        RunnableC3234y yVar = this.f19059a;
        if (yVar != null && yVar.m432b()) {
            if (FirebaseInstanceId.m549f()) {
                Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
            }
            FirebaseInstanceId.m562a(this.f19059a, 0L);
            this.f19059a.m433a().unregisterReceiver(this);
            this.f19059a = null;
        }
    }
}

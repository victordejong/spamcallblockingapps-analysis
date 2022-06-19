package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import g.f.a.d.c.k.a;
/* renamed from: com.android.billingclient.api.i0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/i0.class */
final class C0593i0 extends BroadcastReceiver {

    /* renamed from: a */
    private final AbstractC0596k f2747a;

    /* renamed from: b */
    private boolean f2748b;

    /* renamed from: c */
    final /* synthetic */ C0595j0 f2749c;

    public /* synthetic */ C0593i0(C0595j0 c0595j0, AbstractC0596k abstractC0596k, C0591h0 c0591h0) {
        this.f2749c = c0595j0;
        this.f2747a = abstractC0596k;
    }

    /* renamed from: a */
    public final void m4179a(Context context, IntentFilter intentFilter) {
        C0593i0 c0593i0;
        if (!this.f2748b) {
            c0593i0 = this.f2749c.f2751b;
            context.registerReceiver(c0593i0, intentFilter);
            this.f2748b = true;
        }
    }

    /* renamed from: b */
    public final void m4178b(Context context) {
        C0593i0 c0593i0;
        if (!this.f2748b) {
            a.b("BillingBroadcastManager", "Receiver is not registered.");
            return;
        }
        c0593i0 = this.f2749c.f2751b;
        context.unregisterReceiver(c0593i0);
        this.f2748b = false;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f2747a.onPurchasesUpdated(a.c(intent, "BillingBroadcastManager"), a.f(intent.getExtras()));
    }
}

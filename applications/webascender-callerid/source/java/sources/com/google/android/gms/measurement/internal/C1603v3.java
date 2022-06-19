package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.v3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v3.class */
final class C1603v3 extends BroadcastReceiver {

    /* renamed from: a */
    private final m9 f4531a;

    /* renamed from: b */
    private boolean f4532b;

    /* renamed from: c */
    private boolean f4533c;

    C1603v3(m9 m9Var) {
        C0931r.m3308k(m9Var);
        this.f4531a = m9Var;
    }

    /* renamed from: a */
    public final void m1515a() {
        this.f4531a.h0();
        this.f4531a.e().h();
        if (this.f4532b) {
            return;
        }
        this.f4531a.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f4533c = this.f4531a.Y().m();
        this.f4531a.c().w().m1569b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f4533c));
        this.f4532b = true;
    }

    /* renamed from: b */
    public final void m1514b() {
        this.f4531a.h0();
        this.f4531a.e().h();
        this.f4531a.e().h();
        if (this.f4532b) {
            this.f4531a.c().w().m1570a("Unregistering connectivity change receiver");
            this.f4532b = false;
            this.f4533c = false;
            try {
                this.f4531a.b().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f4531a.c().o().m1569b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f4531a.h0();
        String action = intent.getAction();
        this.f4531a.c().w().m1569b("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f4531a.c().r().m1569b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean m = this.f4531a.Y().m();
        if (this.f4533c == m) {
            return;
        }
        this.f4533c = m;
        this.f4531a.e().r(new RunnableC1598u3(this, m));
    }
}

package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.zza;
import p131c.p132a.p133a.p134a.AbstractC1997h;
import p131c.p132a.p133a.p134a.C1994g;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/zzx.class */
public final class zzx extends ResultReceiver {

    /* renamed from: a */
    public final /* synthetic */ AbstractC1997h f21078a;

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        C1994g.C1995a c = C1994g.m31290c();
        c.m31288a(i);
        c.m31287a(zza.m9443b(bundle, "BillingClient"));
        this.f21078a.m31283a(c.m31289a());
    }
}

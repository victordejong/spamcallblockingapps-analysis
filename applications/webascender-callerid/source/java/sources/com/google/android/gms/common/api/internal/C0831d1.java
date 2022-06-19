package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* renamed from: com.google.android.gms.common.api.internal.d1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/d1.class */
public final class C0831d1 extends BroadcastReceiver {

    /* renamed from: a */
    private Context f3379a;

    /* renamed from: b */
    private final AbstractC0830c1 f3380b;

    public C0831d1(AbstractC0830c1 abstractC0830c1) {
        this.f3380b = abstractC0830c1;
    }

    /* renamed from: a */
    public final void m3616a() {
        synchronized (this) {
            Context context = this.f3379a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f3379a = null;
        }
    }

    /* renamed from: b */
    public final void m3615b(Context context) {
        this.f3379a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f3380b.m3617a();
            m3616a();
        }
    }
}

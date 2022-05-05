package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabq.class */
public final class zabq extends BroadcastReceiver {

    /* renamed from: a */
    private Context f6498a;

    /* renamed from: b */
    private final zabp f6499b;

    public zabq(zabp zabpVar) {
        this.f6499b = zabpVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f6499b.zas();
            unregister();
        }
    }

    public final void unregister() {
        synchronized (this) {
            if (this.f6498a != null) {
                this.f6498a.unregisterReceiver(this);
            }
            this.f6498a = null;
        }
    }

    public final void zac(Context context) {
        this.f6498a = context;
    }
}

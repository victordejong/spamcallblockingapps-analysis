package com.android.billingclient.api;

import android.os.Bundle;
import g.f.a.d.c.k.d;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.y0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/y0.class */
final class CallableC0626y0 implements Callable<Integer> {

    /* renamed from: f */
    final /* synthetic */ String f2802f;

    /* renamed from: g */
    final /* synthetic */ d f2803g;

    CallableC0626y0(d dVar, String str) {
        this.f2803g = dVar;
        this.f2802f = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Integer call() throws Exception {
        d q = d.q(this.f2803g);
        String packageName = d.p(this.f2803g).getPackageName();
        String str = this.f2802f;
        Bundle bundle = new Bundle();
        bundle.putBoolean("vr", true);
        return Integer.valueOf(q.P0(7, packageName, str, bundle));
    }
}

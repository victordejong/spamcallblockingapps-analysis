package com.android.billingclient.api;

import com.android.billingclient.api.Purchase;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.p */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p.class */
final class CallableC0607p implements Callable<Purchase.C0566a> {

    /* renamed from: f */
    final /* synthetic */ String f2767f;

    /* renamed from: g */
    final /* synthetic */ d f2768g;

    CallableC0607p(d dVar, String str) {
        this.f2768g = dVar;
        this.f2767f = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Purchase.C0566a call() throws Exception {
        return d.r(this.f2768g, this.f2767f);
    }
}

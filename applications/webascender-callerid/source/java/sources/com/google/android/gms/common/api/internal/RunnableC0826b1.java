package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.internal.C0834f;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.AbstractC0918k;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.b1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b1.class */
final class RunnableC0826b1 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ b f3369f;

    /* renamed from: g */
    private final /* synthetic */ C0834f.b f3370g;

    RunnableC0826b1(C0834f.b bVar, b bVar2) {
        this.f3370g = bVar;
        this.f3369f = bVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        map = this.f3370g.f.f3393i;
        C0834f.a aVar = (C0834f.a) map.get(C0834f.b.d(this.f3370g));
        if (aVar == null) {
            return;
        }
        if (!this.f3369f.C1()) {
            aVar.B(this.f3369f);
            return;
        }
        C0834f.b.f(this.f3370g, true);
        if (C0834f.b.g(this.f3370g).u()) {
            C0834f.b.h(this.f3370g);
            return;
        }
        try {
            C0834f.b.g(this.f3370g).f((AbstractC0918k) null, C0834f.b.g(this.f3370g).e());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            C0834f.b.g(this.f3370g).g("Failed to get service from broker.");
            aVar.B(new b(10));
        }
    }
}

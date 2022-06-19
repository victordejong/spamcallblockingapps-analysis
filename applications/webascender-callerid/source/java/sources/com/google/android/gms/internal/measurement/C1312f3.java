package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: com.google.android.gms.internal.measurement.f3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/f3.class */
final class C1312f3 extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ g3 f3900a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1312f3(g3 g3Var, Handler handler) {
        super(null);
        this.f3900a = g3Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f3900a.d();
    }
}

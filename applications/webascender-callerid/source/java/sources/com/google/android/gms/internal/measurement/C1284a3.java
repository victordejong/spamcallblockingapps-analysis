package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.measurement.a3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a3.class */
final class C1284a3 extends ContentObserver {
    public C1284a3(Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = C1291b3.f3879e;
        atomicBoolean.set(true);
    }
}

package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.as */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/as.class */
public final class C2483as extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2483as() {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        AtomicBoolean atomicBoolean;
        atomicBoolean = zzbw.f16144b;
        atomicBoolean.set(true);
    }
}

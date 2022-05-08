package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzt.class */
public final class zzt extends zzz {

    /* renamed from: a */
    private final AtomicReference<Bundle> f8811a = new AtomicReference<>();

    /* renamed from: b */
    private boolean f8812b;

    /* renamed from: b */
    public static <T> T m11835b(Bundle bundle, Class<T> cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received".concat(": %s, %s"), cls.getCanonicalName(), obj.getClass().getCanonicalName()), e);
            throw e;
        }
    }

    /* renamed from: c */
    public final String m11834c(long j) {
        return (String) m11835b(m11833f(j), String.class);
    }

    /* renamed from: f */
    public final Bundle m11833f(long j) {
        Bundle bundle;
        synchronized (this.f8811a) {
            if (!this.f8812b) {
                try {
                    this.f8811a.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = this.f8811a.get();
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzw
    public final void zza(Bundle bundle) {
        synchronized (this.f8811a) {
            this.f8811a.set(bundle);
            this.f8812b = true;
            this.f8811a.notify();
        }
    }
}

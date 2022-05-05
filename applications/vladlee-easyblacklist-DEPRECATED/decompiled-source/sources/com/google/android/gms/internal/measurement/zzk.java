package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzk.class */
public final class zzk extends zzq {

    /* renamed from: a */
    private final AtomicReference<Bundle> f16395a = new AtomicReference<>();

    /* renamed from: b */
    private boolean f16396b;

    public static <T> T zza(Bundle bundle, Class<T> cls) {
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

    public final String zza(long j) {
        return (String) zza(zzb(j), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public final void zza(Bundle bundle) {
        synchronized (this.f16395a) {
            this.f16395a.set(bundle);
            this.f16396b = true;
            this.f16395a.notify();
        }
    }

    public final Bundle zzb(long j) {
        Bundle bundle;
        synchronized (this.f16395a) {
            if (!this.f16396b) {
                try {
                    this.f16395a.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = this.f16395a.get();
        }
        return bundle;
    }
}

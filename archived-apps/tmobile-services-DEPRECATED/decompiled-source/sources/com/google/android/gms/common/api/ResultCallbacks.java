package com.google.android.gms.common.api;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResultCallbacks.class */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    @Override // com.google.android.gms.common.api.ResultCallback
    @KeepForSdk
    /* renamed from: a */
    public final void mo14760a(@NonNull R r) {
        Status k = r.mo10851k();
        if (k.m14996d0()) {
            m15004c(r);
            return;
        }
        mo15005b(k);
        if (r instanceof Releasable) {
            try {
                ((Releasable) r).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(r);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("ResultCallbacks", sb.toString(), e);
            }
        }
    }

    /* renamed from: b */
    public abstract void mo15005b(@NonNull Status status);

    /* renamed from: c */
    public abstract void m15004c(@NonNull R r);
}

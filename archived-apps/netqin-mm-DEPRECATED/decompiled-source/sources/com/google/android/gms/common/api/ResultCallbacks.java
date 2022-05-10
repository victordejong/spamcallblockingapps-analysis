package com.google.android.gms.common.api;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResultCallbacks.class */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    @Override // com.google.android.gms.common.api.ResultCallback
    @KeepForSdk
    /* renamed from: a */
    public final void mo17499a(R r) {
        Status d = r.mo8632d();
        if (d.m17740y()) {
            m17749b(r);
            return;
        }
        mo17750a(d);
        if (r instanceof Releasable) {
            try {
                ((Releasable) r).mo15656a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(r);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("ResultCallbacks", sb.toString(), e);
            }
        }
    }

    /* renamed from: a */
    public abstract void mo17750a(Status status);

    /* renamed from: b */
    public abstract void m17749b(R r);
}

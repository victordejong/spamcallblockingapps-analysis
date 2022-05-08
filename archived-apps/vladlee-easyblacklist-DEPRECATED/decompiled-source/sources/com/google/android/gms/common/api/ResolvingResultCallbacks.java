package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import android.util.Log;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResolvingResultCallbacks.class */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {

    /* renamed from: a */
    private final Activity f6221a;

    /* renamed from: b */
    private final int f6222b;

    @Override // com.google.android.gms.common.api.ResultCallbacks
    public final void onFailure(Status status) {
        if (status.hasResolution()) {
            try {
                status.startResolutionForResult(this.f6221a, this.f6222b);
            } catch (IntentSender.SendIntentException e) {
                Log.e("ResolvingResultCallback", "Failed to start resolution", e);
                onUnresolvableFailure(new Status(8));
            }
        } else {
            onUnresolvableFailure(status);
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallbacks
    public abstract void onSuccess(R r);

    public abstract void onUnresolvableFailure(Status status);
}

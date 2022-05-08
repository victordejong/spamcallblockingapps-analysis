package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResolvingResultCallbacks.class */
public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {

    /* renamed from: a */
    private final Activity f7018a;

    /* renamed from: b */
    private final int f7019b;

    @Override // com.google.android.gms.common.api.ResultCallbacks
    @KeepForSdk
    /* renamed from: b */
    public final void mo15005b(@NonNull Status status) {
        if (status.m14998W()) {
            try {
                status.m14995j0(this.f7018a, this.f7019b);
            } catch (IntentSender.SendIntentException e) {
                Log.e("ResolvingResultCallback", "Failed to start resolution", e);
                m15008d(new Status(8));
            }
        } else {
            m15008d(status);
        }
    }

    /* renamed from: d */
    public abstract void m15008d(@NonNull Status status);
}

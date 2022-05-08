package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import java.util.concurrent.TimeUnit;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResult.class */
public abstract class PendingResult<R extends Result> {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResult$StatusListener.class */
    public interface StatusListener {
        @KeepForSdk
        /* renamed from: a */
        void mo14432a(Status status);
    }

    @NonNull
    /* renamed from: a */
    public abstract R mo14773a(long j, @NonNull TimeUnit timeUnit);

    /* renamed from: b */
    public abstract void mo14772b();

    /* renamed from: c */
    public abstract void mo14771c(@NonNull ResultCallback<? super R> resultCallback);
}

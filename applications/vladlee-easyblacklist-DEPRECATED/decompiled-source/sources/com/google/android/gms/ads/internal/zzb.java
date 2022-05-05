package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzb.class */
public abstract class zzb<T extends IInterface> extends BaseGmsClient<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzb(Context context, Looper looper, int i, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(context, looper, i, baseConnectionCallbacks, baseOnConnectionFailedListener);
    }
}

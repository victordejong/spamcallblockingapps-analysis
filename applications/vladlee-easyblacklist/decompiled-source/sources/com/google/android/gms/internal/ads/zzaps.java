package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaps.class */
public final class zzaps extends zzb<zzaqb> {
    public zzaps(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(zzarf.zzaa(context), looper, 8, baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    protected final String mo1590a() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return queryLocalInterface instanceof zzaqb ? (zzaqb) queryLocalInterface : new zzaqd(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    protected final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.START";
    }

    public final zzaqb zztx() {
        return (zzaqb) super.getService();
    }
}

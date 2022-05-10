package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import p131c.p161d.p170b.p224d.p252g.p257e.C4452g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzk.class */
public class zzk extends GmsClient<zzao> {

    /* renamed from: E */
    public final String f29389E;

    /* renamed from: F */
    public final zzbj<zzao> f29390F = new C4452g(this);

    public zzk(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, ClientSettings clientSettings) {
        super(context, looper, 23, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.f29389E = str;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: A */
    public String mo8646A() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: a */
    public /* synthetic */ IInterface mo8645a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return queryLocalInterface instanceof zzao ? (zzao) queryLocalInterface : new zzap(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: j */
    public int mo8643j() {
        return 11925000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: v */
    public Bundle mo8641v() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.f29389E);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    /* renamed from: z */
    public String mo8640z() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }
}

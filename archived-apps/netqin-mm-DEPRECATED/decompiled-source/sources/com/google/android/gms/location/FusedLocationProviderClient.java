package com.google.android.gms.location;

import android.content.Context;
import android.location.Location;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import p131c.p161d.p170b.p224d.p259h.C4636e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/FusedLocationProviderClient.class */
public class FusedLocationProviderClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public FusedLocationProviderClient(Context context) {
        super(context, LocationServices.f29739c, (Api.ApiOptions) null, new ApiExceptionMapper());
    }

    /* renamed from: f */
    public Task<Location> m9416f() {
        return m17771a((TaskApiCall) new C4636e(this));
    }
}

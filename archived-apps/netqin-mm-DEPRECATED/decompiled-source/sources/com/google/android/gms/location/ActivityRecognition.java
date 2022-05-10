package com.google.android.gms.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zze;
import p131c.p161d.p170b.p224d.p259h.C4632a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityRecognition.class */
public class ActivityRecognition {

    /* renamed from: a */
    public static final Api.ClientKey<zzaz> f29699a = new Api.ClientKey<>();

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzaz, Api.ApiOptions.NoOptions> f29700b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityRecognition$zza.class */
    public static abstract class zza<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zzaz> {
    }

    static {
        C4632a aVar = new C4632a();
        f29700b = aVar;
        new Api("ActivityRecognition.API", aVar, f29699a);
        new zze();
    }
}

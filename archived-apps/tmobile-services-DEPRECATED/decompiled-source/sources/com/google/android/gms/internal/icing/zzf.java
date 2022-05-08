package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
@ShowFirstParty
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzf.class */
public final class zzf {

    /* renamed from: a */
    private static final Api.ClientKey<zzah> f8032a = new Api.ClientKey<>();

    /* renamed from: b */
    private static final Api.AbstractClientBuilder<zzah, Api.ApiOptions.NoOptions> f8033b;

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f8034c;

    static {
        zze zzeVar = new zze();
        f8033b = zzeVar;
        f8034c = new Api<>("AppDataSearch.LIGHTWEIGHT_API", zzeVar, f8032a);
        new zzaj();
    }
}

package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/Common.class */
public final class Common {
    public static final Api.ClientKey<zah> CLIENT_KEY = new Api.ClientKey<>();

    /* renamed from: a */
    private static final Api.AbstractClientBuilder<zah, Api.ApiOptions.NoOptions> f6845a = new C1671a();
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Common.API", f6845a, CLIENT_KEY);
    public static final zab zapw = new zae();
}

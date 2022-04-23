package com.google.android.gms.ads.query;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/QueryDataConfiguration.class */
public class QueryDataConfiguration {

    /* renamed from: a */
    private final Context f6079a;

    /* renamed from: b */
    private final String f6080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public QueryDataConfiguration(Context context, String str) {
        this.f6079a = context;
        this.f6080b = str;
    }

    public String getAdUnitId() {
        return this.f6080b;
    }

    public Context getContext() {
        return this.f6079a;
    }
}

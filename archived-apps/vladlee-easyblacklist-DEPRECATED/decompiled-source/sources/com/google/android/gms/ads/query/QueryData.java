package com.google.android.gms.ads.query;

import com.google.android.gms.internal.ads.zzapj;
import com.google.android.gms.internal.ads.zzxx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/QueryData.class */
public class QueryData {

    /* renamed from: a */
    private zzxx f6078a;

    public QueryData(zzxx zzxxVar) {
        this.f6078a = zzxxVar;
    }

    public static void generate(QueryDataConfiguration queryDataConfiguration, QueryDataGenerationCallback queryDataGenerationCallback) {
        new zzapj(queryDataConfiguration).zza(queryDataGenerationCallback);
    }

    public String getQuery() {
        return this.f6078a.getQuery();
    }
}

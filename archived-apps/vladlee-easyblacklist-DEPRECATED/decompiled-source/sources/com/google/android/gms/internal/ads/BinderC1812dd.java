package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryData;
import com.google.android.gms.ads.query.QueryDataGenerationCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.dd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dd.class */
public final class BinderC1812dd extends zzaum {

    /* renamed from: a */
    private final /* synthetic */ QueryDataGenerationCallback f8375a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC1812dd(QueryDataGenerationCallback queryDataGenerationCallback) {
        this.f8375a = queryDataGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzaun
    public final void onError(String str) {
        this.f8375a.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaun
    public final void zzk(String str, String str2) {
        QueryData queryData = new QueryData(new zzxx(str));
        zzve.zzpc().put(queryData, str2);
        this.f8375a.onSuccess(queryData);
    }
}

package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.p026b.C0529a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {

    /* renamed from: a */
    private final C0529a<ApiKey<?>, ConnectionResult> f6173a;

    public AvailabilityException(C0529a<ApiKey<?>, ConnectionResult> aVar) {
        this.f6173a = aVar;
    }

    public ConnectionResult getConnectionResult(GoogleApi<? extends Api.ApiOptions> googleApi) {
        ApiKey<? extends Api.ApiOptions> apiKey = googleApi.getApiKey();
        Preconditions.checkArgument(this.f6173a.get(apiKey) != null, "The given API was not part of the availability request.");
        return this.f6173a.get(apiKey);
    }

    public ConnectionResult getConnectionResult(HasApiKey<? extends Api.ApiOptions> hasApiKey) {
        ApiKey<? extends Api.ApiOptions> apiKey = hasApiKey.getApiKey();
        Preconditions.checkArgument(this.f6173a.get(apiKey) != null, "The given API was not part of the availability request.");
        return this.f6173a.get(apiKey);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ApiKey<?> apiKey : this.f6173a.keySet()) {
            ConnectionResult connectionResult = this.f6173a.get(apiKey);
            if (connectionResult.isSuccess()) {
                z = false;
            }
            String apiName = apiKey.getApiName();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(apiName).length() + 2 + String.valueOf(valueOf).length());
            sb.append(apiName);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z ? "None of the queried APIs are available. " : "Some of the queried APIs are unavailable. ");
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }

    public final C0529a<ApiKey<?>, ConnectionResult> zaj() {
        return this.f6173a;
    }
}

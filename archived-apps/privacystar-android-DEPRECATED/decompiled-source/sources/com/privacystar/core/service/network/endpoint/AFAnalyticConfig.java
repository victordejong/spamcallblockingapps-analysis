package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.response.AFAnalyticConfigResponse;
import retrofit2.Call;
import retrofit2.http.GET;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/AFAnalyticConfig.class */
public interface AFAnalyticConfig {
    @GET("first_orion.DEFAULT.1.conf")
    Call<AFAnalyticConfigResponse> getConfig();
}

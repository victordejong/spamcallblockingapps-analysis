package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.request.LicenseCheckRequest;
import com.privacystar.core.service.network.model.response.LicenseResponse;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/PSBackendLicense.class */
public interface PSBackendLicense {
    @POST("204")
    Call<EmptyObject> check204(@Body RequestBody requestBody);

    @POST("n/license_check")
    Call<LicenseResponse> checkLicense(@Body LicenseCheckRequest licenseCheckRequest);
}

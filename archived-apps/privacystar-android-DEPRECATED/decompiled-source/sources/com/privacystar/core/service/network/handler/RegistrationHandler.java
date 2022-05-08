package com.privacystar.core.service.network.handler;

import android.content.Context;
import android.os.Build;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.data.model.RegistrationData;
import com.privacystar.core.data.model.helper.PlayStorePurchaseRealm;
import com.privacystar.core.data.model.helper.RegistrationDataRealm;
import com.privacystar.core.data.providers.custom.whitelabel.WLHelper;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.jobs.DashboardNotificationJob;
import com.privacystar.core.service.jobs.JobConstants;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.RequestUnsuccessfulException;
import com.privacystar.core.service.network.model.request.RegistrationRequest;
import com.privacystar.core.service.network.model.response.LicenseResponse;
import com.privacystar.core.service.network.util.HttpStatus;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.Text;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import java.util.List;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/RegistrationHandler.class */
public class RegistrationHandler extends PSServiceHandler<RegistrationRequest, LicenseResponse> {
    private static final String GROUP_ID = "group_registration";
    private static final long MINIMUM_ADJACENT_REGISTRATION_TIME_DIFFERENCE = 10000;
    public static final boolean SHOULD_PERSIST = true;
    private static final String SINGLE_ID = "single_registration";
    private static RegistrationHandler handlerInstance;
    private static long registrationDelayInMs = 5000;
    private boolean delayRegistration = false;
    private static final String[] TAGS = {JobConstants.TAG_REGISTRATION};
    private static final Integer RETRIES = 2;

    public static RegistrationRequest generateRequest(RegistrationData registrationData, Realm realm) {
        String userToken = PreferenceUtil.getUserToken();
        RegistrationRequest registrationRequest = new RegistrationRequest();
        RegistrationRequest.Payload instantiatePayload = registrationRequest.instantiatePayload();
        registrationRequest.setPayload(instantiatePayload);
        if (!Text.isBlank(userToken)) {
            instantiatePayload.setToken(userToken);
            registrationRequest.setUser(PayloadUtil.generateUserPayload());
        }
        instantiatePayload.setDevid(registrationData.getDeviceId());
        instantiatePayload.setFcmkey(registrationData.getFcmKey());
        instantiatePayload.setApp(registrationData.getPackageName());
        instantiatePayload.setApk(registrationData.getCachedApkVersion());
        instantiatePayload.setOsVersion(registrationData.getCachedOsVersion());
        if (BuildUtil.INSTANCE.isAF()) {
            instantiatePayload.setAnchorFreeVersion(BuildConfig.VERSION_NAME.substring(0, BuildConfig.VERSION_NAME.lastIndexOf(46)));
            String whiteLabelId = WLHelper.INSTANCE.getWhiteLabelId(PSApplication.context());
            if (whiteLabelId != null && !"".equals(whiteLabelId)) {
                instantiatePayload.setAnchorFreeId(WLHelper.INSTANCE.getWhiteLabelId(PSApplication.context()));
            }
        } else if (!Text.isBlank(registrationData.getCachedPhoneNumber())) {
            instantiatePayload.setMdn(registrationData.getCachedPhoneNumber());
        } else {
            AnalyticsUtil.INSTANCE.trackRegistration(AnalyticsUtil.RegistrationAnalyticsEvent.FAILURE_NO_PHONE_NUMBER);
        }
        if (!Text.isBlank(registrationData.getCachedMcc())) {
            instantiatePayload.setMcc(registrationData.getCachedMcc());
        }
        if (!Text.isBlank(registrationData.getCachedMnc())) {
            instantiatePayload.setMnc(registrationData.getCachedMnc());
        }
        long currentTimeMillis = System.currentTimeMillis();
        PreferenceUtil.putLastTokenRefreshDeviceTime(currentTimeMillis);
        PayloadUtil.applyBasePayload(instantiatePayload, currentTimeMillis);
        instantiatePayload.setDeviceManufacturer(Build.MANUFACTURER);
        instantiatePayload.setDeviceModel(Build.MODEL);
        List<PlayStorePurchase> sortedPurchases = PlayStorePurchaseRealm.getSortedPurchases(realm);
        if (!sortedPurchases.isEmpty()) {
            PreferenceUtil.putIsReceiptUpdatePendingRegistration(false);
            instantiatePayload.setPurchases(sortedPurchases);
        }
        if (PreferenceUtil.getAGStateSet()) {
            instantiatePayload.setAgAlertsEnabled(Boolean.valueOf(PreferenceUtil.getAGAlertsEnabled()));
            instantiatePayload.setState(InformationUtil.getUserState());
        }
        return registrationRequest;
    }

    public static RegistrationHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new RegistrationHandler();
        }
        return handlerInstance;
    }

    private static void setRegistrationDelay() {
        long lastRegistrationRequest = PreferenceUtil.getLastRegistrationRequest();
        long currentTimeMillis = System.currentTimeMillis();
        if (lastRegistrationRequest + 10000 > currentTimeMillis) {
            registrationDelayInMs = 10000 - (currentTimeMillis - lastRegistrationRequest);
        } else {
            registrationDelayInMs = 0L;
        }
        Timber.m28v("Registration delay set to %dms", Long.valueOf(registrationDelayInMs));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<LicenseResponse> backendRequest(RegistrationRequest registrationRequest) {
        PreferenceUtil.putLastRegistrationRequest(System.currentTimeMillis());
        return PSBackendEndpoint.getServicesInstance().registerDevice(registrationRequest);
    }

    public void checkRegistration(Context context) {
        checkRegistration(context, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    @hugo.weaving.DebugLog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkRegistration(android.content.Context r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.network.handler.RegistrationHandler.checkRegistration(android.content.Context, boolean):void");
    }

    public void checkRegistrationWithPermissions(Context context, boolean z) {
        if (context == null) {
            Timber.m25w("Could not check permissions and register, context is null", new Object[0]);
        } else if (PermissionUtils.hasMinimumPermissionsForRegistration(context)) {
            checkRegistration(context, z);
        } else {
            Timber.m37d("Server registration postponed - app permissions have not been granted.", new Object[0]);
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected long delayInMs() {
        return this.delayRegistration ? registrationDelayInMs : 0L;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String getGroupId() {
        return "group_registration";
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected Integer getRetries() {
        return RETRIES;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String getSingleId() {
        return "single_registration";
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String[] getTags() {
        return TAGS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(RegistrationRequest registrationRequest, Response<LicenseResponse> response) throws Throwable {
        Realm defaultInstance;
        if (HttpStatus.fromCode(response.code()) != HttpStatus.UNAUTHORIZED) {
            defaultInstance = Realm.getDefaultInstance();
            try {
                Timber.m37d("Registration unsuccessful, discarding pending cached data.", new Object[0]);
                RegistrationDataRealm.discardPendingData(defaultInstance);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } finally {
                }
            }
        } else if (registrationRequest.getPayload() == null || registrationRequest.getPayload().getToken() == null) {
            defaultInstance = Realm.getDefaultInstance();
            try {
                Timber.m25w("Received a 401 (unauthorized) but user token was not set - unexpected server error.", new Object[0]);
                Timber.m37d("Registration unsuccessful, discarding pending cached data.", new Object[0]);
                RegistrationDataRealm.discardPendingData(defaultInstance);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } finally {
                }
            }
        } else {
            registrationRequest.setUser(null);
            registrationRequest.getPayload().setToken(null);
            throw new RequestUnsuccessfulException("Response unsuccessful - requeueing without user token.");
        }
        AnalyticsUtil.INSTANCE.trackRegistration(AnalyticsUtil.RegistrationAnalyticsEvent.FAILURE_REJECT);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(LicenseResponse licenseResponse, RegistrationRequest registrationRequest) {
        LicenseHandler.processLicenseResponse(licenseResponse);
        this.delayRegistration = false;
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            RegistrationDataRealm.activatePendingData(defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            Timber.m37d("DashboardNotificationJob adding job", new Object[0]);
            BlockListGetHandler.generateRequestIfNeeded();
            PSApplication.getInstance().getJobManager().addJob(new DashboardNotificationJob());
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}

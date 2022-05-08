package com.privacystar.core.service.network.handler;

import com.privacystar.core.PSApplication;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.RequestUnsuccessfulException;
import com.privacystar.core.service.network.model.request.FullShortNameRequest;
import com.privacystar.core.service.network.model.response.FullShortNameResponse;
import com.privacystar.core.util.OffenderUtil;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/FullShortNameHandler.class */
public class FullShortNameHandler extends PSServiceHandler<FullShortNameRequest, FullShortNameResponse> {
    private static final boolean IS_BLOCKED_BY_EULA = false;
    private static final boolean SHOULD_PERSIST = false;
    private static FullShortNameHandler handlerInstance;

    private boolean deltaUpdateRequired(Long l) {
        boolean z = false;
        if (l == null) {
            Timber.m37d("ControlNumber from Server is null.", new Object[0]);
            return false;
        }
        if (l.longValue() > PreferenceUtil.getCurrentOffenderDeltaControlNumber()) {
            z = true;
        }
        return z;
    }

    public static FullShortNameRequest generateRequest() {
        FullShortNameRequest fullShortNameRequest = new FullShortNameRequest();
        FullShortNameRequest.Payload instantiatePayload = fullShortNameRequest.instantiatePayload();
        fullShortNameRequest.setPayload(instantiatePayload);
        instantiatePayload.withPackageName(PSApplication.context().getPackageName()).withUseAolDataset(false);
        return fullShortNameRequest;
    }

    public static FullShortNameHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new FullShortNameHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<FullShortNameResponse> backendRequest(FullShortNameRequest fullShortNameRequest) {
        return PSBackendEndpoint.getServicesInstance().fetchShortName(fullShortNameRequest);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean eulaBlockedData() {
        return false;
    }

    public void generateAndSendRequest() {
        enqueueRequest(getInstance(), generateRequest());
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(FullShortNameRequest fullShortNameRequest, Response<FullShortNameResponse> response) throws RequestUnsuccessfulException {
        OffenderUtil.loadLocalOffenderDataIfNeeded();
        Timber.m37d("Full short-name request unsuccessful.", new Object[0]);
        throw new RequestUnsuccessfulException("FullShortName request was unsuccessful.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(FullShortNameResponse fullShortNameResponse, FullShortNameRequest fullShortNameRequest) {
        if (PreferenceUtil.getCurrentOffenderDeltaControlNumber() < 0) {
            Timber.m37d("Checking if local offender data should be pre-loaded.", new Object[0]);
            OffenderUtil.loadLocalOffenderDataIfNeeded();
        }
        if (fullShortNameResponse.getShortName() == null || fullShortNameResponse.getControlNumber() == null) {
            Timber.m37d("ShortName response invalid, can't continuing processing.", new Object[0]);
        } else if (deltaUpdateRequired(fullShortNameResponse.getControlNumber())) {
            Timber.m37d("Delta control number is greater than recorded info. Fetching appropriate dataset.", new Object[0]);
            OffenderDeltaHandler.fetchAndApplyNewDeltaBinary(fullShortNameResponse.getShortName(), fullShortNameResponse.getControlNumber().longValue(), true);
        } else {
            Timber.m37d("Received delta control number %d, update is not required.", fullShortNameResponse.getControlNumber());
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}

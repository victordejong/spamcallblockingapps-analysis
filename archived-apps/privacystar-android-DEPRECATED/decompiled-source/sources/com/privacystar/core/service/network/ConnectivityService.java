package com.privacystar.core.service.network;

import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.util.DateUtil;
import java.util.HashMap;
import java.util.Map;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/ConnectivityService.class */
public class ConnectivityService {
    private static final long RECENT_MARGIN = 60000;
    private static ConnectivityService sInstance;
    private Map<PSBackendEndpoint.PSEndpointInterface, Long> lastResponses = new HashMap();

    private ConnectivityService() {
    }

    public static ConnectivityService getInstance() {
        ConnectivityService connectivityService;
        synchronized (ConnectivityService.class) {
            try {
                if (sInstance == null) {
                    sInstance = new ConnectivityService();
                }
                connectivityService = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return connectivityService;
    }

    public boolean isCheckRequired(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface) {
        return !this.lastResponses.containsKey(pSEndpointInterface) || !DateUtil.timeIsRecent(this.lastResponses.get(pSEndpointInterface), 60000L);
    }

    public void setResponse(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface, Long l) {
        Timber.m28v("Updating connectivity timestamp for domain: %s", pSEndpointInterface.getUrlString());
        this.lastResponses.put(pSEndpointInterface, l);
    }
}

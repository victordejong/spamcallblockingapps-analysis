package com.amazonaws;

import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.VersionInfoUtils;
import javax.net.ssl.TrustManager;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ClientConfiguration.class */
public class ClientConfiguration {
    public String signerOverride;
    public static final String DEFAULT_USER_AGENT = VersionInfoUtils.getUserAgent();
    public static final RetryPolicy DEFAULT_RETRY_POLICY = PredefinedRetryPolicies.DEFAULT;
    public String userAgent = DEFAULT_USER_AGENT;
    public int maxErrorRetry = -1;
    public RetryPolicy retryPolicy = DEFAULT_RETRY_POLICY;
    public Protocol protocol = Protocol.HTTPS;
    public int socketTimeout = 15000;
    public int connectionTimeout = 15000;
    public TrustManager trustManager = null;
    public boolean curlLogging = false;

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public int getMaxErrorRetry() {
        return this.maxErrorRetry;
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    public RetryPolicy getRetryPolicy() {
        return this.retryPolicy;
    }

    public String getSignerOverride() {
        return this.signerOverride;
    }

    public int getSocketTimeout() {
        return this.socketTimeout;
    }

    public TrustManager getTrustManager() {
        return this.trustManager;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public boolean isCurlLogging() {
        return this.curlLogging;
    }
}

package com.amazonaws;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.metrics.RequestMetricCollector;
/* loaded from: classes-dex2jar.jar:com/amazonaws/AmazonWebServiceRequest.class */
public abstract class AmazonWebServiceRequest implements Cloneable {
    public AWSCredentials credentials;
    public final RequestClientOptions requestClientOptions = new RequestClientOptions();
    @Deprecated
    public RequestMetricCollector requestMetricCollector;

    public AmazonWebServiceRequest clone() {
        try {
            AmazonWebServiceRequest amazonWebServiceRequest = (AmazonWebServiceRequest) super.clone();
            amazonWebServiceRequest.setCloneSource(this);
            return amazonWebServiceRequest;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e);
        }
    }

    public RequestClientOptions getRequestClientOptions() {
        return this.requestClientOptions;
    }

    public AWSCredentials getRequestCredentials() {
        return this.credentials;
    }

    @Deprecated
    public RequestMetricCollector getRequestMetricCollector() {
        return this.requestMetricCollector;
    }

    public final void setCloneSource(AmazonWebServiceRequest amazonWebServiceRequest) {
    }

    @Deprecated
    public void setRequestMetricCollector(RequestMetricCollector requestMetricCollector) {
        this.requestMetricCollector = requestMetricCollector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public <T extends AmazonWebServiceRequest> T withRequestMetricCollector(RequestMetricCollector requestMetricCollector) {
        setRequestMetricCollector(requestMetricCollector);
        return this;
    }
}

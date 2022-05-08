package com.criteo.sync.sdk;

import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/Config.class */
public class Config {
    public final boolean collectionActive;
    public final String collectionEndpoint;
    public final Duration collectionPeriod;
    public final Date configurationExpires;
    public final String errorReportingEndpoint;
    public final float errorSamplingPercent;

    public Config(String str, boolean z, Duration duration, Date date, float f, String str2) {
        this.collectionEndpoint = str;
        this.collectionActive = z;
        this.collectionPeriod = duration;
        this.configurationExpires = date;
        this.errorSamplingPercent = f;
        this.errorReportingEndpoint = str2;
    }

    public String getCollectionEndpoint() {
        return this.collectionEndpoint;
    }

    public Duration getCollectionPeriod() {
        return this.collectionPeriod;
    }

    public Date getConfigurationExpires() {
        return this.configurationExpires;
    }

    public String getErrorReportingEndpoint() {
        return this.errorReportingEndpoint;
    }

    public float getErrorSamplingPercent() {
        return this.errorSamplingPercent;
    }

    public boolean isCollectionActive() {
        return this.collectionActive;
    }

    public String toString() {
        return "Config {\n\tcollectionEndpoint='" + this.collectionEndpoint + "'\n\tcollectionActive=" + this.collectionActive + "\n\tcollectionPeriod=" + this.collectionPeriod + "\n\tconfigurationExpires=" + this.configurationExpires + "\n\terrorSamplingPercent=" + this.errorSamplingPercent + "\n\terrorReportingEndpoint=" + this.errorReportingEndpoint + '}';
    }
}

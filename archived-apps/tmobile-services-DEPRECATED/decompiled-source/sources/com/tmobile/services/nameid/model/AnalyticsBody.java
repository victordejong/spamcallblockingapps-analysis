package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/AnalyticsBody.class */
public class AnalyticsBody implements Serializable {
    @SerializedName("app")
    @Expose
    private String apkVersion;
    @SerializedName("devid")
    @Expose
    private String devId;
    @SerializedName("ets")
    @Expose
    private List<PostableAnalyticsEvent> events;
    @SerializedName("iid")
    @Expose
    private String iid;

    public String getApkVersion() {
        return this.apkVersion;
    }

    public String getDevId() {
        return this.devId;
    }

    public List<PostableAnalyticsEvent> getEvents() {
        return this.events;
    }

    public String getIID() {
        return this.iid;
    }

    public void setApkVersion(String str) {
        this.apkVersion = str;
    }

    public void setDevId(String str) {
        this.devId = str;
    }

    public void setEvents(List<PostableAnalyticsEvent> list) {
        this.events = list;
    }

    public void setIID(String str) {
        this.iid = str;
    }
}

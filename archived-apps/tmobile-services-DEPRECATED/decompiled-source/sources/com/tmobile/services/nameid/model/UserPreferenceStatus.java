package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceStatus.class */
public class UserPreferenceStatus implements Serializable {
    @SerializedName("successfulEntries")
    @Expose
    private List<UserPreferenceItem> successfulItems = new ArrayList();
    @SerializedName("failedEntries")
    @Expose
    private List<FailPreference> failItems = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceStatus$FailPreference.class */
    public static class FailPreference implements Serializable {
        @SerializedName("failureDescription")
        @Expose
        private String description;
        @SerializedName("callerNumber")
        @Expose
        private String number;

        public String getDescription() {
            return this.description;
        }

        public String getNumber() {
            return this.number;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setNumber(String str) {
            this.number = str;
        }
    }

    public List<FailPreference> getFailItems() {
        return this.failItems;
    }

    public List<UserPreferenceItem> getSuccessfulItems() {
        return this.successfulItems;
    }

    public void setFailItems(List<FailPreference> list) {
        this.failItems = list;
    }

    public void setSuccessfulItems(List<UserPreferenceItem> list) {
        this.successfulItems = list;
    }
}

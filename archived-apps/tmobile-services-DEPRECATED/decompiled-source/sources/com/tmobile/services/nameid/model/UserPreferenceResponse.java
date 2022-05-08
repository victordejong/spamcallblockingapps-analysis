package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceResponse.class */
public class UserPreferenceResponse {
    @SerializedName("userPreferences")
    @Expose
    private List<UserPreferenceItem> preferenceItems = new ArrayList();

    public List<UserPreferenceItem> getPreferenceItems() {
        return this.preferenceItems;
    }
}

package com.facebook.ads;

import androidx.annotation.Keep;
import java.io.Serializable;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardData.class */
public class RewardData implements Serializable {
    public static final long serialVersionUID = 1;
    public String currency;
    public String userID;

    public RewardData(String str, String str2) {
        this.userID = str;
        this.currency = str2;
    }

    public String getCurrency() {
        return this.currency;
    }

    public String getUserID() {
        return this.userID;
    }
}

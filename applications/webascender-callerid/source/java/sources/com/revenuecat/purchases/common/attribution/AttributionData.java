package com.revenuecat.purchases.common.attribution;

import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/attribution/AttributionData.class */
public final class AttributionData {
    private final JSONObject data;
    private final AttributionNetwork network;
    private final String networkUserId;

    public AttributionData(JSONObject jSONObject, AttributionNetwork attributionNetwork, String str) {
        k.f(jSONObject, "data");
        k.f(attributionNetwork, "network");
        this.data = jSONObject;
        this.network = attributionNetwork;
        this.networkUserId = str;
    }

    public static /* synthetic */ AttributionData copy$default(AttributionData attributionData, JSONObject jSONObject, AttributionNetwork attributionNetwork, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            jSONObject = attributionData.data;
        }
        if ((i & 2) != 0) {
            attributionNetwork = attributionData.network;
        }
        if ((i & 4) != 0) {
            str = attributionData.networkUserId;
        }
        return attributionData.copy(jSONObject, attributionNetwork, str);
    }

    public final JSONObject component1() {
        return this.data;
    }

    public final AttributionNetwork component2() {
        return this.network;
    }

    public final String component3() {
        return this.networkUserId;
    }

    public final AttributionData copy(JSONObject jSONObject, AttributionNetwork attributionNetwork, String str) {
        k.f(jSONObject, "data");
        k.f(attributionNetwork, "network");
        return new AttributionData(jSONObject, attributionNetwork, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AttributionData)) {
                return false;
            }
            AttributionData attributionData = (AttributionData) obj;
            return k.b(this.data, attributionData.data) && k.b(this.network, attributionData.network) && k.b(this.networkUserId, attributionData.networkUserId);
        }
        return true;
    }

    public final JSONObject getData() {
        return this.data;
    }

    public final AttributionNetwork getNetwork() {
        return this.network;
    }

    public final String getNetworkUserId() {
        return this.networkUserId;
    }

    public int hashCode() {
        JSONObject jSONObject = this.data;
        int i = 0;
        int hashCode = jSONObject != null ? jSONObject.hashCode() : 0;
        AttributionNetwork attributionNetwork = this.network;
        int hashCode2 = attributionNetwork != null ? attributionNetwork.hashCode() : 0;
        String str = this.networkUserId;
        if (str != null) {
            i = str.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "AttributionData(data=" + this.data + ", network=" + this.network + ", networkUserId=" + this.networkUserId + ")";
    }
}

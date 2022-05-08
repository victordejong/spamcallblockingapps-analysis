package com.mopub.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/ImpressionData.class */
public class ImpressionData implements Serializable {
    public static final String ADGROUP_ID = "adgroup_id";
    public static final String ADGROUP_NAME = "adgroup_name";
    public static final String ADGROUP_PRIORITY = "adgroup_priority";
    public static final String ADGROUP_TYPE = "adgroup_type";
    public static final String ADUNIT_FORMAT = "adunit_format";
    public static final String ADUNIT_ID = "adunit_id";
    public static final String ADUNIT_NAME = "adunit_name";
    public static final String COUNTRY = "country";
    public static final String CURRENCY = "currency";
    public static final String IMPRESSION_ID = "id";
    public static final String NETWORK_NAME = "network_name";
    public static final String NETWORK_PLACEMENT_ID = "network_placement_id";
    public static final String PRECISION = "precision";
    public static final String PUBLISHER_REVENUE = "publisher_revenue";
    @NonNull

    /* renamed from: a */
    public C4031a f9424a;

    /* renamed from: com.mopub.network.ImpressionData$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/ImpressionData$a.class */
    public static class C4031a extends JSONObject implements Serializable {
        public C4031a(@NonNull String str) throws JSONException {
            super(str);
        }

        public C4031a(@NonNull JSONObject jSONObject) throws JSONException {
            super(jSONObject.toString());
        }
    }

    public ImpressionData(@NonNull JSONObject jSONObject) throws JSONException {
        this.f9424a = new C4031a(jSONObject);
    }

    @Nullable
    /* renamed from: a */
    public static ImpressionData m29997a(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new ImpressionData(jSONObject);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.toString());
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException, JSONException {
        objectInputStream.defaultReadObject();
        this.f9424a = new C4031a(objectInputStream.readUTF());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeUTF(this.f9424a.toString());
    }

    @Nullable
    public String getAdGroupId() {
        return this.f9424a.optString(ADGROUP_ID, null);
    }

    @Nullable
    public String getAdGroupName() {
        return this.f9424a.optString(ADGROUP_NAME, null);
    }

    @Nullable
    public Integer getAdGroupPriority() {
        try {
            return Integer.valueOf(this.f9424a.getInt(ADGROUP_PRIORITY));
        } catch (Exception e) {
            return null;
        }
    }

    @Nullable
    public String getAdGroupType() {
        return this.f9424a.optString(ADGROUP_TYPE, null);
    }

    @Nullable
    public String getAdUnitFormat() {
        return this.f9424a.optString("adunit_format", null);
    }

    @Nullable
    public String getAdUnitId() {
        return this.f9424a.optString(ADUNIT_ID, null);
    }

    @Nullable
    public String getAdUnitName() {
        return this.f9424a.optString(ADUNIT_NAME, null);
    }

    @Nullable
    public String getCountry() {
        return this.f9424a.optString(COUNTRY, null);
    }

    @Nullable
    public String getCurrency() {
        return this.f9424a.optString(CURRENCY, null);
    }

    @Nullable
    public String getImpressionId() {
        return this.f9424a.optString("id", null);
    }

    @NonNull
    public JSONObject getJsonRepresentation() {
        return this.f9424a;
    }

    @Nullable
    public String getNetworkName() {
        return this.f9424a.optString(NETWORK_NAME, null);
    }

    @Nullable
    public String getNetworkPlacementId() {
        return this.f9424a.optString(NETWORK_PLACEMENT_ID, null);
    }

    @Nullable
    public String getPrecision() {
        return this.f9424a.optString(PRECISION, null);
    }

    @Nullable
    public Double getPublisherRevenue() {
        try {
            return Double.valueOf(this.f9424a.getDouble(PUBLISHER_REVENUE));
        } catch (Exception e) {
            return null;
        }
    }
}

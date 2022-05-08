package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.Util;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ConversationItem.class */
public abstract class ConversationItem extends JsonPayload {
    /* JADX INFO: Access modifiers changed from: protected */
    public ConversationItem(PayloadType payloadType) {
        super(payloadType);
        double currentTimeSeconds = Util.currentTimeSeconds();
        int utcOffset = Util.getUtcOffset();
        setClientCreatedAt(currentTimeSeconds);
        setClientCreatedAtUtcOffset(utcOffset);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ConversationItem(PayloadType payloadType, String str) throws JSONException {
        super(payloadType, str);
    }

    public Double getClientCreatedAt() {
        return getDouble("client_created_at");
    }

    public void setClientCreatedAt(double d) {
        put("client_created_at", d);
    }

    public void setClientCreatedAtUtcOffset(int i) {
        put("client_created_at_utc_offset", i);
    }
}

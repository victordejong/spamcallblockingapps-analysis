package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.Util;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/ConversationItem.class */
public abstract class ConversationItem extends JsonPayload {
    protected static final String KEY_CLIENT_CREATED_AT = "client_created_at";
    protected static final String KEY_CLIENT_CREATED_AT_UTC_OFFSET = "client_created_at_utc_offset";

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
        return getDouble(KEY_CLIENT_CREATED_AT);
    }

    public void setClientCreatedAt(double d) {
        put(KEY_CLIENT_CREATED_AT, d);
    }

    public void setClientCreatedAtUtcOffset(int i) {
        put(KEY_CLIENT_CREATED_AT_UTC_OFFSET, i);
    }
}

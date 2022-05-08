package com.appsflyer.internal.referrer;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/MandatoryFields.class */
public class MandatoryFields extends HashMap<String, Object> {
    public MandatoryFields() {
        put("type", Payload.TYPE_STORE);
        put(Payload.INSTALL_BEGIN_TS, 0L);
        put(Payload.REFERRER, null);
    }
}

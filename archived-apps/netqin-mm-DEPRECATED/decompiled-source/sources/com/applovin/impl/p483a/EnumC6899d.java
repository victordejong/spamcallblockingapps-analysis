package com.applovin.impl.p483a;

import com.google.logging.type.LogSeverity;
/* renamed from: com.applovin.impl.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/d.class */
public enum EnumC6899d {
    UNSPECIFIED(-1),
    XML_PARSING(100),
    GENERAL_WRAPPER_ERROR(LogSeverity.NOTICE_VALUE),
    TIMED_OUT(301),
    WRAPPER_LIMIT_REACHED(302),
    NO_WRAPPER_RESPONSE(303),
    GENERAL_LINEAR_ERROR(LogSeverity.WARNING_VALUE),
    NO_MEDIA_FILE_PROVIDED(401),
    MEDIA_FILE_TIMEOUT(402),
    MEDIA_FILE_ERROR(405),
    GENERAL_COMPANION_AD_ERROR(LogSeverity.CRITICAL_VALUE),
    UNABLE_TO_FETCH_COMPANION_AD_RESOURCE(603),
    CAN_NOT_FIND_COMPANION_AD_RESOURCE(604);
    

    /* renamed from: n */
    public final int f21137n;

    EnumC6899d(int i) {
        this.f21137n = i;
    }

    /* renamed from: a */
    public int m19427a() {
        return this.f21137n;
    }
}

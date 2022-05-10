package com.integralads.avid.library.inmobi.session.internal;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/inmobi/session/internal/SessionType.class */
public enum SessionType {
    DISPLAY("display"),
    VIDEO("video"),
    MANAGED_DISPLAY("managedDisplay"),
    MANAGED_VIDEO("managedVideo");
    
    public final String value;

    SessionType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.value;
    }
}

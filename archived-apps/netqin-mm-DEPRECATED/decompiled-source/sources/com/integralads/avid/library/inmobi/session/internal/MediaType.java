package com.integralads.avid.library.inmobi.session.internal;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/inmobi/session/internal/MediaType.class */
public enum MediaType {
    DISPLAY("display"),
    VIDEO("video");
    
    public final String value;

    MediaType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.value;
    }
}

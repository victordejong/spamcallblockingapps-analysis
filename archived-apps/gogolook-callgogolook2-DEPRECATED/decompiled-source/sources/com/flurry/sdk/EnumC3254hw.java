package com.flurry.sdk;
/* renamed from: com.flurry.sdk.hw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hw.class */
public enum EnumC3254hw {
    INSTALL(1),
    SESSION_START(2),
    SESSION_END(3),
    APPLICATION_EVENT(4);
    

    /* renamed from: e */
    public final int f5453e;

    EnumC3254hw(int i) {
        this.f5453e = i;
    }

    /* renamed from: a */
    public static EnumC3254hw m32798a(int i) {
        if (i == 1) {
            return INSTALL;
        }
        if (i == 2) {
            return SESSION_START;
        }
        if (i == 3) {
            return SESSION_END;
        }
        if (i != 4) {
            return null;
        }
        return APPLICATION_EVENT;
    }
}

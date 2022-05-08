package com.flurry.sdk;
/* renamed from: com.flurry.sdk.aw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aw.class */
public enum EnumC2851aw {
    UNKNOWN,
    VIDEO,
    IMAGE,
    TEXT;

    /* renamed from: a */
    public static EnumC2851aw m33541a(int i) {
        if (i == 0) {
            return UNKNOWN;
        }
        if (i == 1) {
            return VIDEO;
        }
        if (i == 2) {
            return IMAGE;
        }
        if (i != 3) {
            return null;
        }
        return TEXT;
    }
}

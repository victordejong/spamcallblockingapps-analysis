package com.google.android.gms.gass;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/AdShieldError.class */
public class AdShieldError {
    public static final int ADSHIELD_ERROR_INVALID_PROGRAM = 1;
    public static final int ADSHIELD_ERROR_LAST_CRASH = 5;
    public static final int ADSHIELD_ERROR_VM_CLASS = 2;
    public static final int ADSHIELD_ERROR_VM_INIT = 4;
    public static final int ADSHIELD_ERROR_VM_INSTANCE = 3;

    /* renamed from: a */
    private final int f7063a;

    /* renamed from: b */
    private final String f7064b;

    public AdShieldError(int i, String str) {
        this.f7063a = i;
        this.f7064b = str;
    }

    public int getErrorCode() {
        return this.f7063a;
    }

    public String getErrorMessage() {
        return this.f7064b;
    }
}

package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DeliveryMechanism.class */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: id */
    public final int f30949id;

    DeliveryMechanism(int i) {
        this.f30949id = i;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public int getId() {
        return this.f30949id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f30949id);
    }
}

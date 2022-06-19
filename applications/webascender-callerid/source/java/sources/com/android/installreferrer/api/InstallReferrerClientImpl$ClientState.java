package com.android.installreferrer.api;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes-dex2jar.jar:com/android/installreferrer/api/InstallReferrerClientImpl$ClientState.class */
public @interface InstallReferrerClientImpl$ClientState {
    public static final int CLOSED = 3;
    public static final int CONNECTED = 2;
    public static final int CONNECTING = 1;
    public static final int DISCONNECTED = 0;
}

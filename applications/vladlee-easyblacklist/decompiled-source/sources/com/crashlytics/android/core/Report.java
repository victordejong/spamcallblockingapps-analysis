package com.crashlytics.android.core;

import java.io.File;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/Report.class */
interface Report {

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/Report$Type.class */
    public enum Type {
        JAVA,
        NATIVE
    }

    Map<String, String> getCustomHeaders();

    File getFile();

    String getFileName();

    File[] getFiles();

    String getIdentifier();

    Type getType();

    void remove();
}

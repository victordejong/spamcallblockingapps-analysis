package com.google.firebase.crashlytics.internal.log;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/log/FileLogStore.class */
interface FileLogStore {
    void closeLogFile();

    void deleteLogFile();

    @Nullable
    byte[] getLogAsBytes();

    @Nullable
    String getLogAsString();

    void writeToLog(long j, String str);
}

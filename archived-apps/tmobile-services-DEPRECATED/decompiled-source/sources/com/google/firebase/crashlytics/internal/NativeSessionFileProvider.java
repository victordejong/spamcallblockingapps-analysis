package com.google.firebase.crashlytics.internal;

import androidx.annotation.Nullable;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/NativeSessionFileProvider.class */
public interface NativeSessionFileProvider {
    @Nullable
    File getAppFile();

    @Nullable
    File getBinaryImagesFile();

    @Nullable
    File getDeviceFile();

    @Nullable
    File getMetadataFile();

    @Nullable
    File getMinidumpFile();

    @Nullable
    File getOsFile();

    @Nullable
    File getSessionFile();
}

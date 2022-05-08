package com.apptentive.android.sdk;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.encryption.EncryptionException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Encryption.class */
public interface Encryption {
    @NonNull
    byte[] decrypt(@NonNull byte[] bArr) throws EncryptionException;

    @NonNull
    byte[] encrypt(@NonNull byte[] bArr) throws EncryptionException;
}

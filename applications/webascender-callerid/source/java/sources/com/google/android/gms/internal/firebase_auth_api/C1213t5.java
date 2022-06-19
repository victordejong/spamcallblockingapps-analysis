package com.google.android.gms.internal.firebase_auth_api;

import android.os.Build;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.t5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/t5.class */
public final class C1213t5 {

    /* renamed from: a */
    KeyStore f3814a;

    public C1213t5() {
        this.f3814a = null;
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                this.f3814a = keyStore;
                keyStore.load(null);
                return;
            } catch (IOException | GeneralSecurityException e) {
                throw new IllegalStateException(e);
            }
        }
        throw new IllegalStateException("need Android Keystore on Android M or newer");
    }
}

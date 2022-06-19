package com.google.android.gms.internal.firebase_auth_api;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.firebase-auth-api.p9;
import com.google.android.gms.internal.firebase-auth-api.ta;
import java.io.CharConversionException;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.v5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/v5.class */
public final class C1227v5 {

    /* renamed from: a */
    private final SharedPreferences f3822a;

    /* renamed from: b */
    private final String f3823b = "GenericIdpKeyset";

    public C1227v5(Context context, String str, String str2) throws IOException {
        Context applicationContext = context.getApplicationContext();
        if (str2 == null) {
            this.f3822a = PreferenceManager.getDefaultSharedPreferences(applicationContext);
        } else {
            this.f3822a = applicationContext.getSharedPreferences(str2, 0);
        }
    }

    /* renamed from: c */
    private final byte[] m2391c() throws IOException {
        try {
            String string = this.f3822a.getString(this.f3823b, null);
            if (string == null) {
                throw new FileNotFoundException(String.format("can't read keyset; the pref value %s does not exist", this.f3823b));
            }
            if (string.length() % 2 != 0) {
                throw new IllegalArgumentException("Expected a string of even length");
            }
            int length = string.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i + i;
                int digit = Character.digit(string.charAt(i2), 16);
                int digit2 = Character.digit(string.charAt(i2 + 1), 16);
                if (digit == -1 || digit2 == -1) {
                    throw new IllegalArgumentException("input is not hexadecimal");
                }
                bArr[i] = (byte) ((digit * 16) + digit2);
            }
            return bArr;
        } catch (ClassCastException | IllegalArgumentException e) {
            throw new CharConversionException(String.format("can't read keyset; the pref value %s is not a valid hex string", this.f3823b));
        }
    }

    /* renamed from: a */
    public final ta m2393a() throws IOException {
        return ta.C(m2391c(), C1011aq.m3024a());
    }

    /* renamed from: b */
    public final p9 m2392b() throws IOException {
        return p9.z(m2391c(), C1011aq.m3024a());
    }
}

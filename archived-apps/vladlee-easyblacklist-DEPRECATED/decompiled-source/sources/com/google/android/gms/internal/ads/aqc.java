package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqc.class */
final class aqc {

    /* renamed from: a */
    private ByteArrayOutputStream f8161a = new ByteArrayOutputStream(CodedOutputStream.DEFAULT_BUFFER_SIZE);

    /* renamed from: b */
    private Base64OutputStream f8162b = new Base64OutputStream(this.f8161a, 10);

    /* renamed from: a */
    public final void m4757a(byte[] bArr) {
        this.f8162b.write(bArr);
    }

    public final String toString() {
        String str;
        try {
            this.f8162b.close();
        } catch (IOException e) {
            zzavs.zzc("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.f8161a.close();
                str = this.f8161a.toString();
            } catch (IOException e2) {
                zzavs.zzc("HashManager: Unable to convert to Base64.", e2);
                str = "";
            }
            return str;
        } finally {
            this.f8161a = null;
            this.f8162b = null;
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdae.class */
public final class zzdae {
    public static ParcelFileDescriptor zze(final InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
        zzazd.zzdwe.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: com.google.android.gms.internal.ads.zu

            /* renamed from: a */
            private final InputStream f10777a;

            /* renamed from: b */
            private final ParcelFileDescriptor f10778b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10777a = inputStream;
                this.f10778b = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.f10777a;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f10778b);
                    try {
                        IOUtils.copyStream(inputStream2, autoCloseOutputStream);
                        autoCloseOutputStream.close();
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Throwable th) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable th2) {
                            zzdpt.zza(th, th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                }
            }
        });
        return parcelFileDescriptor;
    }
}

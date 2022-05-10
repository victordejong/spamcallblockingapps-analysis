package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/IOUtils.class */
public final class IOUtils {
    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static long m17074a(InputStream inputStream, OutputStream outputStream) throws IOException {
        return m17073a(inputStream, outputStream, false);
    }

    @Deprecated
    /* renamed from: a */
    public static long m17073a(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        return m17072a(inputStream, outputStream, z, 1024);
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static long m17072a(InputStream inputStream, OutputStream outputStream, boolean z, int i) throws IOException {
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i);
                if (read == -1) {
                    break;
                }
                j += read;
                outputStream.write(bArr, 0, read);
            } finally {
                if (z) {
                    m17075a(inputStream);
                    m17075a(outputStream);
                }
            }
        }
        return j;
    }

    @KeepForSdk
    /* renamed from: a */
    public static void m17075a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static byte[] m17071a(InputStream inputStream, boolean z) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m17073a(inputStream, byteArrayOutputStream, z);
        return byteArrayOutputStream.toByteArray();
    }
}

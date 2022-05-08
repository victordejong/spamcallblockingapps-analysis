package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/NativeSessionFileGzipper.class */
class NativeSessionFileGzipper {
    NativeSessionFileGzipper() {
    }

    private static void gzipInputStream(@Nullable InputStream inputStream, @NonNull File file) throws IOException {
        Throwable th;
        if (inputStream != null) {
            byte[] bArr = new byte[8192];
            GZIPOutputStream gZIPOutputStream = null;
            try {
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read > 0) {
                            gZIPOutputStream2.write(bArr, 0, read);
                        } else {
                            gZIPOutputStream2.finish();
                            CommonUtils.closeQuietly(gZIPOutputStream2);
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPOutputStream = gZIPOutputStream2;
                        CommonUtils.closeQuietly(gZIPOutputStream);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void processNativeSessions(File file, List<NativeSessionFile> list) {
        for (NativeSessionFile nativeSessionFile : list) {
            InputStream inputStream = null;
            try {
                InputStream stream = nativeSessionFile.getStream();
                if (stream == null) {
                    inputStream = stream;
                } else {
                    gzipInputStream(stream, new File(file, nativeSessionFile.getReportsEndpointFilename()));
                    inputStream = stream;
                }
            } catch (IOException e) {
            } catch (Throwable th) {
                CommonUtils.closeQuietly(null);
                throw th;
            }
            CommonUtils.closeQuietly(inputStream);
        }
    }
}

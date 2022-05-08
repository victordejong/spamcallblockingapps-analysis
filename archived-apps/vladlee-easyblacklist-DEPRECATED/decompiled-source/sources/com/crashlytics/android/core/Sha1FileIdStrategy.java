package com.crashlytics.android.core;

import com.crashlytics.android.core.BinaryImagesConverter;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/Sha1FileIdStrategy.class */
class Sha1FileIdStrategy implements BinaryImagesConverter.FileIdStrategy {
    private static String getFileSHA(String str) {
        Throwable th;
        BufferedInputStream bufferedInputStream = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            String b = C0026j.m10332b(bufferedInputStream);
            C0026j.m10350a((Closeable) bufferedInputStream);
            return b;
        } catch (Throwable th3) {
            th = th3;
            C0026j.m10350a((Closeable) bufferedInputStream);
            throw th;
        }
    }

    @Override // com.crashlytics.android.core.BinaryImagesConverter.FileIdStrategy
    public String createId(File file) {
        return getFileSHA(file.getPath());
    }
}

package com.aotter.net.trek.common;

import androidx.media2.exoplayer.external.C0463C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/DiskLruCacheUtil.class */
public final class DiskLruCacheUtil {

    /* renamed from: a */
    public static final Charset f1498a = Charset.forName(C0463C.ASCII_NAME);

    /* renamed from: b */
    public static final Charset f1499b = Charset.forName("UTF-8");

    /* renamed from: a */
    public static String m36380a(Reader reader) {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int read = reader.read(cArr);
                if (read == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, read);
            }
        } finally {
            reader.close();
        }
    }

    /* renamed from: a */
    public static void m36382a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m36381a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    m36381a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }
}

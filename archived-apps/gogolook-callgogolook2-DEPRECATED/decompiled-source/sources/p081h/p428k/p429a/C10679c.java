package p081h.p428k.p429a;

import androidx.media2.exoplayer.external.C0463C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: h.k.a.c */
/* loaded from: classes2-dex2jar.jar:h/k/a/c.class */
public final class C10679c {

    /* renamed from: a */
    public static final Charset f24312a = Charset.forName(C0463C.ASCII_NAME);

    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: a */
    public static void m10954a(Closeable closeable) {
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
    public static void m10953a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    m10953a(file2);
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

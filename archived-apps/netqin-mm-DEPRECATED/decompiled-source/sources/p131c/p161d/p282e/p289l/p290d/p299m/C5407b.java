package p131c.p161d.p282e.p289l.p290d.p299m;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
/* renamed from: c.d.e.l.d.m.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/m/b.class */
public class C5407b extends FileOutputStream {

    /* renamed from: d */
    public static final FilenameFilter f18336d = new C5408a();

    /* renamed from: a */
    public final String f18337a;

    /* renamed from: b */
    public File f18338b;

    /* renamed from: c */
    public boolean f18339c = false;

    /* renamed from: c.d.e.l.d.m.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/m/b$a.class */
    public class C5408a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".cls_temp");
        }
    }

    public C5407b(File file, String str) throws FileNotFoundException {
        super(new File(file, str + ".cls_temp"));
        this.f18337a = file + File.separator + str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18337a);
        sb.append(".cls_temp");
        this.f18338b = new File(sb.toString());
    }

    /* renamed from: a */
    public void m23868a() throws IOException {
        if (!this.f18339c) {
            this.f18339c = true;
            super.flush();
            super.close();
        }
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (!this.f18339c) {
                this.f18339c = true;
                super.flush();
                super.close();
                File file = new File(this.f18337a + ".cls");
                if (this.f18338b.renameTo(file)) {
                    this.f18338b = null;
                    return;
                }
                String str = "";
                if (file.exists()) {
                    str = " (target already exists)";
                } else if (!this.f18338b.exists()) {
                    str = " (source does not exist)";
                }
                throw new IOException("Could not rename temp file: " + this.f18338b + " -> " + file + str);
            }
        }
    }
}

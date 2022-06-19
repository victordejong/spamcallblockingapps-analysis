package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;
/* renamed from: androidx.fragment.app.e0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/e0.class */
final class C0258e0 extends Writer {

    /* renamed from: f */
    private final String f1478f;

    /* renamed from: g */
    private StringBuilder f1479g = new StringBuilder(128);

    public C0258e0(String str) {
        this.f1478f = str;
    }

    /* renamed from: a */
    private void m5816a() {
        if (this.f1479g.length() > 0) {
            Log.d(this.f1478f, this.f1479g.toString());
            StringBuilder sb = this.f1479g;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m5816a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m5816a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m5816a();
            } else {
                this.f1479g.append(c);
            }
        }
    }
}

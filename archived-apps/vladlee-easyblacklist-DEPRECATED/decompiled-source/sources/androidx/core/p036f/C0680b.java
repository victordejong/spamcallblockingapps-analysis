package androidx.core.p036f;

import android.util.Log;
import java.io.Writer;
/* renamed from: androidx.core.f.b */
/* loaded from: classes-dex2jar.jar:androidx/core/f/b.class */
public final class C0680b extends Writer {

    /* renamed from: a */
    private final String f3004a;

    /* renamed from: b */
    private StringBuilder f3005b = new StringBuilder(128);

    public C0680b(String str) {
        this.f3004a = str;
    }

    /* renamed from: a */
    private void m8555a() {
        if (this.f3005b.length() > 0) {
            Log.d(this.f3004a, this.f3005b.toString());
            StringBuilder sb = this.f3005b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m8555a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        m8555a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m8555a();
            } else {
                this.f3005b.append(c);
            }
        }
    }
}

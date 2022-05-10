package p131c.p161d.p282e.p340u.p347j;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.OutputStream;
import p131c.p161d.p282e.p340u.p343f.C5954a;
/* renamed from: c.d.e.u.j.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/b.class */
public final class C5973b extends OutputStream {

    /* renamed from: a */
    public OutputStream f19392a;

    /* renamed from: b */
    public long f19393b = -1;

    /* renamed from: c */
    public C5954a f19394c;

    /* renamed from: d */
    public final Timer f19395d;

    public C5973b(OutputStream outputStream, C5954a aVar, Timer timer) {
        this.f19392a = outputStream;
        this.f19394c = aVar;
        this.f19395d = timer;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long j = this.f19393b;
        if (j != -1) {
            this.f19394c.m22566a(j);
        }
        this.f19394c.m22556d(this.f19395d.m7217b());
        try {
            this.f19392a.close();
        } catch (IOException e) {
            this.f19394c.m22553e(this.f19395d.m7217b());
            C5979h.m22430a(this.f19394c);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.f19392a.flush();
        } catch (IOException e) {
            this.f19394c.m22553e(this.f19395d.m7217b());
            C5979h.m22430a(this.f19394c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            this.f19392a.write(i);
            long j = this.f19393b + 1;
            this.f19393b = j;
            this.f19394c.m22566a(j);
        } catch (IOException e) {
            this.f19394c.m22553e(this.f19395d.m7217b());
            C5979h.m22430a(this.f19394c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.f19392a.write(bArr);
            long length = this.f19393b + bArr.length;
            this.f19393b = length;
            this.f19394c.m22566a(length);
        } catch (IOException e) {
            this.f19394c.m22553e(this.f19395d.m7217b());
            C5979h.m22430a(this.f19394c);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.f19392a.write(bArr, i, i2);
            long j = this.f19393b + i2;
            this.f19393b = j;
            this.f19394c.m22566a(j);
        } catch (IOException e) {
            this.f19394c.m22553e(this.f19395d.m7217b());
            C5979h.m22430a(this.f19394c);
            throw e;
        }
    }
}

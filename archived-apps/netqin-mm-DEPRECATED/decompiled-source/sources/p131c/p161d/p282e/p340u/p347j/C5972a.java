package p131c.p161d.p282e.p340u.p347j;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import p131c.p161d.p282e.p340u.p343f.C5954a;
/* renamed from: c.d.e.u.j.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/a.class */
public final class C5972a extends InputStream {

    /* renamed from: a */
    public final InputStream f19386a;

    /* renamed from: b */
    public final C5954a f19387b;

    /* renamed from: c */
    public final Timer f19388c;

    /* renamed from: e */
    public long f19390e;

    /* renamed from: d */
    public long f19389d = -1;

    /* renamed from: f */
    public long f19391f = -1;

    public C5972a(InputStream inputStream, C5954a aVar, Timer timer) {
        this.f19388c = timer;
        this.f19386a = inputStream;
        this.f19387b = aVar;
        this.f19390e = aVar.m22560c();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.f19386a.available();
        } catch (IOException e) {
            this.f19387b.m22553e(this.f19388c.m7217b());
            C5979h.m22430a(this.f19387b);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long b = this.f19388c.m7217b();
        if (this.f19391f == -1) {
            this.f19391f = b;
        }
        try {
            this.f19386a.close();
            if (this.f19389d != -1) {
                this.f19387b.m22559c(this.f19389d);
            }
            if (this.f19390e != -1) {
                this.f19387b.m22550f(this.f19390e);
            }
            this.f19387b.m22553e(this.f19391f);
            this.f19387b.m22568a();
        } catch (IOException e) {
            this.f19387b.m22553e(this.f19388c.m7217b());
            C5979h.m22430a(this.f19387b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f19386a.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f19386a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int read = this.f19386a.read();
            long b = this.f19388c.m7217b();
            if (this.f19390e == -1) {
                this.f19390e = b;
            }
            if (read == -1 && this.f19391f == -1) {
                this.f19391f = b;
                this.f19387b.m22553e(b);
                this.f19387b.m22568a();
            } else {
                long j = this.f19389d + 1;
                this.f19389d = j;
                this.f19387b.m22559c(j);
            }
            return read;
        } catch (IOException e) {
            this.f19387b.m22553e(this.f19388c.m7217b());
            C5979h.m22430a(this.f19387b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int read = this.f19386a.read(bArr);
            long b = this.f19388c.m7217b();
            if (this.f19390e == -1) {
                this.f19390e = b;
            }
            if (read == -1 && this.f19391f == -1) {
                this.f19391f = b;
                this.f19387b.m22553e(b);
                this.f19387b.m22568a();
            } else {
                long j = this.f19389d + read;
                this.f19389d = j;
                this.f19387b.m22559c(j);
            }
            return read;
        } catch (IOException e) {
            this.f19387b.m22553e(this.f19388c.m7217b());
            C5979h.m22430a(this.f19387b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            int read = this.f19386a.read(bArr, i, i2);
            long b = this.f19388c.m7217b();
            if (this.f19390e == -1) {
                this.f19390e = b;
            }
            if (read == -1 && this.f19391f == -1) {
                this.f19391f = b;
                this.f19387b.m22553e(b);
                this.f19387b.m22568a();
            } else {
                long j = this.f19389d + read;
                this.f19389d = j;
                this.f19387b.m22559c(j);
            }
            return read;
        } catch (IOException e) {
            this.f19387b.m22553e(this.f19388c.m7217b());
            C5979h.m22430a(this.f19387b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        try {
            this.f19386a.reset();
        } catch (IOException e) {
            this.f19387b.m22553e(this.f19388c.m7217b());
            C5979h.m22430a(this.f19387b);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        try {
            long skip = this.f19386a.skip(j);
            long b = this.f19388c.m7217b();
            if (this.f19390e == -1) {
                this.f19390e = b;
            }
            if (skip == -1 && this.f19391f == -1) {
                this.f19391f = b;
                this.f19387b.m22553e(b);
            } else {
                long j2 = this.f19389d + skip;
                this.f19389d = j2;
                this.f19387b.m22559c(j2);
            }
            return skip;
        } catch (IOException e) {
            this.f19387b.m22553e(this.f19388c.m7217b());
            C5979h.m22430a(this.f19387b);
            throw e;
        }
    }
}

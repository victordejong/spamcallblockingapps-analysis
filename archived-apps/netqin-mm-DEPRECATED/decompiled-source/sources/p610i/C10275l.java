package p610i;

import java.io.IOException;
import java.nio.ByteBuffer;
import okio.ByteString;
/* renamed from: i.l */
/* loaded from: classes2-dex2jar.jar:i/l.class */
public final class C10275l implements AbstractC10263d {

    /* renamed from: a */
    public final C10260c f37910a = new C10260c();

    /* renamed from: b */
    public final AbstractC10280p f37911b;

    /* renamed from: c */
    public boolean f37912c;

    public C10275l(AbstractC10280p pVar) {
        if (pVar != null) {
            this.f37911b = pVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: W */
    public C10260c mo728W() {
        return this.f37910a;
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: a */
    public long mo739a(AbstractC10281q qVar) throws IOException {
        if (qVar != null) {
            long j = 0;
            while (true) {
                long b = qVar.mo704b(this.f37910a, 8192L);
                if (b == -1) {
                    return j;
                }
                j += b;
                mo737b1();
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: a */
    public AbstractC10263d mo738a(ByteString byteString) throws IOException {
        if (!this.f37912c) {
            this.f37910a.mo738a(byteString);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10280p
    /* renamed from: a */
    public void mo706a(C10260c cVar, long j) throws IOException {
        if (!this.f37912c) {
            this.f37910a.mo706a(cVar, j);
            mo737b1();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: b1 */
    public AbstractC10263d mo737b1() throws IOException {
        if (!this.f37912c) {
            long e = this.f37910a.m771e();
            if (e > 0) {
                this.f37911b.mo706a(this.f37910a, e);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th;
        Throwable th2;
        if (!this.f37912c) {
            try {
                if (this.f37910a.f37889b > 0) {
                    this.f37911b.mo706a(this.f37910a, this.f37910a.f37889b);
                }
                th = null;
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                this.f37911b.close();
                th2 = th;
            } catch (Throwable th4) {
                th2 = th4;
                th2 = th;
                if (th == null) {
                }
            }
            this.f37912c = true;
            if (th2 != null) {
                C10284s.m692a(th2);
                throw null;
            }
        }
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: e */
    public AbstractC10263d mo736e(long j) throws IOException {
        if (!this.f37912c) {
            this.f37910a.mo736e(j);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10280p
    /* renamed from: f0 */
    public C10282r mo705f0() {
        return this.f37911b.mo705f0();
    }

    @Override // p610i.AbstractC10263d, p610i.AbstractC10280p, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f37912c) {
            C10260c cVar = this.f37910a;
            long j = cVar.f37889b;
            if (j > 0) {
                this.f37911b.mo706a(cVar, j);
            }
            this.f37911b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: h */
    public AbstractC10263d mo735h(long j) throws IOException {
        if (!this.f37912c) {
            this.f37910a.mo735h(j);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f37912c;
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: k */
    public AbstractC10263d mo734k(String str) throws IOException {
        if (!this.f37912c) {
            this.f37910a.mo734k(str);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    public String toString() {
        return "buffer(" + this.f37911b + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f37912c) {
            int write = this.f37910a.write(byteBuffer);
            mo737b1();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10263d
    public AbstractC10263d write(byte[] bArr) throws IOException {
        if (!this.f37912c) {
            this.f37910a.write(bArr);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10263d
    public AbstractC10263d write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f37912c) {
            this.f37910a.write(bArr, i, i2);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10263d
    public AbstractC10263d writeByte(int i) throws IOException {
        if (!this.f37912c) {
            this.f37910a.writeByte(i);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10263d
    public AbstractC10263d writeInt(int i) throws IOException {
        if (!this.f37912c) {
            this.f37910a.writeInt(i);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10263d
    public AbstractC10263d writeShort(int i) throws IOException {
        if (!this.f37912c) {
            this.f37910a.writeShort(i);
            mo737b1();
            return this;
        }
        throw new IllegalStateException("closed");
    }
}

package p610i;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* renamed from: i.j */
/* loaded from: classes2-dex2jar.jar:i/j.class */
public final class C10269j implements AbstractC10281q {

    /* renamed from: a */
    public final AbstractC10264e f37900a;

    /* renamed from: b */
    public final Inflater f37901b;

    /* renamed from: c */
    public int f37902c;

    /* renamed from: d */
    public boolean f37903d;

    public C10269j(AbstractC10264e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater != null) {
            this.f37900a = eVar;
            this.f37901b = inflater;
        } else {
            throw new IllegalArgumentException("inflater == null");
        }
    }

    /* renamed from: a */
    public final boolean m757a() throws IOException {
        if (!this.f37901b.needsInput()) {
            return false;
        }
        m756b();
        if (this.f37901b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        } else if (this.f37900a.mo730M0()) {
            return true;
        } else {
            C10278n nVar = this.f37900a.mo728W().f37888a;
            int i = nVar.f37919c;
            int i2 = nVar.f37918b;
            int i3 = i - i2;
            this.f37902c = i3;
            this.f37901b.setInput(nVar.f37917a, i2, i3);
            return false;
        }
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: b */
    public long mo704b(C10260c cVar, long j) throws IOException {
        boolean a;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.f37903d) {
            throw new IllegalStateException("closed");
        } else if (j == 0) {
            return 0L;
        } else {
            do {
                a = m757a();
                try {
                    C10278n b = cVar.m775b(1);
                    int inflate = this.f37901b.inflate(b.f37917a, b.f37919c, (int) Math.min(j, 8192 - b.f37919c));
                    if (inflate > 0) {
                        b.f37919c += inflate;
                        long j2 = inflate;
                        cVar.f37889b += j2;
                        return j2;
                    }
                    if (!this.f37901b.finished() && !this.f37901b.needsDictionary()) {
                    }
                    m756b();
                    if (b.f37918b != b.f37919c) {
                        return -1L;
                    }
                    cVar.f37888a = b.m710b();
                    C10279o.m707a(b);
                    return -1L;
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            } while (!a);
            throw new EOFException("source exhausted prematurely");
        }
    }

    /* renamed from: b */
    public final void m756b() throws IOException {
        int i = this.f37902c;
        if (i != 0) {
            int remaining = i - this.f37901b.getRemaining();
            this.f37902c -= remaining;
            this.f37900a.skip(remaining);
        }
    }

    @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f37903d) {
            this.f37901b.end();
            this.f37903d = true;
            this.f37900a.close();
        }
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: f0 */
    public C10282r mo703f0() {
        return this.f37900a.mo703f0();
    }
}

package p599h.p600d0.p605i;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.http2.ErrorCode;
import p599h.p600d0.C10109c;
import p599h.p600d0.p605i.C10158b;
import p610i.AbstractC10263d;
import p610i.C10260c;
/* renamed from: h.d0.i.h */
/* loaded from: classes2-dex2jar.jar:h/d0/i/h.class */
public final class C10186h implements Closeable {

    /* renamed from: g */
    public static final Logger f37627g = Logger.getLogger(C10161c.class.getName());

    /* renamed from: a */
    public final AbstractC10263d f37628a;

    /* renamed from: b */
    public final boolean f37629b;

    /* renamed from: c */
    public final C10260c f37630c;

    /* renamed from: d */
    public int f37631d = 16384;

    /* renamed from: e */
    public boolean f37632e;

    /* renamed from: f */
    public final C10158b.C10160b f37633f;

    public C10186h(AbstractC10263d dVar, boolean z) {
        this.f37628a = dVar;
        this.f37629b = z;
        C10260c cVar = new C10260c();
        this.f37630c = cVar;
        this.f37633f = new C10158b.C10160b(cVar);
    }

    /* renamed from: a */
    public static void m1141a(AbstractC10263d dVar, int i) throws IOException {
        dVar.writeByte((i >>> 16) & 255);
        dVar.writeByte((i >>> 8) & 255);
        dVar.writeByte(i & 255);
    }

    /* renamed from: P0 */
    public void m1149P0() throws IOException {
        synchronized (this) {
            if (this.f37632e) {
                throw new IOException("closed");
            } else if (this.f37629b) {
                if (f37627g.isLoggable(Level.FINE)) {
                    f37627g.fine(C10109c.m1452a(">> CONNECTION %s", C10161c.f37517a.hex()));
                }
                this.f37628a.write(C10161c.f37517a.toByteArray());
                this.f37628a.flush();
            }
        }
    }

    /* renamed from: a */
    public void m1148a(int i, byte b, C10260c cVar, int i2) throws IOException {
        m1147a(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.f37628a.mo706a(cVar, i2);
        }
    }

    /* renamed from: a */
    public void m1147a(int i, int i2, byte b, byte b2) throws IOException {
        if (f37627g.isLoggable(Level.FINE)) {
            f37627g.fine(C10161c.m1245a(false, i, i2, b, b2));
        }
        int i3 = this.f37631d;
        if (i2 > i3) {
            C10161c.m1246a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            throw null;
        } else if ((Integer.MIN_VALUE & i) == 0) {
            m1141a(this.f37628a, i2);
            this.f37628a.writeByte(b & 255);
            this.f37628a.writeByte(b2 & 255);
            this.f37628a.writeInt(i & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
        } else {
            C10161c.m1246a("reserved bit set: %s", Integer.valueOf(i));
            throw null;
        }
    }

    /* renamed from: a */
    public void m1146a(int i, int i2, List<C10156a> list) throws IOException {
        synchronized (this) {
            if (!this.f37632e) {
                this.f37633f.m1251a(list);
                long size = this.f37630c.size();
                int min = (int) Math.min(this.f37631d - 4, size);
                long j = min;
                m1147a(i, min + 4, (byte) 5, size == j ? (byte) 4 : (byte) 0);
                this.f37628a.writeInt(i2 & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
                this.f37628a.mo706a(this.f37630c, j);
                if (size > j) {
                    m1135b(i, size - j);
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    /* renamed from: a */
    public void m1145a(int i, long j) throws IOException {
        synchronized (this) {
            if (this.f37632e) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                C10161c.m1246a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
                throw null;
            } else {
                m1147a(i, 4, (byte) 8, (byte) 0);
                this.f37628a.writeInt((int) j);
                this.f37628a.flush();
            }
        }
    }

    /* renamed from: a */
    public void m1144a(int i, ErrorCode errorCode) throws IOException {
        synchronized (this) {
            if (this.f37632e) {
                throw new IOException("closed");
            } else if (errorCode.httpCode != -1) {
                m1147a(i, 4, (byte) 3, (byte) 0);
                this.f37628a.writeInt(errorCode.httpCode);
                this.f37628a.flush();
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    /* renamed from: a */
    public void m1143a(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
        synchronized (this) {
            if (this.f37632e) {
                throw new IOException("closed");
            } else if (errorCode.httpCode != -1) {
                m1147a(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.f37628a.writeInt(i);
                this.f37628a.writeInt(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.f37628a.write(bArr);
                }
                this.f37628a.flush();
            } else {
                C10161c.m1246a("errorCode.httpCode == -1", new Object[0]);
                throw null;
            }
        }
    }

    /* renamed from: a */
    public void m1142a(C10191k kVar) throws IOException {
        synchronized (this) {
            if (!this.f37632e) {
                this.f37631d = kVar.m1116c(this.f37631d);
                if (kVar.m1119b() != -1) {
                    this.f37633f.m1248b(kVar.m1119b());
                }
                m1147a(0, 0, (byte) 4, (byte) 1);
                this.f37628a.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    /* renamed from: a */
    public void m1140a(boolean z, int i, int i2) throws IOException {
        synchronized (this) {
            if (!this.f37632e) {
                m1147a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
                this.f37628a.writeInt(i);
                this.f37628a.writeInt(i2);
                this.f37628a.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    /* renamed from: a */
    public void m1139a(boolean z, int i, int i2, List<C10156a> list) throws IOException {
        synchronized (this) {
            if (!this.f37632e) {
                m1137a(z, i, list);
            } else {
                throw new IOException("closed");
            }
        }
    }

    /* renamed from: a */
    public void m1138a(boolean z, int i, C10260c cVar, int i2) throws IOException {
        synchronized (this) {
            if (!this.f37632e) {
                byte b = 0;
                if (z) {
                    b = (byte) 1;
                }
                m1148a(i, b, cVar, i2);
            } else {
                throw new IOException("closed");
            }
        }
    }

    /* renamed from: a */
    public void m1137a(boolean z, int i, List<C10156a> list) throws IOException {
        if (!this.f37632e) {
            this.f37633f.m1251a(list);
            long size = this.f37630c.size();
            int min = (int) Math.min(this.f37631d, size);
            long j = min;
            byte b = size == j ? (byte) 4 : (byte) 0;
            byte b2 = b;
            if (z) {
                b2 = (byte) (b | 1);
            }
            m1147a(i, min, (byte) 1, b2);
            this.f37628a.mo706a(this.f37630c, j);
            if (size > j) {
                m1135b(i, size - j);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    /* renamed from: a2 */
    public int m1136a2() {
        return this.f37631d;
    }

    /* renamed from: b */
    public final void m1135b(int i, long j) throws IOException {
        while (j > 0) {
            int min = (int) Math.min(this.f37631d, j);
            long j2 = min;
            j -= j2;
            m1147a(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.f37628a.mo706a(this.f37630c, j2);
        }
    }

    /* renamed from: b */
    public void m1134b(C10191k kVar) throws IOException {
        synchronized (this) {
            if (!this.f37632e) {
                int i = 0;
                m1147a(0, kVar.m1115d() * 6, (byte) 4, (byte) 0);
                while (i < 10) {
                    if (kVar.m1114d(i)) {
                        this.f37628a.writeShort(i == 4 ? 3 : i == 7 ? 4 : i);
                        this.f37628a.writeInt(kVar.m1122a(i));
                    }
                    i++;
                }
                this.f37628a.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.f37632e = true;
            this.f37628a.close();
        }
    }

    public void flush() throws IOException {
        synchronized (this) {
            if (!this.f37632e) {
                this.f37628a.flush();
            } else {
                throw new IOException("closed");
            }
        }
    }
}

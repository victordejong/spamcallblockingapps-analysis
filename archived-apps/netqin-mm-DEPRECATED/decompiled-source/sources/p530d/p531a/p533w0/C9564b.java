package p530d.p531a.p533w0;

import io.grpc.okhttp.OkHttpFrameLogger;
import io.grpc.okhttp.internal.framed.ErrorCode;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.ByteString;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p533w0.p534o.p535f.AbstractC9600b;
import p530d.p531a.p533w0.p534o.p535f.C9601c;
import p530d.p531a.p533w0.p534o.p535f.C9612g;
import p610i.C10260c;
/* renamed from: d.a.w0.b */
/* loaded from: classes2-dex2jar.jar:d/a/w0/b.class */
public final class C9564b implements AbstractC9600b {

    /* renamed from: d */
    public static final Logger f36479d = Logger.getLogger(C9571f.class.getName());

    /* renamed from: a */
    public final AbstractC9565a f36480a;

    /* renamed from: b */
    public final AbstractC9600b f36481b;

    /* renamed from: c */
    public final OkHttpFrameLogger f36482c;

    /* renamed from: d.a.w0.b$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/b$a.class */
    public interface AbstractC9565a {
        /* renamed from: a */
        void mo2410a(Throwable th);
    }

    public C9564b(AbstractC9565a aVar, AbstractC9600b bVar) {
        this(aVar, bVar, new OkHttpFrameLogger(Level.FINE, C9571f.class));
    }

    public C9564b(AbstractC9565a aVar, AbstractC9600b bVar, OkHttpFrameLogger okHttpFrameLogger) {
        C4933n.m24794a(aVar, "transportExceptionHandler");
        this.f36480a = aVar;
        C4933n.m24794a(bVar, "frameWriter");
        this.f36481b = bVar;
        C4933n.m24794a(okHttpFrameLogger, "frameLogger");
        this.f36482c = okHttpFrameLogger;
    }

    /* renamed from: a */
    public static Level m2474a(Throwable th) {
        return th.getClass().equals(IOException.class) ? Level.FINE : Level.INFO;
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: P0 */
    public void mo2211P0() {
        try {
            this.f36481b.mo2211P0();
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a */
    public void mo2208a(int i, long j) {
        this.f36482c.m304a(OkHttpFrameLogger.Direction.OUTBOUND, i, j);
        try {
            this.f36481b.mo2208a(i, j);
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a */
    public void mo2207a(int i, ErrorCode errorCode) {
        this.f36482c.m302a(OkHttpFrameLogger.Direction.OUTBOUND, i, errorCode);
        try {
            this.f36481b.mo2207a(i, errorCode);
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a */
    public void mo2206a(int i, ErrorCode errorCode, byte[] bArr) {
        this.f36482c.m301a(OkHttpFrameLogger.Direction.OUTBOUND, i, errorCode, ByteString.m3of(bArr));
        try {
            this.f36481b.mo2206a(i, errorCode, bArr);
            this.f36481b.flush();
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a */
    public void mo2205a(C9612g gVar) {
        this.f36482c.m306a(OkHttpFrameLogger.Direction.OUTBOUND);
        try {
            this.f36481b.mo2205a(gVar);
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a */
    public void mo2204a(boolean z, int i, int i2) {
        if (z) {
            this.f36482c.m297b(OkHttpFrameLogger.Direction.OUTBOUND, (4294967295L & i2) | (i << 32));
        } else {
            this.f36482c.m299a(OkHttpFrameLogger.Direction.OUTBOUND, (4294967295L & i2) | (i << 32));
        }
        try {
            this.f36481b.mo2204a(z, i, i2);
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a */
    public void mo2203a(boolean z, int i, C10260c cVar, int i2) {
        OkHttpFrameLogger okHttpFrameLogger = this.f36482c;
        OkHttpFrameLogger.Direction direction = OkHttpFrameLogger.Direction.OUTBOUND;
        cVar.mo728W();
        okHttpFrameLogger.m303a(direction, i, cVar, i2, z);
        try {
            this.f36481b.mo2203a(z, i, cVar, i2);
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a */
    public void mo2201a(boolean z, boolean z2, int i, int i2, List<C9601c> list) {
        try {
            this.f36481b.mo2201a(z, z2, i, i2, list);
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: a2 */
    public int mo2200a2() {
        return this.f36481b.mo2200a2();
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    /* renamed from: b */
    public void mo2198b(C9612g gVar) {
        this.f36482c.m298a(OkHttpFrameLogger.Direction.OUTBOUND, gVar);
        try {
            this.f36481b.mo2198b(gVar);
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f36481b.close();
        } catch (IOException e) {
            f36479d.log(m2474a(e), "Failed closing connection", (Throwable) e);
        }
    }

    @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9600b
    public void flush() {
        try {
            this.f36481b.flush();
        } catch (IOException e) {
            this.f36480a.mo2410a(e);
        }
    }
}

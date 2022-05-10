package p530d.p531a.p533w0.p534o.p535f;

import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.okhttp.internal.framed.HeadersMode;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import okio.ByteString;
import p610i.AbstractC10264e;
/* renamed from: d.a.w0.o.f.a */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/a.class */
public interface AbstractC9598a extends Closeable {

    /* renamed from: d.a.w0.o.f.a$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/o/f/a$a.class */
    public interface AbstractC9599a {
        /* renamed from: a */
        void mo2278a();

        /* renamed from: a */
        void mo2277a(int i, int i2, int i3, boolean z);

        /* renamed from: a */
        void mo2276a(int i, int i2, List<C9601c> list) throws IOException;

        /* renamed from: a */
        void mo2275a(int i, long j);

        /* renamed from: a */
        void mo2274a(int i, ErrorCode errorCode);

        /* renamed from: a */
        void mo2273a(int i, ErrorCode errorCode, ByteString byteString);

        /* renamed from: a */
        void mo2272a(boolean z, int i, int i2);

        /* renamed from: a */
        void mo2271a(boolean z, int i, AbstractC10264e eVar, int i2) throws IOException;

        /* renamed from: a */
        void mo2270a(boolean z, C9612g gVar);

        /* renamed from: a */
        void mo2269a(boolean z, boolean z2, int i, int i2, List<C9601c> list, HeadersMode headersMode);
    }

    /* renamed from: a */
    boolean mo2222a(AbstractC9599a aVar) throws IOException;
}

package p610i;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
import okio.ByteString;
/* renamed from: i.d */
/* loaded from: classes2-dex2jar.jar:i/d.class */
public interface AbstractC10263d extends AbstractC10280p, WritableByteChannel {
    /* renamed from: W */
    C10260c mo728W();

    /* renamed from: a */
    long mo739a(AbstractC10281q qVar) throws IOException;

    /* renamed from: a */
    AbstractC10263d mo738a(ByteString byteString) throws IOException;

    /* renamed from: b1 */
    AbstractC10263d mo737b1() throws IOException;

    /* renamed from: e */
    AbstractC10263d mo736e(long j) throws IOException;

    @Override // p610i.AbstractC10280p, java.io.Flushable
    void flush() throws IOException;

    /* renamed from: h */
    AbstractC10263d mo735h(long j) throws IOException;

    /* renamed from: k */
    AbstractC10263d mo734k(String str) throws IOException;

    AbstractC10263d write(byte[] bArr) throws IOException;

    AbstractC10263d write(byte[] bArr, int i, int i2) throws IOException;

    AbstractC10263d writeByte(int i) throws IOException;

    AbstractC10263d writeInt(int i) throws IOException;

    AbstractC10263d writeShort(int i) throws IOException;
}

package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/ServerSRPParams.class */
public class ServerSRPParams {

    /* renamed from: B */
    protected BigInteger f1466B;

    /* renamed from: N */
    protected BigInteger f1467N;

    /* renamed from: g */
    protected BigInteger f1468g;

    /* renamed from: s */
    protected byte[] f1469s;

    public ServerSRPParams(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, BigInteger bigInteger3) {
        this.f1467N = bigInteger;
        this.f1468g = bigInteger2;
        this.f1469s = Arrays.clone(bArr);
        this.f1466B = bigInteger3;
    }

    public static ServerSRPParams parse(InputStream inputStream) throws IOException {
        return new ServerSRPParams(TlsSRPUtils.readSRPParameter(inputStream), TlsSRPUtils.readSRPParameter(inputStream), TlsUtils.readOpaque8(inputStream), TlsSRPUtils.readSRPParameter(inputStream));
    }

    public void encode(OutputStream outputStream) throws IOException {
        TlsSRPUtils.writeSRPParameter(this.f1467N, outputStream);
        TlsSRPUtils.writeSRPParameter(this.f1468g, outputStream);
        TlsUtils.writeOpaque8(this.f1469s, outputStream);
        TlsSRPUtils.writeSRPParameter(this.f1466B, outputStream);
    }

    public BigInteger getB() {
        return this.f1466B;
    }

    public BigInteger getG() {
        return this.f1468g;
    }

    public BigInteger getN() {
        return this.f1467N;
    }

    public byte[] getS() {
        return this.f1469s;
    }
}

package org.spongycastle.jcajce.provider.asymmetric.util;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder.class */
public interface DSAEncoder {
    BigInteger[] decode(byte[] bArr) throws IOException;

    byte[] encode(BigInteger bigInteger, BigInteger bigInteger2) throws IOException;
}

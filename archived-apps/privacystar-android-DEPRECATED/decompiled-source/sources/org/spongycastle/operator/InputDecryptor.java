package org.spongycastle.operator;

import java.io.InputStream;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/InputDecryptor.class */
public interface InputDecryptor {
    AlgorithmIdentifier getAlgorithmIdentifier();

    InputStream getInputStream(InputStream inputStream);
}

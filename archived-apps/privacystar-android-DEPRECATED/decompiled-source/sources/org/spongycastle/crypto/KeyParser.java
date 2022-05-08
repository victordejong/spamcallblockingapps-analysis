package org.spongycastle.crypto;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/KeyParser.class */
public interface KeyParser {
    AsymmetricKeyParameter readKey(InputStream inputStream) throws IOException;
}

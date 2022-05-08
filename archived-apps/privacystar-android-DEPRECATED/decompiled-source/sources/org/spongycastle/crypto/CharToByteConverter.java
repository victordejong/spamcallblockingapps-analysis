package org.spongycastle.crypto;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/CharToByteConverter.class */
public interface CharToByteConverter {
    byte[] convert(char[] cArr);

    String getType();
}

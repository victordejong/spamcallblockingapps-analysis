package com.fasterxml.jackson.core;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/SerializableString.class */
public interface SerializableString {
    int appendQuotedUTF8(byte[] bArr, int i);

    char[] asQuotedChars();

    byte[] asQuotedUTF8();

    byte[] asUnquotedUTF8();

    String getValue();
}

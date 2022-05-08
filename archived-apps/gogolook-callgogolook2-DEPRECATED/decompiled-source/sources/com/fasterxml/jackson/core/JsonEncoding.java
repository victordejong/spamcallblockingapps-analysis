package com.fasterxml.jackson.core;

import androidx.media2.exoplayer.external.C0463C;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonEncoding.class */
public enum JsonEncoding {
    UTF8("UTF-8", false, 8),
    UTF16_BE("UTF-16BE", true, 16),
    UTF16_LE(C0463C.UTF16LE_NAME, false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);
    
    public final boolean _bigEndian;
    public final int _bits;
    public final String _javaName;

    JsonEncoding(String str, boolean z, int i) {
        this._javaName = str;
        this._bigEndian = z;
        this._bits = i;
    }

    public int bits() {
        return this._bits;
    }

    public String getJavaName() {
        return this._javaName;
    }

    public boolean isBigEndian() {
        return this._bigEndian;
    }
}

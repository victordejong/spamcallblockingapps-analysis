package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.format.InputAccessor;
import com.fasterxml.jackson.core.format.MatchStrength;
import com.fasterxml.jackson.core.p049io.IOContext;
import com.fasterxml.jackson.core.p049io.MergedStream;
import com.fasterxml.jackson.core.p049io.UTF32Reader;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper.class */
public final class ByteSourceJsonBootstrapper {
    public boolean _bigEndian;
    public final boolean _bufferRecyclable;
    public int _bytesPerChar;
    public final IOContext _context;
    public final InputStream _in;
    public final byte[] _inputBuffer;
    public int _inputEnd;
    public int _inputPtr;

    public ByteSourceJsonBootstrapper(IOContext iOContext, InputStream inputStream) {
        this._bigEndian = true;
        this._context = iOContext;
        this._in = inputStream;
        this._inputBuffer = iOContext.allocReadIOBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._bufferRecyclable = true;
    }

    public ByteSourceJsonBootstrapper(IOContext iOContext, byte[] bArr, int i, int i2) {
        this._bigEndian = true;
        this._context = iOContext;
        this._in = null;
        this._inputBuffer = bArr;
        this._inputPtr = i;
        this._inputEnd = i + i2;
        this._bufferRecyclable = false;
    }

    public static MatchStrength hasJSONFormat(InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return MatchStrength.INCONCLUSIVE;
        }
        byte nextByte = inputAccessor.nextByte();
        byte b = nextByte;
        if (nextByte == -17) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -69) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != -65) {
                return MatchStrength.NO_MATCH;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            b = inputAccessor.nextByte();
        }
        int skipSpace = skipSpace(inputAccessor, b);
        if (skipSpace < 0) {
            return MatchStrength.INCONCLUSIVE;
        }
        if (skipSpace == 123) {
            int skipSpace2 = skipSpace(inputAccessor);
            return skipSpace2 < 0 ? MatchStrength.INCONCLUSIVE : (skipSpace2 == 34 || skipSpace2 == 125) ? MatchStrength.SOLID_MATCH : MatchStrength.NO_MATCH;
        } else if (skipSpace == 91) {
            int skipSpace3 = skipSpace(inputAccessor);
            return skipSpace3 < 0 ? MatchStrength.INCONCLUSIVE : (skipSpace3 == 93 || skipSpace3 == 91) ? MatchStrength.SOLID_MATCH : MatchStrength.SOLID_MATCH;
        } else {
            MatchStrength matchStrength = MatchStrength.WEAK_MATCH;
            if (skipSpace == 34) {
                return matchStrength;
            }
            if (skipSpace <= 57 && skipSpace >= 48) {
                return matchStrength;
            }
            if (skipSpace != 45) {
                return skipSpace == 110 ? tryMatch(inputAccessor, "ull", matchStrength) : skipSpace == 116 ? tryMatch(inputAccessor, "rue", matchStrength) : skipSpace == 102 ? tryMatch(inputAccessor, "alse", matchStrength) : MatchStrength.NO_MATCH;
            }
            int skipSpace4 = skipSpace(inputAccessor);
            if (skipSpace4 < 0) {
                return MatchStrength.INCONCLUSIVE;
            }
            return (skipSpace4 > 57 || skipSpace4 < 48) ? MatchStrength.NO_MATCH : matchStrength;
        }
    }

    public static int skipSpace(InputAccessor inputAccessor) throws IOException {
        if (!inputAccessor.hasMoreBytes()) {
            return -1;
        }
        return skipSpace(inputAccessor, inputAccessor.nextByte());
    }

    public static int skipSpace(InputAccessor inputAccessor, byte b) throws IOException {
        while (true) {
            int i = b & 255;
            if (i != 32 && i != 13 && i != 10 && i != 9) {
                return i;
            }
            if (!inputAccessor.hasMoreBytes()) {
                return -1;
            }
            b = inputAccessor.nextByte();
        }
    }

    public static MatchStrength tryMatch(InputAccessor inputAccessor, String str, MatchStrength matchStrength) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!inputAccessor.hasMoreBytes()) {
                return MatchStrength.INCONCLUSIVE;
            }
            if (inputAccessor.nextByte() != str.charAt(i)) {
                return MatchStrength.NO_MATCH;
            }
        }
        return matchStrength;
    }

    public final boolean checkUTF16(int i) {
        if ((65280 & i) == 0) {
            this._bigEndian = true;
        } else if ((i & 255) != 0) {
            return false;
        } else {
            this._bigEndian = false;
        }
        this._bytesPerChar = 2;
        return true;
    }

    public final boolean checkUTF32(int i) throws IOException {
        if ((i >> 8) == 0) {
            this._bigEndian = true;
        } else if ((16777215 & i) == 0) {
            this._bigEndian = false;
        } else if (((-16711681) & i) == 0) {
            reportWeirdUCS4("3412");
            throw null;
        } else if ((i & (-65281)) != 0) {
            return false;
        } else {
            reportWeirdUCS4("2143");
            throw null;
        }
        this._bytesPerChar = 4;
        return true;
    }

    public JsonParser constructParser(int i, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, CharsToNameCanonicalizer charsToNameCanonicalizer, int i2) throws IOException {
        if (detectEncoding() != JsonEncoding.UTF8 || !JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i2)) {
            return new ReaderBasedJsonParser(this._context, i, constructReader(), objectCodec, charsToNameCanonicalizer.makeChild(i2));
        }
        return new UTF8StreamJsonParser(this._context, i, this._in, objectCodec, byteQuadsCanonicalizer.makeChild(i2), this._inputBuffer, this._inputPtr, this._inputEnd, this._bufferRecyclable);
    }

    public Reader constructReader() throws IOException {
        InputStream inputStream;
        JsonEncoding encoding = this._context.getEncoding();
        int bits = encoding.bits();
        if (bits == 8 || bits == 16) {
            InputStream inputStream2 = this._in;
            if (inputStream2 == null) {
                inputStream = new ByteArrayInputStream(this._inputBuffer, this._inputPtr, this._inputEnd);
            } else {
                int i = this._inputPtr;
                int i2 = this._inputEnd;
                inputStream = inputStream2;
                if (i < i2) {
                    inputStream = new MergedStream(this._context, inputStream2, this._inputBuffer, i, i2);
                }
            }
            return new InputStreamReader(inputStream, encoding.getJavaName());
        } else if (bits == 32) {
            IOContext iOContext = this._context;
            return new UTF32Reader(iOContext, this._in, this._inputBuffer, this._inputPtr, this._inputEnd, iOContext.getEncoding().isBigEndian());
        } else {
            throw new RuntimeException("Internal error");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b4, code lost:
        if (checkUTF16((r0[r0 + 1] & 255) | ((r0[r0] & 255) << 8)) != false) goto L_0x00b7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0077, code lost:
        if (checkUTF16(r0 >>> 16) != false) goto L_0x00b7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonEncoding detectEncoding() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper.detectEncoding():com.fasterxml.jackson.core.JsonEncoding");
    }

    public boolean ensureLoaded(int i) throws IOException {
        int i2;
        for (int i3 = this._inputEnd - this._inputPtr; i3 < i; i3 += i2) {
            InputStream inputStream = this._in;
            if (inputStream == null) {
                i2 = -1;
            } else {
                byte[] bArr = this._inputBuffer;
                int i4 = this._inputEnd;
                i2 = inputStream.read(bArr, i4, bArr.length - i4);
            }
            if (i2 < 1) {
                return false;
            }
            this._inputEnd += i2;
        }
        return true;
    }

    public final boolean handleBOM(int i) throws IOException {
        if (i == -16842752) {
            reportWeirdUCS4("3412");
            throw null;
        } else if (i == -131072) {
            this._inputPtr += 4;
            this._bytesPerChar = 4;
            this._bigEndian = false;
            return true;
        } else if (i == 65279) {
            this._bigEndian = true;
            this._inputPtr += 4;
            this._bytesPerChar = 4;
            return true;
        } else if (i != 65534) {
            int i2 = i >>> 16;
            if (i2 == 65279) {
                this._inputPtr += 2;
                this._bytesPerChar = 2;
                this._bigEndian = true;
                return true;
            } else if (i2 == 65534) {
                this._inputPtr += 2;
                this._bytesPerChar = 2;
                this._bigEndian = false;
                return true;
            } else if ((i >>> 8) != 15711167) {
                return false;
            } else {
                this._inputPtr += 3;
                this._bytesPerChar = 1;
                this._bigEndian = true;
                return true;
            }
        } else {
            reportWeirdUCS4("2143");
            throw null;
        }
    }

    public final void reportWeirdUCS4(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }
}

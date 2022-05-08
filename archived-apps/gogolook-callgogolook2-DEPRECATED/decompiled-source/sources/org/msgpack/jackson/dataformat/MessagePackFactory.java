package org.msgpack.jackson.dataformat;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.p049io.IOContext;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
/* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackFactory.class */
public class MessagePackFactory extends JsonFactory {
    public static final long serialVersionUID = 2578263992015504347L;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r10 != r8.length) goto L_0x000d;
     */
    @Override // com.fasterxml.jackson.core.JsonFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.core.JsonParser _createParser(byte[] r8, int r9, int r10, com.fasterxml.jackson.core.p049io.IOContext r11) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
        /*
            r7 = this;
            r0 = r9
            if (r0 != 0) goto L_0x000d
            r0 = r8
            r12 = r0
            r0 = r10
            r1 = r8
            int r1 = r1.length
            if (r0 == r1) goto L_0x0017
        L_0x000d:
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r9
            int r2 = r2 + r3
            byte[] r0 = java.util.Arrays.copyOfRange(r0, r1, r2)
            r12 = r0
        L_0x0017:
            org.msgpack.jackson.dataformat.MessagePackParser r0 = new org.msgpack.jackson.dataformat.MessagePackParser
            r1 = r0
            r2 = r11
            r3 = r7
            int r3 = r3._parserFeatures
            r4 = r7
            com.fasterxml.jackson.core.ObjectCodec r4 = r4._objectCodec
            r5 = r12
            r1.<init>(r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.msgpack.jackson.dataformat.MessagePackFactory._createParser(byte[], int, int, com.fasterxml.jackson.core.io.IOContext):com.fasterxml.jackson.core.JsonParser");
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public MessagePackParser _createParser(InputStream inputStream, IOContext iOContext) throws IOException {
        return new MessagePackParser(iOContext, this._parserFeatures, this._objectCodec, inputStream);
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public JsonGenerator createGenerator(File file, JsonEncoding jsonEncoding) throws IOException {
        return createGenerator(new FileOutputStream(file), jsonEncoding);
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public JsonGenerator createGenerator(OutputStream outputStream, JsonEncoding jsonEncoding) throws IOException {
        return new MessagePackGenerator(this._generatorFeatures, this._objectCodec, outputStream);
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public JsonGenerator createGenerator(Writer writer) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public JsonParser createParser(InputStream inputStream) throws IOException, JsonParseException {
        return _createParser(inputStream, _createContext(inputStream, false));
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public JsonParser createParser(byte[] bArr) throws IOException, JsonParseException {
        return _createParser(bArr, 0, bArr.length, _createContext(bArr, false));
    }
}

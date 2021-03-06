package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.net.InetAddress;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/InetAddressSerializer.class */
public class InetAddressSerializer extends StdScalarSerializer<InetAddress> {
    public InetAddressSerializer() {
        super(InetAddress.class);
    }

    public void serialize(InetAddress inetAddress, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        String trim = inetAddress.toString().trim();
        int indexOf = trim.indexOf(47);
        String str = trim;
        if (indexOf >= 0) {
            str = indexOf == 0 ? trim.substring(1) : trim.substring(0, indexOf);
        }
        jsonGenerator.writeString(str);
    }

    public void serializeWithType(InetAddress inetAddress, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForScalar(inetAddress, jsonGenerator, InetAddress.class);
        serialize(inetAddress, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(inetAddress, jsonGenerator);
    }
}

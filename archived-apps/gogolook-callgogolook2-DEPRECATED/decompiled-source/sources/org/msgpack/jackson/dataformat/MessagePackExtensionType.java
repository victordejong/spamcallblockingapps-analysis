package org.msgpack.jackson.dataformat;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import java.io.IOException;
@JsonSerialize(using = Serializer.class)
/* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackExtensionType.class */
public class MessagePackExtensionType {
    public final byte[] data;
    public final byte type;

    /* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/MessagePackExtensionType$Serializer.class */
    public static class Serializer extends JsonSerializer<MessagePackExtensionType> {
        public void serialize(MessagePackExtensionType messagePackExtensionType, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
            if (jsonGenerator instanceof MessagePackGenerator) {
                ((MessagePackGenerator) jsonGenerator).writeExtensionType(messagePackExtensionType);
                return;
            }
            throw new IllegalStateException("'gen' is expected to be MessagePackGenerator but it's " + jsonGenerator.getClass());
        }
    }

    public MessagePackExtensionType(byte b, byte[] bArr) {
        this.type = b;
        this.data = bArr;
    }

    public byte[] getData() {
        return this.data;
    }

    public byte getType() {
        return this.type;
    }
}

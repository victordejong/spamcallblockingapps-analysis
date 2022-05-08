package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StringDeserializer.class */
public final class StringDeserializer extends StdScalarDeserializer<String> {
    public static final StringDeserializer instance = new StringDeserializer();

    public StringDeserializer() {
        super(String.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public String deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.hasToken(JsonToken.VALUE_STRING)) {
            return jsonParser.getText();
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            String _parseString = _parseString(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseString;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'String' value but there was more than a single value in the array");
        } else if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
            Object embeddedObject = jsonParser.getEmbeddedObject();
            if (embeddedObject == null) {
                return null;
            }
            return embeddedObject instanceof byte[] ? deserializationContext.getBase64Variant().encode((byte[]) embeddedObject, false) : embeddedObject.toString();
        } else {
            String valueAsString = jsonParser.getValueAsString();
            if (valueAsString != null) {
                return valueAsString;
            }
            throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public String deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }
}

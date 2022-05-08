package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.util.JsonParserSequence;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer.class */
public class AsWrapperTypeDeserializer extends TypeDeserializerBase implements Serializable {
    public AsWrapperTypeDeserializer(JavaType javaType, TypeIdResolver typeIdResolver, String str, boolean z, Class<?> cls) {
        super(javaType, typeIdResolver, str, z, cls);
    }

    public AsWrapperTypeDeserializer(AsWrapperTypeDeserializer asWrapperTypeDeserializer, BeanProperty beanProperty) {
        super(asWrapperTypeDeserializer, beanProperty);
    }

    public Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object typeId;
        if (jsonParser.canReadTypeId() && (typeId = jsonParser.getTypeId()) != null) {
            return _deserializeWithNativeTypeId(jsonParser, deserializationContext, typeId);
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.FIELD_NAME;
            if (nextToken != jsonToken) {
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "need JSON String that contains type id (for subtype of " + baseTypeName() + ")");
            }
        } else if (currentToken != JsonToken.FIELD_NAME) {
            JsonToken jsonToken2 = JsonToken.START_OBJECT;
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken2, "need JSON Object to contain As.WRAPPER_OBJECT type information for class " + baseTypeName());
        }
        String text = jsonParser.getText();
        JsonDeserializer<Object> _findDeserializer = _findDeserializer(deserializationContext, text);
        jsonParser.nextToken();
        JsonParser jsonParser2 = jsonParser;
        if (this._typeIdVisible) {
            jsonParser2 = jsonParser;
            if (jsonParser.getCurrentToken() == JsonToken.START_OBJECT) {
                TokenBuffer tokenBuffer = new TokenBuffer((ObjectCodec) null, false);
                tokenBuffer.writeStartObject();
                tokenBuffer.writeFieldName(this._typePropertyName);
                tokenBuffer.writeString(text);
                jsonParser2 = JsonParserSequence.createFlattened(tokenBuffer.asParser(jsonParser), jsonParser);
                jsonParser2.nextToken();
            }
        }
        Object deserialize = _findDeserializer.deserialize(jsonParser2, deserializationContext);
        JsonToken nextToken2 = jsonParser2.nextToken();
        JsonToken jsonToken3 = JsonToken.END_OBJECT;
        if (nextToken2 == jsonToken3) {
            return deserialize;
        }
        throw deserializationContext.wrongTokenException(jsonParser2, jsonToken3, "expected closing END_OBJECT after type information and deserialized value");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromAny(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromScalar(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return _deserialize(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public TypeDeserializer forProperty(BeanProperty beanProperty) {
        return beanProperty == this._property ? this : new AsWrapperTypeDeserializer(this, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public JsonTypeInfo.EnumC2723As getTypeInclusion() {
        return JsonTypeInfo.EnumC2723As.WRAPPER_OBJECT;
    }
}

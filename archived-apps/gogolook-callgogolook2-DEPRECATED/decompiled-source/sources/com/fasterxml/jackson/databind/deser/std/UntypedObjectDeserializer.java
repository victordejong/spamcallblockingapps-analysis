package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer.class */
public class UntypedObjectDeserializer extends StdDeserializer<Object> implements ResolvableDeserializer, ContextualDeserializer {
    public static final Object[] NO_OBJECTS = new Object[0];
    public JsonDeserializer<Object> _listDeserializer;
    public JavaType _listType;
    public JsonDeserializer<Object> _mapDeserializer;
    public JavaType _mapType;
    public JsonDeserializer<Object> _numberDeserializer;
    public JsonDeserializer<Object> _stringDeserializer;

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$Vanilla.class */
    public static class Vanilla extends StdDeserializer<Object> {
        public static final Vanilla std = new Vanilla();

        public Vanilla() {
            super(Object.class);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            switch (jsonParser.getCurrentTokenId()) {
                case 1:
                    if (jsonParser.nextToken() == JsonToken.END_OBJECT) {
                        return new LinkedHashMap(2);
                    }
                    break;
                case 2:
                    return new LinkedHashMap(2);
                case 3:
                    return jsonParser.nextToken() == JsonToken.END_ARRAY ? deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY) ? UntypedObjectDeserializer.NO_OBJECTS : new ArrayList(2) : deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY) ? mapArrayToArray(jsonParser, deserializationContext) : mapArray(jsonParser, deserializationContext);
                case 4:
                default:
                    throw deserializationContext.mappingException(Object.class);
                case 5:
                    break;
                case 6:
                    return jsonParser.getText();
                case 7:
                    return deserializationContext.hasSomeOfFeatures(StdDeserializer.F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
                case 8:
                    return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return jsonParser.getEmbeddedObject();
            }
            return mapObject(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
            int currentTokenId = jsonParser.getCurrentTokenId();
            if (!(currentTokenId == 1 || currentTokenId == 3)) {
                switch (currentTokenId) {
                    case 5:
                        break;
                    case 6:
                        return jsonParser.getText();
                    case 7:
                        return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS) ? jsonParser.getBigIntegerValue() : jsonParser.getNumberValue();
                    case 8:
                        return deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
                    case 9:
                        return Boolean.TRUE;
                    case 10:
                        return Boolean.FALSE;
                    case 11:
                        return null;
                    case 12:
                        return jsonParser.getEmbeddedObject();
                    default:
                        throw deserializationContext.mappingException(Object.class);
                }
            }
            return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
        }

        public Object mapArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Object deserialize = deserialize(jsonParser, deserializationContext);
            int i = 2;
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(deserialize);
                return arrayList;
            }
            Object deserialize2 = deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                ArrayList arrayList2 = new ArrayList(2);
                arrayList2.add(deserialize);
                arrayList2.add(deserialize2);
                return arrayList2;
            }
            ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
            resetAndStart[0] = deserialize;
            resetAndStart[1] = deserialize2;
            int i2 = 2;
            while (true) {
                Object deserialize3 = deserialize(jsonParser, deserializationContext);
                int i3 = i + 1;
                int i4 = i2;
                Object[] objArr = resetAndStart;
                if (i2 >= resetAndStart.length) {
                    objArr = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i4 = 0;
                }
                i2 = i4 + 1;
                objArr[i4] = deserialize3;
                if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                    ArrayList arrayList3 = new ArrayList(i3);
                    leaseObjectBuffer.completeAndClearBuffer(objArr, i2, arrayList3);
                    return arrayList3;
                }
                i = i3;
                resetAndStart = objArr;
            }
        }

        public Object[] mapArrayToArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
            int i = 0;
            while (true) {
                Object deserialize = deserialize(jsonParser, deserializationContext);
                int i2 = i;
                Object[] objArr = resetAndStart;
                if (i >= resetAndStart.length) {
                    objArr = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                    i2 = 0;
                }
                i = i2 + 1;
                objArr[i2] = deserialize;
                if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                    return leaseObjectBuffer.completeAndClearBuffer(objArr, i);
                }
                resetAndStart = objArr;
            }
        }

        public Object mapObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String nextFieldName;
            String text = jsonParser.getText();
            jsonParser.nextToken();
            Object deserialize = deserialize(jsonParser, deserializationContext);
            String nextFieldName2 = jsonParser.nextFieldName();
            if (nextFieldName2 == null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(2);
                linkedHashMap.put(text, deserialize);
                return linkedHashMap;
            }
            jsonParser.nextToken();
            Object deserialize2 = deserialize(jsonParser, deserializationContext);
            String nextFieldName3 = jsonParser.nextFieldName();
            if (nextFieldName3 == null) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(4);
                linkedHashMap2.put(text, deserialize);
                linkedHashMap2.put(nextFieldName2, deserialize2);
                return linkedHashMap2;
            }
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put(text, deserialize);
            linkedHashMap3.put(nextFieldName2, deserialize2);
            do {
                jsonParser.nextToken();
                linkedHashMap3.put(nextFieldName3, deserialize(jsonParser, deserializationContext));
                nextFieldName = jsonParser.nextFieldName();
                nextFieldName3 = nextFieldName;
            } while (nextFieldName != null);
            return linkedHashMap3;
        }
    }

    static {
        new UntypedObjectDeserializer(null, null);
    }

    @Deprecated
    public UntypedObjectDeserializer() {
        this(null, null);
    }

    public UntypedObjectDeserializer(JavaType javaType, JavaType javaType2) {
        super(Object.class);
        this._listType = javaType;
        this._mapType = javaType2;
    }

    public JsonDeserializer<Object> _clearIfStdImpl(JsonDeserializer<Object> jsonDeserializer) {
        JsonDeserializer<Object> jsonDeserializer2 = jsonDeserializer;
        if (ClassUtil.isJacksonStdImpl(jsonDeserializer)) {
            jsonDeserializer2 = null;
        }
        return jsonDeserializer2;
    }

    public JsonDeserializer<Object> _findCustomDeser(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        return deserializationContext.findNonContextualValueDeserializer(javaType);
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        return (this._stringDeserializer == null && this._numberDeserializer == null && this._mapDeserializer == null && this._listDeserializer == null && UntypedObjectDeserializer.class == UntypedObjectDeserializer.class) ? Vanilla.std : this;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 1:
            case 2:
            case 5:
                JsonDeserializer<Object> jsonDeserializer = this._mapDeserializer;
                return jsonDeserializer != null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : mapObject(jsonParser, deserializationContext);
            case 3:
                if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                    return mapArrayToArray(jsonParser, deserializationContext);
                }
                JsonDeserializer<Object> jsonDeserializer2 = this._listDeserializer;
                return jsonDeserializer2 != null ? jsonDeserializer2.deserialize(jsonParser, deserializationContext) : mapArray(jsonParser, deserializationContext);
            case 4:
            default:
                throw deserializationContext.mappingException(Object.class);
            case 6:
                JsonDeserializer<Object> jsonDeserializer3 = this._stringDeserializer;
                return jsonDeserializer3 != null ? jsonDeserializer3.deserialize(jsonParser, deserializationContext) : jsonParser.getText();
            case 7:
                JsonDeserializer<Object> jsonDeserializer4 = this._numberDeserializer;
                return jsonDeserializer4 != null ? jsonDeserializer4.deserialize(jsonParser, deserializationContext) : deserializationContext.hasSomeOfFeatures(StdDeserializer.F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
            case 8:
                JsonDeserializer<Object> jsonDeserializer5 = this._numberDeserializer;
                return jsonDeserializer5 != null ? jsonDeserializer5.deserialize(jsonParser, deserializationContext) : deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
            case 9:
                return Boolean.TRUE;
            case 10:
                return Boolean.FALSE;
            case 11:
                return null;
            case 12:
                return jsonParser.getEmbeddedObject();
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        int currentTokenId = jsonParser.getCurrentTokenId();
        if (!(currentTokenId == 1 || currentTokenId == 3)) {
            switch (currentTokenId) {
                case 5:
                    break;
                case 6:
                    JsonDeserializer<Object> jsonDeserializer = this._stringDeserializer;
                    return jsonDeserializer != null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonParser.getText();
                case 7:
                    JsonDeserializer<Object> jsonDeserializer2 = this._numberDeserializer;
                    return jsonDeserializer2 != null ? jsonDeserializer2.deserialize(jsonParser, deserializationContext) : deserializationContext.hasSomeOfFeatures(StdDeserializer.F_MASK_INT_COERCIONS) ? _coerceIntegral(jsonParser, deserializationContext) : jsonParser.getNumberValue();
                case 8:
                    JsonDeserializer<Object> jsonDeserializer3 = this._numberDeserializer;
                    return jsonDeserializer3 != null ? jsonDeserializer3.deserialize(jsonParser, deserializationContext) : deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) ? jsonParser.getDecimalValue() : Double.valueOf(jsonParser.getDoubleValue());
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return jsonParser.getEmbeddedObject();
                default:
                    throw deserializationContext.mappingException(Object.class);
            }
        }
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    public Object mapArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i = 2;
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return new ArrayList(2);
        }
        Object deserialize = deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(deserialize);
            return arrayList;
        }
        Object deserialize2 = deserialize(jsonParser, deserializationContext);
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            ArrayList arrayList2 = new ArrayList(2);
            arrayList2.add(deserialize);
            arrayList2.add(deserialize2);
            return arrayList2;
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        resetAndStart[0] = deserialize;
        resetAndStart[1] = deserialize2;
        int i2 = 2;
        while (true) {
            Object deserialize3 = deserialize(jsonParser, deserializationContext);
            int i3 = i + 1;
            int i4 = i2;
            Object[] objArr = resetAndStart;
            if (i2 >= resetAndStart.length) {
                objArr = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                i4 = 0;
            }
            i2 = i4 + 1;
            objArr[i4] = deserialize3;
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                ArrayList arrayList3 = new ArrayList(i3);
                leaseObjectBuffer.completeAndClearBuffer(objArr, i2, arrayList3);
                return arrayList3;
            }
            i = i3;
            resetAndStart = objArr;
        }
    }

    public Object[] mapArrayToArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
            return NO_OBJECTS;
        }
        ObjectBuffer leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] resetAndStart = leaseObjectBuffer.resetAndStart();
        int i = 0;
        while (true) {
            Object deserialize = deserialize(jsonParser, deserializationContext);
            int i2 = i;
            Object[] objArr = resetAndStart;
            if (i >= resetAndStart.length) {
                objArr = leaseObjectBuffer.appendCompletedChunk(resetAndStart);
                i2 = 0;
            }
            i = i2 + 1;
            objArr[i2] = deserialize;
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                return leaseObjectBuffer.completeAndClearBuffer(objArr, i);
            }
            resetAndStart = objArr;
        }
    }

    public Object mapObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str;
        String nextFieldName;
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            str = jsonParser.nextFieldName();
        } else if (currentToken == JsonToken.FIELD_NAME) {
            str = jsonParser.getCurrentName();
        } else if (currentToken == JsonToken.END_OBJECT) {
            str = null;
        } else {
            throw deserializationContext.mappingException(handledType(), jsonParser.getCurrentToken());
        }
        if (str == null) {
            return new LinkedHashMap(2);
        }
        jsonParser.nextToken();
        Object deserialize = deserialize(jsonParser, deserializationContext);
        String nextFieldName2 = jsonParser.nextFieldName();
        if (nextFieldName2 == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(2);
            linkedHashMap.put(str, deserialize);
            return linkedHashMap;
        }
        jsonParser.nextToken();
        Object deserialize2 = deserialize(jsonParser, deserializationContext);
        String nextFieldName3 = jsonParser.nextFieldName();
        if (nextFieldName3 == null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(4);
            linkedHashMap2.put(str, deserialize);
            linkedHashMap2.put(nextFieldName2, deserialize2);
            return linkedHashMap2;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put(str, deserialize);
        linkedHashMap3.put(nextFieldName2, deserialize2);
        String str2 = nextFieldName3;
        do {
            jsonParser.nextToken();
            linkedHashMap3.put(str2, deserialize(jsonParser, deserializationContext));
            nextFieldName = jsonParser.nextFieldName();
            str2 = nextFieldName;
        } while (nextFieldName != null);
        return linkedHashMap3;
    }

    @Override // com.fasterxml.jackson.databind.deser.ResolvableDeserializer
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        JavaType constructType = deserializationContext.constructType(Object.class);
        JavaType constructType2 = deserializationContext.constructType(String.class);
        TypeFactory typeFactory = deserializationContext.getTypeFactory();
        JavaType javaType = this._listType;
        if (javaType == null) {
            this._listDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructCollectionType(List.class, constructType)));
        } else {
            this._listDeserializer = _findCustomDeser(deserializationContext, javaType);
        }
        JavaType javaType2 = this._mapType;
        if (javaType2 == null) {
            this._mapDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructMapType(Map.class, constructType2, constructType)));
        } else {
            this._mapDeserializer = _findCustomDeser(deserializationContext, javaType2);
        }
        this._stringDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, constructType2));
        this._numberDeserializer = _clearIfStdImpl(_findCustomDeser(deserializationContext, typeFactory.constructType(Number.class)));
        JavaType unknownType = TypeFactory.unknownType();
        this._mapDeserializer = deserializationContext.handleSecondaryContextualization(this._mapDeserializer, null, unknownType);
        this._listDeserializer = deserializationContext.handleSecondaryContextualization(this._listDeserializer, null, unknownType);
        this._stringDeserializer = deserializationContext.handleSecondaryContextualization(this._stringDeserializer, null, unknownType);
        this._numberDeserializer = deserializationContext.handleSecondaryContextualization(this._numberDeserializer, null, unknownType);
    }
}

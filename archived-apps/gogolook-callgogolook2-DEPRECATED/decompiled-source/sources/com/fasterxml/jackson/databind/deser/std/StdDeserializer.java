package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.p049io.NumberInput;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StdDeserializer.class */
public abstract class StdDeserializer<T> extends JsonDeserializer<T> implements Serializable {
    public static final int F_MASK_INT_COERCIONS = DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.getMask() | DeserializationFeature.USE_LONG_FOR_INTS.getMask();
    public final Class<?> _valueClass;

    public StdDeserializer(JavaType javaType) {
        this._valueClass = javaType == null ? null : javaType.getRawClass();
    }

    public StdDeserializer(Class<?> cls) {
        this._valueClass = cls;
    }

    public static final double parseDouble(String str) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_NORMAL;
        }
        return Double.parseDouble(str);
    }

    public Object _coerceIntegral(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int deserializationFeatures = deserializationContext.getDeserializationFeatures();
        if (!DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(deserializationFeatures) && DeserializationFeature.USE_LONG_FOR_INTS.enabledIn(deserializationFeatures)) {
            return Long.valueOf(jsonParser.getLongValue());
        }
        return jsonParser.getBigIntegerValue();
    }

    public T _deserializeFromEmpty(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_ARRAY) {
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                    return null;
                }
                throw deserializationContext.mappingException(handledType(), JsonToken.START_ARRAY);
            }
        } else if (currentToken == JsonToken.VALUE_STRING && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && jsonParser.getText().trim().isEmpty()) {
            return null;
        }
        throw deserializationContext.mappingException(handledType());
    }

    public void _failDoubleToIntCoercion(JsonParser jsonParser, DeserializationContext deserializationContext, String str) throws IOException {
        throw deserializationContext.mappingException("Can not coerce a floating-point value ('%s') into %s; enable `DeserializationFeature.ACCEPT_FLOAT_AS_INT` to allow", jsonParser.getValueAsString(), str);
    }

    public boolean _hasTextualNull(String str) {
        return C14247d.f31851f.equals(str);
    }

    public final boolean _isIntNumber(String str) {
        int length = str.length();
        if (length <= 0) {
            return false;
        }
        char charAt = str.charAt(0);
        for (int i = (charAt == '-' || charAt == '+') ? 1 : 0; i < length; i++) {
            char charAt2 = str.charAt(i);
            if (charAt2 > '9' || charAt2 < '0') {
                return false;
            }
        }
        return true;
    }

    public final boolean _isNaN(String str) {
        return "NaN".equals(str);
    }

    public final boolean _isNegInf(String str) {
        return "-Infinity".equals(str) || "-INF".equals(str);
    }

    public final boolean _isPosInf(String str) {
        return "Infinity".equals(str) || "INF".equals(str);
    }

    public final Boolean _parseBoolean(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return Boolean.TRUE;
        }
        if (currentToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            if (jsonParser.getNumberType() != JsonParser.NumberType.INT) {
                return Boolean.valueOf(_parseBooleanFromOther(jsonParser, deserializationContext));
            }
            return jsonParser.getIntValue() == 0 ? Boolean.FALSE : Boolean.TRUE;
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Boolean) getNullValue(deserializationContext);
        } else {
            if (currentToken == JsonToken.VALUE_STRING) {
                String trim = jsonParser.getText().trim();
                if ("true".equals(trim) || "True".equals(trim)) {
                    return Boolean.TRUE;
                }
                if ("false".equals(trim) || "False".equals(trim)) {
                    return Boolean.FALSE;
                }
                if (trim.length() == 0) {
                    return (Boolean) getEmptyValue(deserializationContext);
                }
                if (_hasTextualNull(trim)) {
                    return (Boolean) getNullValue(deserializationContext);
                }
                throw deserializationContext.weirdStringException(trim, this._valueClass, "only \"true\" or \"false\" recognized");
            } else if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            } else {
                jsonParser.nextToken();
                Boolean _parseBoolean = _parseBoolean(jsonParser, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                JsonToken jsonToken = JsonToken.END_ARRAY;
                if (nextToken == jsonToken) {
                    return _parseBoolean;
                }
                throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Boolean' value but there was more than a single value in the array");
            }
        }
    }

    public final boolean _parseBooleanFromOther(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.getNumberType() == JsonParser.NumberType.LONG) {
            return (jsonParser.getLongValue() == 0 ? Boolean.FALSE : Boolean.TRUE).booleanValue();
        }
        String text = jsonParser.getText();
        return ("0.0".equals(text) || "0".equals(text)) ? Boolean.FALSE.booleanValue() : Boolean.TRUE.booleanValue();
    }

    public final boolean _parseBooleanPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        boolean z = true;
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken == JsonToken.VALUE_FALSE || currentToken == JsonToken.VALUE_NULL) {
            return false;
        }
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            if (jsonParser.getNumberType() != JsonParser.NumberType.INT) {
                return _parseBooleanFromOther(jsonParser, deserializationContext);
            }
            if (jsonParser.getIntValue() == 0) {
                z = false;
            }
            return z;
        } else if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if ("true".equals(trim) || "True".equals(trim)) {
                return true;
            }
            if ("false".equals(trim) || "False".equals(trim) || trim.length() == 0 || _hasTextualNull(trim)) {
                return false;
            }
            throw deserializationContext.weirdStringException(trim, this._valueClass, "only \"true\" or \"false\" recognized");
        } else if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        } else {
            jsonParser.nextToken();
            boolean _parseBooleanPrimitive = _parseBooleanPrimitive(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseBooleanPrimitive;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'boolean' value but there was more than a single value in the array");
        }
    }

    public Byte _parseByte(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return Byte.valueOf(jsonParser.getByteValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (_hasTextualNull(trim)) {
                return (Byte) getNullValue(deserializationContext);
            }
            try {
                if (trim.length() == 0) {
                    return (Byte) getEmptyValue(deserializationContext);
                }
                int parseInt = NumberInput.parseInt(trim);
                if (parseInt >= -128 && parseInt <= 255) {
                    return Byte.valueOf((byte) parseInt);
                }
                throw deserializationContext.weirdStringException(trim, this._valueClass, "overflow, value can not be represented as 8-bit value");
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid Byte value");
            }
        } else if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                return Byte.valueOf(jsonParser.getByteValue());
            }
            _failDoubleToIntCoercion(jsonParser, deserializationContext, "Byte");
            throw null;
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Byte) getNullValue(deserializationContext);
        } else {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            jsonParser.nextToken();
            Byte _parseByte = _parseByte(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseByte;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Byte' value but there was more than a single value in the array");
        }
    }

    public Date _parseDate(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return new Date(jsonParser.getLongValue());
        }
        if (currentToken == JsonToken.VALUE_NULL) {
            return (Date) getNullValue(deserializationContext);
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            try {
                String trim = jsonParser.getText().trim();
                return trim.length() == 0 ? (Date) getEmptyValue(deserializationContext) : _hasTextualNull(trim) ? (Date) getNullValue(deserializationContext) : deserializationContext.parseDate(trim);
            } catch (IllegalArgumentException e) {
                Class<?> cls = this._valueClass;
                throw deserializationContext.weirdStringException(null, cls, "not a valid representation (error: " + e.getMessage() + ")");
            }
        } else if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            throw deserializationContext.mappingException(this._valueClass, currentToken);
        } else {
            jsonParser.nextToken();
            Date _parseDate = _parseDate(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseDate;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'java.util.Date' value but there was more than a single value in the array");
        }
    }

    public final Double _parseDouble(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return Double.valueOf(jsonParser.getDoubleValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return (Double) getEmptyValue(deserializationContext);
            }
            if (_hasTextualNull(trim)) {
                return (Double) getNullValue(deserializationContext);
            }
            char charAt = trim.charAt(0);
            if (charAt != '-') {
                if (charAt != 'I') {
                    if (charAt == 'N' && _isNaN(trim)) {
                        return Double.valueOf(Double.NaN);
                    }
                } else if (_isPosInf(trim)) {
                    return Double.valueOf(Double.POSITIVE_INFINITY);
                }
            } else if (_isNegInf(trim)) {
                return Double.valueOf(Double.NEGATIVE_INFINITY);
            }
            try {
                return Double.valueOf(parseDouble(trim));
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid Double value");
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Double) getNullValue(deserializationContext);
        } else {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            jsonParser.nextToken();
            Double _parseDouble = _parseDouble(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseDouble;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Double' value but there was more than a single value in the array");
        }
    }

    public final double _parseDoublePrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getDoubleValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0 || _hasTextualNull(trim)) {
                return 0.0d;
            }
            char charAt = trim.charAt(0);
            if (charAt != '-') {
                if (charAt != 'I') {
                    if (charAt == 'N' && _isNaN(trim)) {
                        return Double.NaN;
                    }
                } else if (_isPosInf(trim)) {
                    return Double.POSITIVE_INFINITY;
                }
            } else if (_isNegInf(trim)) {
                return Double.NEGATIVE_INFINITY;
            }
            try {
                return parseDouble(trim);
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid double value");
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return 0.0d;
        } else {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            jsonParser.nextToken();
            double _parseDoublePrimitive = _parseDoublePrimitive(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseDoublePrimitive;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Byte' value but there was more than a single value in the array");
        }
    }

    public final Float _parseFloat(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return Float.valueOf(jsonParser.getFloatValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0) {
                return (Float) getEmptyValue(deserializationContext);
            }
            if (_hasTextualNull(trim)) {
                return (Float) getNullValue(deserializationContext);
            }
            char charAt = trim.charAt(0);
            if (charAt != '-') {
                if (charAt != 'I') {
                    if (charAt == 'N' && _isNaN(trim)) {
                        return Float.valueOf(Float.NaN);
                    }
                } else if (_isPosInf(trim)) {
                    return Float.valueOf(Float.POSITIVE_INFINITY);
                }
            } else if (_isNegInf(trim)) {
                return Float.valueOf(Float.NEGATIVE_INFINITY);
            }
            try {
                return Float.valueOf(Float.parseFloat(trim));
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid Float value");
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Float) getNullValue(deserializationContext);
        } else {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            jsonParser.nextToken();
            Float _parseFloat = _parseFloat(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseFloat;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Byte' value but there was more than a single value in the array");
        }
    }

    public final float _parseFloatPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT || currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            return jsonParser.getFloatValue();
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (trim.length() == 0 || _hasTextualNull(trim)) {
                return 0.0f;
            }
            char charAt = trim.charAt(0);
            if (charAt != '-') {
                if (charAt != 'I') {
                    if (charAt == 'N' && _isNaN(trim)) {
                        return Float.NaN;
                    }
                } else if (_isPosInf(trim)) {
                    return Float.POSITIVE_INFINITY;
                }
            } else if (_isNegInf(trim)) {
                return Float.NEGATIVE_INFINITY;
            }
            try {
                return Float.parseFloat(trim);
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid float value");
            }
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return 0.0f;
        } else {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            jsonParser.nextToken();
            float _parseFloatPrimitive = _parseFloatPrimitive(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseFloatPrimitive;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'float' value but there was more than a single value in the array");
        }
    }

    public final int _parseIntPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT)) {
            return jsonParser.getIntValue();
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            if (_hasTextualNull(trim)) {
                return 0;
            }
            try {
                int length = trim.length();
                if (length > 9) {
                    long parseLong = Long.parseLong(trim);
                    if (parseLong >= -2147483648L && parseLong <= 2147483647L) {
                        return (int) parseLong;
                    }
                    Class<?> cls = this._valueClass;
                    throw deserializationContext.weirdStringException(trim, cls, "Overflow: numeric value (" + trim + ") out of range of int (-2147483648 - 2147483647)");
                } else if (length == 0) {
                    return 0;
                } else {
                    return NumberInput.parseInt(trim);
                }
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid int value");
            }
        } else if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                return jsonParser.getValueAsInt();
            }
            _failDoubleToIntCoercion(jsonParser, deserializationContext, "int");
            throw null;
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return 0;
        } else {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            jsonParser.nextToken();
            int _parseIntPrimitive = _parseIntPrimitive(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseIntPrimitive;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'int' value but there was more than a single value in the array");
        }
    }

    public final Integer _parseInteger(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int currentTokenId = jsonParser.getCurrentTokenId();
        if (currentTokenId != 3) {
            if (currentTokenId == 11) {
                return (Integer) getNullValue(deserializationContext);
            }
            if (currentTokenId == 6) {
                String trim = jsonParser.getText().trim();
                try {
                    int length = trim.length();
                    if (_hasTextualNull(trim)) {
                        return (Integer) getNullValue(deserializationContext);
                    }
                    if (length <= 9) {
                        return length == 0 ? (Integer) getEmptyValue(deserializationContext) : Integer.valueOf(NumberInput.parseInt(trim));
                    }
                    long parseLong = Long.parseLong(trim);
                    if (parseLong >= -2147483648L && parseLong <= 2147483647L) {
                        return Integer.valueOf((int) parseLong);
                    }
                    Class<?> cls = this._valueClass;
                    throw deserializationContext.weirdStringException(trim, cls, "Overflow: numeric value (" + trim + ") out of range of Integer (-2147483648 - 2147483647)");
                } catch (IllegalArgumentException e) {
                    throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid Integer value");
                }
            } else if (currentTokenId == 7) {
                return Integer.valueOf(jsonParser.getIntValue());
            } else {
                if (currentTokenId == 8) {
                    if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                        return Integer.valueOf(jsonParser.getValueAsInt());
                    }
                    _failDoubleToIntCoercion(jsonParser, deserializationContext, "Integer");
                    throw null;
                }
            }
        } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            Integer _parseInteger = _parseInteger(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseInteger;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Integer' value but there was more than a single value in the array");
        }
        throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
    }

    public final Long _parseLong(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int currentTokenId = jsonParser.getCurrentTokenId();
        if (currentTokenId != 3) {
            if (currentTokenId == 11) {
                return (Long) getNullValue(deserializationContext);
            }
            if (currentTokenId == 6) {
                String trim = jsonParser.getText().trim();
                if (trim.length() == 0) {
                    return (Long) getEmptyValue(deserializationContext);
                }
                if (_hasTextualNull(trim)) {
                    return (Long) getNullValue(deserializationContext);
                }
                try {
                    return Long.valueOf(NumberInput.parseLong(trim));
                } catch (IllegalArgumentException e) {
                    throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid Long value");
                }
            } else if (currentTokenId == 7) {
                return Long.valueOf(jsonParser.getLongValue());
            } else {
                if (currentTokenId == 8) {
                    if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                        return Long.valueOf(jsonParser.getValueAsLong());
                    }
                    _failDoubleToIntCoercion(jsonParser, deserializationContext, "Long");
                    throw null;
                }
            }
        } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            Long _parseLong = _parseLong(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseLong;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Long' value but there was more than a single value in the array");
        }
        throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
    }

    public final long _parseLongPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int currentTokenId = jsonParser.getCurrentTokenId();
        if (currentTokenId != 3) {
            if (currentTokenId == 11) {
                return 0L;
            }
            if (currentTokenId == 6) {
                String trim = jsonParser.getText().trim();
                if (trim.length() == 0 || _hasTextualNull(trim)) {
                    return 0L;
                }
                try {
                    return NumberInput.parseLong(trim);
                } catch (IllegalArgumentException e) {
                    throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid long value");
                }
            } else if (currentTokenId == 7) {
                return jsonParser.getLongValue();
            } else {
                if (currentTokenId == 8) {
                    if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                        return jsonParser.getValueAsLong();
                    }
                    _failDoubleToIntCoercion(jsonParser, deserializationContext, "long");
                    throw null;
                }
            }
        } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            long _parseLongPrimitive = _parseLongPrimitive(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseLongPrimitive;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'long' value but there was more than a single value in the array");
        }
        throw deserializationContext.mappingException(this._valueClass, jsonParser.getCurrentToken());
    }

    public Short _parseShort(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_NUMBER_INT) {
            return Short.valueOf(jsonParser.getShortValue());
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            String trim = jsonParser.getText().trim();
            try {
                if (trim.length() == 0) {
                    return (Short) getEmptyValue(deserializationContext);
                }
                if (_hasTextualNull(trim)) {
                    return (Short) getNullValue(deserializationContext);
                }
                int parseInt = NumberInput.parseInt(trim);
                if (parseInt >= -32768 && parseInt <= 32767) {
                    return Short.valueOf((short) parseInt);
                }
                throw deserializationContext.weirdStringException(trim, this._valueClass, "overflow, value can not be represented as 16-bit value");
            } catch (IllegalArgumentException e) {
                throw deserializationContext.weirdStringException(trim, this._valueClass, "not a valid Short value");
            }
        } else if (currentToken == JsonToken.VALUE_NUMBER_FLOAT) {
            if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT)) {
                return Short.valueOf(jsonParser.getShortValue());
            }
            _failDoubleToIntCoercion(jsonParser, deserializationContext, "Short");
            throw null;
        } else if (currentToken == JsonToken.VALUE_NULL) {
            return (Short) getNullValue(deserializationContext);
        } else {
            if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                throw deserializationContext.mappingException(this._valueClass, currentToken);
            }
            jsonParser.nextToken();
            Short _parseShort = _parseShort(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return _parseShort;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'Short' value but there was more than a single value in the array");
        }
    }

    public final short _parseShortPrimitive(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int _parseIntPrimitive = _parseIntPrimitive(jsonParser, deserializationContext);
        if (_parseIntPrimitive >= -32768 && _parseIntPrimitive <= 32767) {
            return (short) _parseIntPrimitive;
        }
        throw deserializationContext.weirdStringException(String.valueOf(_parseIntPrimitive), this._valueClass, "overflow, value can not be represented as 16-bit value");
    }

    public final String _parseString(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.VALUE_STRING) {
            return jsonParser.getText();
        }
        if (currentToken != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            String valueAsString = jsonParser.getValueAsString();
            if (valueAsString != null) {
                return valueAsString;
            }
            throw deserializationContext.mappingException(String.class, jsonParser.getCurrentToken());
        }
        jsonParser.nextToken();
        String _parseString = _parseString(jsonParser, deserializationContext);
        JsonToken nextToken = jsonParser.nextToken();
        JsonToken jsonToken = JsonToken.END_ARRAY;
        if (nextToken == jsonToken) {
            return _parseString;
        }
        throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'String' value but there was more than a single value in the array");
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    public JsonDeserializer<?> findConvertingContentDeserializer(DeserializationContext deserializationContext, BeanProperty beanProperty, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        AnnotatedMember member;
        Object findDeserializationContentConverter;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || beanProperty == null || (member = beanProperty.getMember()) == null || (findDeserializationContentConverter = annotationIntrospector.findDeserializationContentConverter(member)) == null) {
            return jsonDeserializer;
        }
        Converter<Object, Object> converterInstance = deserializationContext.converterInstance(beanProperty.getMember(), findDeserializationContentConverter);
        JavaType inputType = converterInstance.getInputType(deserializationContext.getTypeFactory());
        JsonDeserializer<?> jsonDeserializer2 = jsonDeserializer;
        if (jsonDeserializer == null) {
            jsonDeserializer2 = deserializationContext.findContextualValueDeserializer(inputType, beanProperty);
        }
        return new StdDelegatingDeserializer(converterInstance, inputType, jsonDeserializer2);
    }

    public JsonDeserializer<Object> findDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return deserializationContext.findContextualValueDeserializer(javaType, beanProperty);
    }

    public Boolean findFormatFeature(DeserializationContext deserializationContext, BeanProperty beanProperty, Class<?> cls, JsonFormat.Feature feature) {
        JsonFormat.Value findFormatOverrides = findFormatOverrides(deserializationContext, beanProperty, cls);
        if (findFormatOverrides != null) {
            return findFormatOverrides.getFeature(feature);
        }
        return null;
    }

    public JsonFormat.Value findFormatOverrides(DeserializationContext deserializationContext, BeanProperty beanProperty, Class<?> cls) {
        return beanProperty != null ? beanProperty.findPropertyFormat(deserializationContext.getConfig(), cls) : deserializationContext.getDefaultPropertyFormat(cls);
    }

    public void handleUnknownProperty(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = handledType();
        }
        if (!deserializationContext.handleUnknownProperty(jsonParser, this, obj2, str)) {
            deserializationContext.reportUnknownProperty(obj2, str, this);
            jsonParser.skipChildren();
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Class<?> handledType() {
        return this._valueClass;
    }

    public boolean isDefaultDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return ClassUtil.isJacksonStdImpl(jsonDeserializer);
    }

    public boolean isDefaultKeyDeserializer(KeyDeserializer keyDeserializer) {
        return ClassUtil.isJacksonStdImpl(keyDeserializer);
    }
}

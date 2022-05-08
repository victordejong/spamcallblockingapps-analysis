package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/FromStringDeserializer.class */
public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T> {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std.class */
    public static class Std extends FromStringDeserializer<Object> {
        public final int _kind;

        public Std(Class<?> cls, int i) {
            super(cls);
            this._kind = i;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        public Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            switch (this._kind) {
                case 1:
                    return new File(str);
                case 2:
                    return new URL(str);
                case 3:
                    return URI.create(str);
                case 4:
                    try {
                        return deserializationContext.findClass(str);
                    } catch (Exception e) {
                        throw deserializationContext.instantiationException(this._valueClass, ClassUtil.getRootCause(e));
                    }
                case 5:
                    return deserializationContext.getTypeFactory().constructFromCanonical(str);
                case 6:
                    return Currency.getInstance(str);
                case 7:
                    return Pattern.compile(str);
                case 8:
                    int indexOf = str.indexOf(95);
                    if (indexOf < 0) {
                        return new Locale(str);
                    }
                    String substring = str.substring(0, indexOf);
                    String substring2 = str.substring(indexOf + 1);
                    int indexOf2 = substring2.indexOf(95);
                    return indexOf2 < 0 ? new Locale(substring, substring2) : new Locale(substring, substring2.substring(0, indexOf2), substring2.substring(indexOf2 + 1));
                case 9:
                    return Charset.forName(str);
                case 10:
                    return TimeZone.getTimeZone(str);
                case 11:
                    return InetAddress.getByName(str);
                case 12:
                    if (str.startsWith("[")) {
                        int lastIndexOf = str.lastIndexOf(93);
                        if (lastIndexOf != -1) {
                            int indexOf3 = str.indexOf(58, lastIndexOf);
                            return new InetSocketAddress(str.substring(0, lastIndexOf + 1), indexOf3 > -1 ? Integer.parseInt(str.substring(indexOf3 + 1)) : 0);
                        }
                        throw new InvalidFormatException(deserializationContext.getParser(), "Bracketed IPv6 address must contain closing bracket", str, InetSocketAddress.class);
                    }
                    int indexOf4 = str.indexOf(58);
                    if (indexOf4 >= 0) {
                        int i = indexOf4 + 1;
                        if (str.indexOf(58, i) < 0) {
                            return new InetSocketAddress(str.substring(0, indexOf4), Integer.parseInt(str.substring(i)));
                        }
                    }
                    return new InetSocketAddress(str, 0);
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        public Object _deserializeFromEmptyString() throws IOException {
            return this._kind == 3 ? URI.create("") : FromStringDeserializer.super._deserializeFromEmptyString();
        }
    }

    public FromStringDeserializer(Class<?> cls) {
        super(cls);
    }

    public static Std findDeserializer(Class<?> cls) {
        int i;
        if (cls == File.class) {
            i = 1;
        } else if (cls == URL.class) {
            i = 2;
        } else if (cls == URI.class) {
            i = 3;
        } else if (cls == Class.class) {
            i = 4;
        } else if (cls == JavaType.class) {
            i = 5;
        } else if (cls == Currency.class) {
            i = 6;
        } else if (cls == Pattern.class) {
            i = 7;
        } else if (cls == Locale.class) {
            i = 8;
        } else if (cls == Charset.class) {
            i = 9;
        } else if (cls == TimeZone.class) {
            i = 10;
        } else if (cls == InetAddress.class) {
            i = 11;
        } else if (cls != InetSocketAddress.class) {
            return null;
        } else {
            i = 12;
        }
        return new Std(cls, i);
    }

    public static Class<?>[] types() {
        return new Class[]{File.class, URL.class, URI.class, Class.class, JavaType.class, Currency.class, Pattern.class, Locale.class, Charset.class, TimeZone.class, InetAddress.class, InetSocketAddress.class};
    }

    public abstract T _deserialize(String str, DeserializationContext deserializationContext) throws IOException;

    public T _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        throw deserializationContext.mappingException("Don't know how to convert embedded Object of type %s into %s", obj.getClass().getName(), this._valueClass.getName());
    }

    public T _deserializeFromEmptyString() throws IOException {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.getCurrentToken() != JsonToken.START_ARRAY || !deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            String valueAsString = jsonParser.getValueAsString();
            IllegalArgumentException e = null;
            if (valueAsString != null) {
                if (valueAsString.length() != 0) {
                    String trim = valueAsString.trim();
                    if (trim.length() != 0) {
                        try {
                            T _deserialize = _deserialize(trim, deserializationContext);
                            if (_deserialize != null) {
                                return _deserialize;
                            }
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                        }
                        String str = "not a valid textual representation";
                        if (e != null) {
                            String message = e.getMessage();
                            str = "not a valid textual representation";
                            if (message != null) {
                                str = "not a valid textual representation, problem: " + message;
                            }
                        }
                        JsonMappingException weirdStringException = deserializationContext.weirdStringException(trim, this._valueClass, str);
                        if (e != null) {
                            weirdStringException.initCause(e);
                        }
                        throw weirdStringException;
                    }
                }
                return _deserializeFromEmptyString();
            } else if (jsonParser.getCurrentToken() == JsonToken.VALUE_EMBEDDED_OBJECT) {
                T t = (T) jsonParser.getEmbeddedObject();
                if (t == null) {
                    return null;
                }
                return this._valueClass.isAssignableFrom(t.getClass()) ? t : _deserializeEmbedded(t, deserializationContext);
            } else {
                throw deserializationContext.mappingException(this._valueClass);
            }
        } else {
            jsonParser.nextToken();
            T deserialize = deserialize(jsonParser, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            if (nextToken == jsonToken) {
                return deserialize;
            }
            throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single '" + this._valueClass.getName() + "' value but there was more than a single value in the array");
        }
    }
}

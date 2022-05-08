package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedHashSet;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/JsonValueSerializer.class */
public class JsonValueSerializer extends StdSerializer<Object> implements ContextualSerializer, JsonFormatVisitable, SchemaAware {
    public final Method _accessorMethod;
    public final boolean _forceTypeInformation;
    public final BeanProperty _property;
    public final JsonSerializer<Object> _valueSerializer;

    public JsonValueSerializer(JsonValueSerializer jsonValueSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, boolean z) {
        super(_notNullClass(jsonValueSerializer.handledType()));
        this._accessorMethod = jsonValueSerializer._accessorMethod;
        this._valueSerializer = jsonSerializer;
        this._property = beanProperty;
        this._forceTypeInformation = z;
    }

    public JsonValueSerializer(Method method, JsonSerializer<?> jsonSerializer) {
        super(method.getReturnType(), false);
        this._accessorMethod = method;
        this._valueSerializer = jsonSerializer;
        this._property = null;
        this._forceTypeInformation = true;
    }

    public static final Class<Object> _notNullClass(Class<?> cls) {
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Object.class;
        }
        return cls2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean _acceptJsonFormatVisitorForEnum(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, Class<?> cls) throws JsonMappingException {
        Object[] enumConstants;
        JsonStringFormatVisitor expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType);
        if (expectStringFormat == null) {
            return true;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : cls.getEnumConstants()) {
            try {
                linkedHashSet.add(String.valueOf(this._accessorMethod.invoke(obj, new Object[0])));
            } catch (Exception e) {
                e = e;
                while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                    e = e.getCause();
                }
                if (e instanceof Error) {
                    throw ((Error) e);
                }
                throw JsonMappingException.wrapWithPath(e, obj, this._accessorMethod.getName() + "()");
            }
        }
        expectStringFormat.enumTypes(linkedHashSet);
        return true;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        Class<?> rawClass = javaType == null ? null : javaType.getRawClass();
        Class<?> cls = rawClass;
        if (rawClass == null) {
            cls = this._accessorMethod.getDeclaringClass();
        }
        if (cls == null || !cls.isEnum() || !_acceptJsonFormatVisitorForEnum(jsonFormatVisitorWrapper, javaType, cls)) {
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                JavaType javaType2 = javaType;
                if (javaType == null) {
                    BeanProperty beanProperty = this._property;
                    if (beanProperty != null) {
                        javaType = beanProperty.getType();
                    }
                    javaType2 = javaType;
                    if (javaType == null) {
                        javaType2 = jsonFormatVisitorWrapper.getProvider().constructType(this._handledType);
                    }
                }
                JsonSerializer<Object> findTypedValueSerializer = jsonFormatVisitorWrapper.getProvider().findTypedValueSerializer(javaType2, false, this._property);
                jsonSerializer2 = findTypedValueSerializer;
                if (findTypedValueSerializer == null) {
                    jsonFormatVisitorWrapper.expectAnyFormat(javaType2);
                    return;
                }
            }
            jsonSerializer2.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, null);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            return withResolved(beanProperty, serializerProvider.handlePrimaryContextualization(jsonSerializer, beanProperty), this._forceTypeInformation);
        }
        if (!serializerProvider.isEnabled(MapperFeature.USE_STATIC_TYPING) && !Modifier.isFinal(this._accessorMethod.getReturnType().getModifiers())) {
            return this;
        }
        JavaType constructType = serializerProvider.constructType(this._accessorMethod.getGenericReturnType());
        JsonSerializer<Object> findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(constructType, beanProperty);
        return withResolved(beanProperty, findPrimaryPropertySerializer, isNaturalTypeWithStdHandling(constructType.getRawClass(), findPrimaryPropertySerializer));
    }

    public boolean isNaturalTypeWithStdHandling(Class<?> cls, JsonSerializer<?> jsonSerializer) {
        if (cls.isPrimitive()) {
            if (!(cls == Integer.TYPE || cls == Boolean.TYPE || cls == Double.TYPE)) {
                return false;
            }
        } else if (!(cls == String.class || cls == Integer.class || cls == Boolean.class || cls == Double.class)) {
            return false;
        }
        return isDefaultSerializer(jsonSerializer);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            Object invoke = this._accessorMethod.invoke(obj, new Object[0]);
            if (invoke == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                jsonSerializer2 = serializerProvider.findTypedValueSerializer(invoke.getClass(), true, this._property);
            }
            jsonSerializer2.serialize(invoke, jsonGenerator, serializerProvider);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
            while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                e = e.getCause();
            }
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw JsonMappingException.wrapWithPath(e, obj, this._accessorMethod.getName() + "()");
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        JsonSerializer<Object> jsonSerializer;
        try {
            Object invoke = this._accessorMethod.invoke(obj, new Object[0]);
            if (invoke == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer<Object> jsonSerializer2 = this._valueSerializer;
            if (jsonSerializer2 == null) {
                jsonSerializer = serializerProvider.findValueSerializer(invoke.getClass(), this._property);
            } else {
                jsonSerializer = jsonSerializer2;
                if (this._forceTypeInformation) {
                    typeSerializer.writeTypePrefixForScalar(obj, jsonGenerator);
                    jsonSerializer2.serialize(invoke, jsonGenerator, serializerProvider);
                    typeSerializer.writeTypeSuffixForScalar(obj, jsonGenerator);
                    return;
                }
            }
            jsonSerializer.serializeWithType(invoke, jsonGenerator, serializerProvider, typeSerializer);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
            while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                e = e.getCause();
            }
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw JsonMappingException.wrapWithPath(e, obj, this._accessorMethod.getName() + "()");
        }
    }

    public String toString() {
        return "(@JsonValue serializer for method " + this._accessorMethod.getDeclaringClass() + "#" + this._accessorMethod.getName() + ")";
    }

    public JsonValueSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, boolean z) {
        return (this._property == beanProperty && this._valueSerializer == jsonSerializer && z == this._forceTypeInformation) ? this : new JsonValueSerializer(this, beanProperty, jsonSerializer, z);
    }
}

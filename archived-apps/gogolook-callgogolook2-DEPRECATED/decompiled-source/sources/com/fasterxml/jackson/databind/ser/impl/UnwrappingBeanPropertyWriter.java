package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.p049io.SerializedString;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter.class */
public class UnwrappingBeanPropertyWriter extends BeanPropertyWriter implements Serializable {
    public final NameTransformer _nameTransformer;

    public UnwrappingBeanPropertyWriter(BeanPropertyWriter beanPropertyWriter, NameTransformer nameTransformer) {
        super(beanPropertyWriter);
        this._nameTransformer = nameTransformer;
    }

    public UnwrappingBeanPropertyWriter(UnwrappingBeanPropertyWriter unwrappingBeanPropertyWriter, NameTransformer nameTransformer, SerializedString serializedString) {
        super(unwrappingBeanPropertyWriter, serializedString);
        this._nameTransformer = nameTransformer;
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        JavaType javaType = this._nonTrivialBaseType;
        JsonSerializer<Object> findValueSerializer = javaType != null ? serializerProvider.findValueSerializer(serializerProvider.constructSpecializedType(javaType, cls), this) : serializerProvider.findValueSerializer(cls, this);
        NameTransformer nameTransformer = this._nameTransformer;
        NameTransformer nameTransformer2 = nameTransformer;
        if (findValueSerializer.isUnwrappingSerializer()) {
            nameTransformer2 = NameTransformer.chainedTransformer(nameTransformer, ((UnwrappingBeanSerializer) findValueSerializer)._nameTransformer);
        }
        JsonSerializer<Object> unwrappingSerializer = findValueSerializer.unwrappingSerializer(nameTransformer2);
        this._dynamicSerializers = this._dynamicSerializers.newWith(cls, unwrappingSerializer);
        return unwrappingSerializer;
    }

    public UnwrappingBeanPropertyWriter _new(NameTransformer nameTransformer, SerializedString serializedString) {
        return new UnwrappingBeanPropertyWriter(this, nameTransformer, serializedString);
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public void assignSerializer(JsonSerializer<Object> jsonSerializer) {
        super.assignSerializer(jsonSerializer);
        JsonSerializer<Object> jsonSerializer2 = this._serializer;
        if (jsonSerializer2 != null) {
            NameTransformer nameTransformer = this._nameTransformer;
            NameTransformer nameTransformer2 = nameTransformer;
            if (jsonSerializer2.isUnwrappingSerializer()) {
                nameTransformer2 = NameTransformer.chainedTransformer(nameTransformer, ((UnwrappingBeanSerializer) this._serializer)._nameTransformer);
            }
            this._serializer = this._serializer.unwrappingSerializer(nameTransformer2);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public void depositSchemaProperty(final JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
        JsonSerializer<Object> unwrappingSerializer = serializerProvider.findValueSerializer(getType(), this).unwrappingSerializer(this._nameTransformer);
        if (unwrappingSerializer.isUnwrappingSerializer()) {
            unwrappingSerializer.acceptJsonFormatVisitor(new JsonFormatVisitorWrapper.Base(this, serializerProvider) { // from class: com.fasterxml.jackson.databind.ser.impl.UnwrappingBeanPropertyWriter.1
                @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper
                public JsonObjectFormatVisitor expectObjectFormat(JavaType javaType) throws JsonMappingException {
                    return jsonObjectFormatVisitor;
                }
            }, getType());
        } else {
            super.depositSchemaProperty(jsonObjectFormatVisitor, serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public UnwrappingBeanPropertyWriter rename(NameTransformer nameTransformer) {
        return _new(NameTransformer.chainedTransformer(nameTransformer, this._nameTransformer), new SerializedString(nameTransformer.transform(this._name.getValue())));
    }

    @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        Object obj2 = get(obj);
        if (obj2 != null) {
            JsonSerializer<Object> jsonSerializer = this._serializer;
            JsonSerializer<Object> jsonSerializer2 = jsonSerializer;
            if (jsonSerializer == null) {
                Class<?> cls = obj2.getClass();
                PropertySerializerMap propertySerializerMap = this._dynamicSerializers;
                jsonSerializer2 = propertySerializerMap.serializerFor(cls);
                if (jsonSerializer2 == null) {
                    jsonSerializer2 = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                }
            }
            Object obj3 = this._suppressableValue;
            if (obj3 != null) {
                if (BeanPropertyWriter.MARKER_FOR_EMPTY == obj3) {
                    if (jsonSerializer2.isEmpty(serializerProvider, obj2)) {
                        return;
                    }
                } else if (obj3.equals(obj2)) {
                    return;
                }
            }
            if (obj2 != obj || !_handleSelfReference(obj, jsonGenerator, serializerProvider, jsonSerializer2)) {
                if (!jsonSerializer2.isUnwrappingSerializer()) {
                    jsonGenerator.writeFieldName(this._name);
                }
                TypeSerializer typeSerializer = this._typeSerializer;
                if (typeSerializer == null) {
                    jsonSerializer2.serialize(obj2, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer2.serializeWithType(obj2, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        }
    }
}

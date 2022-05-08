package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/DefaultSerializerProvider.class */
public abstract class DefaultSerializerProvider extends SerializerProvider implements Serializable {
    public transient ArrayList<ObjectIdGenerator<?>> _objectIdGenerators;
    public transient Map<Object, WritableObjectId> _seenObjectIds;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl.class */
    public static final class Impl extends DefaultSerializerProvider {
        public Impl() {
        }

        public Impl(SerializerProvider serializerProvider, SerializationConfig serializationConfig, SerializerFactory serializerFactory) {
            super(serializerProvider, serializationConfig, serializerFactory);
        }

        @Override // com.fasterxml.jackson.databind.ser.DefaultSerializerProvider
        public Impl createInstance(SerializationConfig serializationConfig, SerializerFactory serializerFactory) {
            return new Impl(this, serializationConfig, serializerFactory);
        }
    }

    public DefaultSerializerProvider() {
    }

    public DefaultSerializerProvider(SerializerProvider serializerProvider, SerializationConfig serializationConfig, SerializerFactory serializerFactory) {
        super(serializerProvider, serializationConfig, serializerFactory);
    }

    public Map<Object, WritableObjectId> _createObjectIdMap() {
        return isEnabled(SerializationFeature.USE_EQUALITY_FOR_OBJECT_ID) ? new HashMap() : new IdentityHashMap();
    }

    public void _serializeNull(JsonGenerator jsonGenerator) throws IOException {
        try {
            getDefaultNullValueSerializer().serialize(null, jsonGenerator, this);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            String message = e2.getMessage();
            String str = message;
            if (message == null) {
                str = "[no message for " + e2.getClass().getName() + "]";
            }
            throw JsonMappingException.from(jsonGenerator, str, e2);
        }
    }

    public abstract DefaultSerializerProvider createInstance(SerializationConfig serializationConfig, SerializerFactory serializerFactory);

    @Override // com.fasterxml.jackson.databind.SerializerProvider
    public WritableObjectId findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator) {
        ObjectIdGenerator<?> objectIdGenerator2;
        Map<Object, WritableObjectId> map = this._seenObjectIds;
        if (map == null) {
            this._seenObjectIds = _createObjectIdMap();
        } else {
            WritableObjectId writableObjectId = map.get(obj);
            if (writableObjectId != null) {
                return writableObjectId;
            }
        }
        ArrayList<ObjectIdGenerator<?>> arrayList = this._objectIdGenerators;
        if (arrayList != null) {
            int i = 0;
            int size = arrayList.size();
            while (true) {
                objectIdGenerator2 = null;
                if (i >= size) {
                    break;
                }
                objectIdGenerator2 = this._objectIdGenerators.get(i);
                if (objectIdGenerator2.canUseFor(objectIdGenerator)) {
                    break;
                }
                i++;
            }
        } else {
            this._objectIdGenerators = new ArrayList<>(8);
            objectIdGenerator2 = null;
        }
        ObjectIdGenerator<?> objectIdGenerator3 = objectIdGenerator2;
        if (objectIdGenerator2 == null) {
            objectIdGenerator3 = objectIdGenerator.newForSerialization(this);
            this._objectIdGenerators.add(objectIdGenerator3);
        }
        WritableObjectId writableObjectId2 = new WritableObjectId(objectIdGenerator3);
        this._seenObjectIds.put(obj, writableObjectId2);
        return writableObjectId2;
    }

    public void serializeValue(JsonGenerator jsonGenerator, Object obj) throws IOException {
        if (obj == null) {
            _serializeNull(jsonGenerator);
            return;
        }
        boolean z = true;
        JsonSerializer<Object> findTypedValueSerializer = findTypedValueSerializer(obj.getClass(), true, (BeanProperty) null);
        PropertyName fullRootName = this._config.getFullRootName();
        if (fullRootName == null) {
            boolean isEnabled = this._config.isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
            z = isEnabled;
            if (isEnabled) {
                jsonGenerator.writeStartObject();
                jsonGenerator.writeFieldName(this._config.findRootName(obj.getClass()).simpleAsEncoded(this._config));
                z = isEnabled;
            }
        } else if (fullRootName.isEmpty()) {
            z = false;
        } else {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName(fullRootName.getSimpleName());
        }
        try {
            findTypedValueSerializer.serialize(obj, jsonGenerator, this);
            if (z) {
                jsonGenerator.writeEndObject();
            }
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            String message = e2.getMessage();
            String str = message;
            if (message == null) {
                str = "[no message for " + e2.getClass().getName() + "]";
            }
            throw new JsonMappingException(jsonGenerator, str, e2);
        }
    }

    @Override // com.fasterxml.jackson.databind.SerializerProvider
    public JsonSerializer<Object> serializerInstance(Annotated annotated, Object obj) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof JsonSerializer) {
            jsonSerializer = (JsonSerializer) obj;
        } else if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == JsonSerializer.None.class || ClassUtil.isBogusClass(cls)) {
                return null;
            }
            if (JsonSerializer.class.isAssignableFrom(cls)) {
                HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
                if (handlerInstantiator != null) {
                    jsonSerializer = handlerInstantiator.serializerInstance(this._config, annotated, cls);
                }
                if (jsonSerializer == null) {
                    jsonSerializer = (JsonSerializer) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
                }
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<JsonSerializer>");
            }
        } else {
            throw new IllegalStateException("AnnotationIntrospector returned serializer definition of type " + obj.getClass().getName() + "; expected type JsonSerializer or Class<JsonSerializer> instead");
        }
        _handleResolvable(jsonSerializer);
        return jsonSerializer;
    }
}

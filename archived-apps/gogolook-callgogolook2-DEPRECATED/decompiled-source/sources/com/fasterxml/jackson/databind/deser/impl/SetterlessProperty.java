package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.io.IOException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/SetterlessProperty.class */
public final class SetterlessProperty extends SettableBeanProperty {
    public final AnnotatedMethod _annotated;
    public final Method _getter;

    public SetterlessProperty(SetterlessProperty setterlessProperty, JsonDeserializer<?> jsonDeserializer) {
        super(setterlessProperty, jsonDeserializer);
        this._annotated = setterlessProperty._annotated;
        this._getter = setterlessProperty._getter;
    }

    public SetterlessProperty(SetterlessProperty setterlessProperty, PropertyName propertyName) {
        super(setterlessProperty, propertyName);
        this._annotated = setterlessProperty._annotated;
        this._getter = setterlessProperty._getter;
    }

    public SetterlessProperty(BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, TypeDeserializer typeDeserializer, Annotations annotations, AnnotatedMethod annotatedMethod) {
        super(beanPropertyDefinition, javaType, typeDeserializer, annotations);
        this._annotated = annotatedMethod;
        this._getter = annotatedMethod.getAnnotated();
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
            if (this._valueTypeDeserializer == null) {
                try {
                    Object invoke = this._getter.invoke(obj, new Object[0]);
                    if (invoke != null) {
                        this._valueDeserializer.deserialize(jsonParser, deserializationContext, invoke);
                        return;
                    }
                    throw JsonMappingException.from(jsonParser, "Problem deserializing 'setterless' property '" + getName() + "': get method returned null");
                } catch (Exception e) {
                    _throwAsIOE(jsonParser, e);
                    throw null;
                }
            } else {
                throw JsonMappingException.from(jsonParser, "Problem deserializing 'setterless' property (\"" + getName() + "\"): no way to handle typed deser with setterless yet");
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        deserializeAndSet(jsonParser, deserializationContext, obj);
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty, com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        return this._annotated;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public final void set(Object obj, Object obj2) throws IOException {
        throw new UnsupportedOperationException("Should never call 'set' on setterless property");
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public Object setAndReturn(Object obj, Object obj2) throws IOException {
        set(obj, obj2);
        throw null;
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SetterlessProperty withName(PropertyName propertyName) {
        return new SetterlessProperty(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.deser.SettableBeanProperty
    public SetterlessProperty withValueDeserializer(JsonDeserializer<?> jsonDeserializer) {
        return new SetterlessProperty(this, jsonDeserializer);
    }
}

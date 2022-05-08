package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase.class */
public abstract class DateTimeSerializerBase<T> extends StdScalarSerializer<T> implements ContextualSerializer {
    public final DateFormat _customFormat;
    public final Boolean _useTimestamp;

    public DateTimeSerializerBase(Class<T> cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
        this._useTimestamp = bool;
        this._customFormat = dateFormat;
    }

    public void _acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, boolean z) throws JsonMappingException {
        if (z) {
            visitIntFormat(jsonFormatVisitorWrapper, javaType, JsonParser.NumberType.LONG, JsonValueFormat.UTC_MILLISEC);
        } else {
            visitStringFormat(jsonFormatVisitorWrapper, javaType, JsonValueFormat.DATE_TIME);
        }
    }

    public boolean _asTimestamp(SerializerProvider serializerProvider) {
        Boolean bool = this._useTimestamp;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this._customFormat != null) {
            return false;
        }
        if (serializerProvider != null) {
            return serializerProvider.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
        throw new IllegalArgumentException("Null SerializerProvider passed for " + handledType().getName());
    }

    public abstract long _timestamp(T t);

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        _acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType, _asTimestamp(jsonFormatVisitorWrapper.getProvider()));
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value findFormat;
        if (!(beanProperty == null || (findFormat = serializerProvider.getAnnotationIntrospector().findFormat(beanProperty.getMember())) == null)) {
            if (findFormat.getShape().isNumeric()) {
                return withFormat(Boolean.TRUE, null);
            }
            if (findFormat.getShape() == JsonFormat.Shape.STRING) {
                TimeZone timeZone = findFormat.getTimeZone();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(findFormat.hasPattern() ? findFormat.getPattern() : "yyyy-MM-dd'T'HH:mm:ss.SSSZ", findFormat.hasLocale() ? findFormat.getLocale() : serializerProvider.getLocale());
                TimeZone timeZone2 = timeZone;
                if (timeZone == null) {
                    timeZone2 = serializerProvider.getTimeZone();
                }
                simpleDateFormat.setTimeZone(timeZone2);
                return withFormat(Boolean.FALSE, simpleDateFormat);
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return t == null || _timestamp(t) == 0;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    @Deprecated
    public boolean isEmpty(T t) {
        return t == null || _timestamp(t) == 0;
    }

    public abstract DateTimeSerializerBase<T> withFormat(Boolean bool, DateFormat dateFormat);
}

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase.class */
public abstract class ConcreteBeanPropertyBase implements BeanProperty, Serializable {
    public transient JsonFormat.Value _format;
    public final PropertyMetadata _metadata;

    public ConcreteBeanPropertyBase(PropertyMetadata propertyMetadata) {
        this._metadata = propertyMetadata == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : propertyMetadata;
    }

    public ConcreteBeanPropertyBase(ConcreteBeanPropertyBase concreteBeanPropertyBase) {
        this._metadata = concreteBeanPropertyBase._metadata;
        this._format = concreteBeanPropertyBase._format;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
        JsonFormat.Value defaultPropertyFormat = mapperConfig.getDefaultPropertyFormat(cls);
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        if (annotationIntrospector == null || member == null) {
            return defaultPropertyFormat;
        }
        JsonFormat.Value findFormat = annotationIntrospector.findFormat(member);
        return findFormat == null ? defaultPropertyFormat : defaultPropertyFormat.withOverrides(findFormat);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
        JsonInclude.Value defaultPropertyInclusion = mapperConfig.getDefaultPropertyInclusion(cls);
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        if (annotationIntrospector == null || member == null) {
            return defaultPropertyInclusion;
        }
        JsonInclude.Value findPropertyInclusion = annotationIntrospector.findPropertyInclusion(member);
        return findPropertyInclusion == null ? defaultPropertyInclusion : defaultPropertyInclusion.withOverrides(findPropertyInclusion);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyMetadata getMetadata() {
        return this._metadata;
    }

    public boolean isRequired() {
        return this._metadata.isRequired();
    }
}

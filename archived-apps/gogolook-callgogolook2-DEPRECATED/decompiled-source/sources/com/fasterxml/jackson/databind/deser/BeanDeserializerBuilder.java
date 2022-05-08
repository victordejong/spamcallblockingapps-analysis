package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.Annotations;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializerBuilder.class */
public class BeanDeserializerBuilder {
    public SettableAnyProperty _anySetter;
    public HashMap<String, SettableBeanProperty> _backRefProperties;
    public final BeanDescription _beanDesc;
    public AnnotatedMethod _buildMethod;
    public final boolean _caseInsensitivePropertyComparison;
    public final boolean _defaultViewInclusion;
    public HashSet<String> _ignorableProps;
    public boolean _ignoreAllUnknown;
    public List<ValueInjector> _injectables;
    public ObjectIdReader _objectIdReader;
    public final Map<String, SettableBeanProperty> _properties = new LinkedHashMap();
    public ValueInstantiator _valueInstantiator;

    public BeanDeserializerBuilder(BeanDescription beanDescription, DeserializationConfig deserializationConfig) {
        this._beanDesc = beanDescription;
        this._defaultViewInclusion = deserializationConfig.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        this._caseInsensitivePropertyComparison = deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
    }

    public void addBackReferenceProperty(String str, SettableBeanProperty settableBeanProperty) {
        if (this._backRefProperties == null) {
            this._backRefProperties = new HashMap<>(4);
        }
        this._backRefProperties.put(str, settableBeanProperty);
        Map<String, SettableBeanProperty> map = this._properties;
        if (map != null) {
            map.remove(settableBeanProperty.getName());
        }
    }

    public void addCreatorProperty(SettableBeanProperty settableBeanProperty) {
        addProperty(settableBeanProperty);
    }

    public void addIgnorable(String str) {
        if (this._ignorableProps == null) {
            this._ignorableProps = new HashSet<>();
        }
        this._ignorableProps.add(str);
    }

    public void addInjectable(PropertyName propertyName, JavaType javaType, Annotations annotations, AnnotatedMember annotatedMember, Object obj) {
        if (this._injectables == null) {
            this._injectables = new ArrayList();
        }
        this._injectables.add(new ValueInjector(propertyName, javaType, annotations, annotatedMember, obj));
    }

    public void addOrReplaceProperty(SettableBeanProperty settableBeanProperty, boolean z) {
        this._properties.put(settableBeanProperty.getName(), settableBeanProperty);
    }

    public void addProperty(SettableBeanProperty settableBeanProperty) {
        SettableBeanProperty put = this._properties.put(settableBeanProperty.getName(), settableBeanProperty);
        if (put != null && put != settableBeanProperty) {
            throw new IllegalArgumentException("Duplicate property '" + settableBeanProperty.getName() + "' for " + this._beanDesc.getType());
        }
    }

    public JsonDeserializer<?> build() {
        Collection<SettableBeanProperty> values = this._properties.values();
        BeanPropertyMap construct = BeanPropertyMap.construct(values, this._caseInsensitivePropertyComparison);
        construct.assignIndexes();
        boolean z = !this._defaultViewInclusion;
        if (!z) {
            Iterator<SettableBeanProperty> it = values.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().hasViews()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        ObjectIdReader objectIdReader = this._objectIdReader;
        if (objectIdReader != null) {
            construct.withProperty(new ObjectIdValueProperty(objectIdReader, PropertyMetadata.STD_REQUIRED));
        }
        return new BeanDeserializer(this, this._beanDesc, construct, this._backRefProperties, this._ignorableProps, this._ignoreAllUnknown, z);
    }

    public AbstractDeserializer buildAbstract() {
        return new AbstractDeserializer(this, this._beanDesc, this._backRefProperties);
    }

    public JsonDeserializer<?> buildBuilderBased(JavaType javaType, String str) {
        AnnotatedMethod annotatedMethod = this._buildMethod;
        if (annotatedMethod != null) {
            Class<?> rawReturnType = annotatedMethod.getRawReturnType();
            Class<?> rawClass = javaType.getRawClass();
            if (rawReturnType != rawClass && !rawReturnType.isAssignableFrom(rawClass) && !rawClass.isAssignableFrom(rawReturnType)) {
                throw new IllegalArgumentException("Build method '" + this._buildMethod.getFullName() + " has bad return type (" + rawReturnType.getName() + "), not compatible with POJO type (" + javaType.getRawClass().getName() + ")");
            }
        } else if (!str.isEmpty()) {
            throw new IllegalArgumentException("Builder class " + this._beanDesc.getBeanClass().getName() + " does not have build method (name: '" + str + "')");
        }
        Collection<SettableBeanProperty> values = this._properties.values();
        BeanPropertyMap construct = BeanPropertyMap.construct(values, this._caseInsensitivePropertyComparison);
        construct.assignIndexes();
        boolean z = !this._defaultViewInclusion;
        if (!z) {
            Iterator<SettableBeanProperty> it = values.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().hasViews()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        ObjectIdReader objectIdReader = this._objectIdReader;
        if (objectIdReader != null) {
            construct.withProperty(new ObjectIdValueProperty(objectIdReader, PropertyMetadata.STD_REQUIRED));
        }
        return new BuilderBasedDeserializer(this, this._beanDesc, construct, this._backRefProperties, this._ignorableProps, this._ignoreAllUnknown, z);
    }

    public SettableBeanProperty findProperty(PropertyName propertyName) {
        return this._properties.get(propertyName.getSimpleName());
    }

    public SettableAnyProperty getAnySetter() {
        return this._anySetter;
    }

    public AnnotatedMethod getBuildMethod() {
        return this._buildMethod;
    }

    public List<ValueInjector> getInjectables() {
        return this._injectables;
    }

    public ObjectIdReader getObjectIdReader() {
        return this._objectIdReader;
    }

    public ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }

    public void setAnySetter(SettableAnyProperty settableAnyProperty) {
        if (this._anySetter == null || settableAnyProperty == null) {
            this._anySetter = settableAnyProperty;
            return;
        }
        throw new IllegalStateException("_anySetter already set to non-null");
    }

    public void setIgnoreUnknownProperties(boolean z) {
        this._ignoreAllUnknown = z;
    }

    public void setObjectIdReader(ObjectIdReader objectIdReader) {
        this._objectIdReader = objectIdReader;
    }

    public void setPOJOBuilder(AnnotatedMethod annotatedMethod, JsonPOJOBuilder.Value value) {
        this._buildMethod = annotatedMethod;
    }

    public void setValueInstantiator(ValueInstantiator valueInstantiator) {
        this._valueInstantiator = valueInstantiator;
    }
}

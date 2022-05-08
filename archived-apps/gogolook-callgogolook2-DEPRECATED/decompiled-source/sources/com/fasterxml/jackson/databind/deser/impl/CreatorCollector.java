package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.StdValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Member;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/CreatorCollector.class */
public class CreatorCollector {
    public static final String[] TYPE_DESCS = {"default", "String", "int", "long", "double", "boolean", "delegate", "property-based"};
    public SettableBeanProperty[] _arrayDelegateArgs;
    public final BeanDescription _beanDesc;
    public final boolean _canFixAccess;
    public SettableBeanProperty[] _delegateArgs;
    public final boolean _forceAccess;
    public AnnotatedParameter _incompleteParameter;
    public SettableBeanProperty[] _propertyBasedArgs;
    public final AnnotatedWithParams[] _creators = new AnnotatedWithParams[9];
    public int _explicitCreators = 0;
    public boolean _hasNonDefaultCreator = false;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/CreatorCollector$Vanilla.class */
    public static final class Vanilla extends ValueInstantiator implements Serializable {
        public final int _type;

        public Vanilla(int i) {
            this._type = i;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canCreateUsingDefault() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public boolean canInstantiate() {
            return true;
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public Object createUsingDefault(DeserializationContext deserializationContext) throws IOException {
            int i = this._type;
            if (i == 1) {
                return new ArrayList();
            }
            if (i == 2) {
                return new LinkedHashMap();
            }
            if (i == 3) {
                return new HashMap();
            }
            throw new IllegalStateException("Unknown type " + this._type);
        }

        @Override // com.fasterxml.jackson.databind.deser.ValueInstantiator
        public String getValueTypeDesc() {
            int i = this._type;
            return i != 1 ? i != 2 ? i != 3 ? Object.class.getName() : HashMap.class.getName() : LinkedHashMap.class.getName() : ArrayList.class.getName();
        }
    }

    public CreatorCollector(BeanDescription beanDescription, MapperConfig<?> mapperConfig) {
        this._beanDesc = beanDescription;
        this._canFixAccess = mapperConfig.canOverrideAccessModifiers();
        this._forceAccess = mapperConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
    }

    public final JavaType _computeDelegateType(AnnotatedWithParams annotatedWithParams, SettableBeanProperty[] settableBeanPropertyArr) {
        if (!this._hasNonDefaultCreator || annotatedWithParams == null) {
            return null;
        }
        int i = 0;
        if (settableBeanPropertyArr != null) {
            int length = settableBeanPropertyArr.length;
            int i2 = 0;
            while (true) {
                i = 0;
                if (i2 >= length) {
                    break;
                } else if (settableBeanPropertyArr[i2] == null) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
        }
        return annotatedWithParams.getParameterType(i);
    }

    public final <T extends AnnotatedMember> T _fixAccess(T t) {
        if (t != null && this._canFixAccess) {
            ClassUtil.checkAndFixAccess((Member) t.getAnnotated(), this._forceAccess);
        }
        return t;
    }

    public void addBooleanCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, 5, z);
    }

    public void addDelegatingCreator(AnnotatedWithParams annotatedWithParams, boolean z, SettableBeanProperty[] settableBeanPropertyArr) {
        if (annotatedWithParams.getParameterType(0).isCollectionLikeType()) {
            verifyNonDup(annotatedWithParams, 8, z);
            this._arrayDelegateArgs = settableBeanPropertyArr;
            return;
        }
        verifyNonDup(annotatedWithParams, 6, z);
        this._delegateArgs = settableBeanPropertyArr;
    }

    public void addDoubleCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, 4, z);
    }

    public void addIntCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, 2, z);
    }

    public void addLongCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, 3, z);
    }

    public void addPropertyCreator(AnnotatedWithParams annotatedWithParams, boolean z, SettableBeanProperty[] settableBeanPropertyArr) {
        Integer num;
        verifyNonDup(annotatedWithParams, 7, z);
        if (settableBeanPropertyArr.length > 1) {
            HashMap hashMap = new HashMap();
            int length = settableBeanPropertyArr.length;
            for (int i = 0; i < length; i++) {
                String name = settableBeanPropertyArr[i].getName();
                if ((name.length() != 0 || settableBeanPropertyArr[i].getInjectableValueId() == null) && (num = (Integer) hashMap.put(name, Integer.valueOf(i))) != null) {
                    throw new IllegalArgumentException("Duplicate creator property \"" + name + "\" (index " + num + " vs " + i + ")");
                }
            }
        }
        this._propertyBasedArgs = settableBeanPropertyArr;
    }

    public void addStringCreator(AnnotatedWithParams annotatedWithParams, boolean z) {
        verifyNonDup(annotatedWithParams, 1, z);
    }

    public ValueInstantiator constructValueInstantiator(DeserializationConfig deserializationConfig) {
        JavaType _computeDelegateType = _computeDelegateType(this._creators[6], this._delegateArgs);
        JavaType _computeDelegateType2 = _computeDelegateType(this._creators[8], this._arrayDelegateArgs);
        JavaType type = this._beanDesc.getType();
        if (!this._hasNonDefaultCreator) {
            Class<?> rawClass = type.getRawClass();
            if (rawClass == Collection.class || rawClass == List.class || rawClass == ArrayList.class) {
                return new Vanilla(1);
            }
            if (rawClass == Map.class || rawClass == LinkedHashMap.class) {
                return new Vanilla(2);
            }
            if (rawClass == HashMap.class) {
                return new Vanilla(3);
            }
        }
        StdValueInstantiator stdValueInstantiator = new StdValueInstantiator(deserializationConfig, type);
        AnnotatedWithParams[] annotatedWithParamsArr = this._creators;
        stdValueInstantiator.configureFromObjectSettings(annotatedWithParamsArr[0], annotatedWithParamsArr[6], _computeDelegateType, this._delegateArgs, annotatedWithParamsArr[7], this._propertyBasedArgs);
        stdValueInstantiator.configureFromArraySettings(this._creators[8], _computeDelegateType2, this._arrayDelegateArgs);
        stdValueInstantiator.configureFromStringCreator(this._creators[1]);
        stdValueInstantiator.configureFromIntCreator(this._creators[2]);
        stdValueInstantiator.configureFromLongCreator(this._creators[3]);
        stdValueInstantiator.configureFromDoubleCreator(this._creators[4]);
        stdValueInstantiator.configureFromBooleanCreator(this._creators[5]);
        stdValueInstantiator.configureIncompleteParameter(this._incompleteParameter);
        return stdValueInstantiator;
    }

    public boolean hasDefaultCreator() {
        boolean z = false;
        if (this._creators[0] != null) {
            z = true;
        }
        return z;
    }

    public boolean hasDelegatingCreator() {
        return this._creators[6] != null;
    }

    public boolean hasPropertyBasedCreator() {
        return this._creators[7] != null;
    }

    public void setDefaultCreator(AnnotatedWithParams annotatedWithParams) {
        AnnotatedWithParams[] annotatedWithParamsArr = this._creators;
        _fixAccess(annotatedWithParams);
        annotatedWithParamsArr[0] = annotatedWithParams;
    }

    public void verifyNonDup(AnnotatedWithParams annotatedWithParams, int i, boolean z) {
        boolean z2 = true;
        int i2 = 1 << i;
        this._hasNonDefaultCreator = true;
        AnnotatedWithParams annotatedWithParams2 = this._creators[i];
        if (annotatedWithParams2 != null) {
            if ((this._explicitCreators & i2) == 0) {
                z2 = !z;
            } else if (!z) {
                return;
            }
            if (z2 && annotatedWithParams2.getClass() == annotatedWithParams.getClass()) {
                Class<?> rawParameterType = annotatedWithParams2.getRawParameterType(0);
                Class<?> rawParameterType2 = annotatedWithParams.getRawParameterType(0);
                if (rawParameterType == rawParameterType2) {
                    throw new IllegalArgumentException("Conflicting " + TYPE_DESCS[i] + " creators: already had explicitly marked " + annotatedWithParams2 + ", encountered " + annotatedWithParams);
                } else if (rawParameterType2.isAssignableFrom(rawParameterType)) {
                    return;
                }
            }
        }
        if (z) {
            this._explicitCreators |= i2;
        }
        AnnotatedWithParams[] annotatedWithParamsArr = this._creators;
        _fixAccess(annotatedWithParams);
        annotatedWithParamsArr[i] = annotatedWithParams;
    }
}

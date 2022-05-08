package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedField.class */
public final class AnnotatedField extends AnnotatedMember implements Serializable {
    public final transient Field _field;
    public Serialization _serialization;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedField$Serialization.class */
    public static final class Serialization implements Serializable {
        public Class<?> clazz;
        public String name;

        public Serialization(Field field) {
            this.clazz = field.getDeclaringClass();
            this.name = field.getName();
        }
    }

    public AnnotatedField(Serialization serialization) {
        super(null, null);
        this._field = null;
        this._serialization = serialization;
    }

    public AnnotatedField(TypeResolutionContext typeResolutionContext, Field field, AnnotationMap annotationMap) {
        super(typeResolutionContext, annotationMap);
        this._field = field;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != AnnotatedField.class) {
            return false;
        }
        if (((AnnotatedField) obj)._field != this._field) {
            z = false;
        }
        return z;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Field getAnnotated() {
        return this._field;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this._field.getDeclaringClass();
    }

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Member getMember() {
        return this._field;
    }

    public int getModifiers() {
        return this._field.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String getName() {
        return this._field.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getRawType() {
        return this._field.getType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public JavaType getType() {
        return this._typeContext.resolveType(this._field.getGenericType());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws IllegalArgumentException {
        try {
            return this._field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Failed to getValue() for field " + getFullName() + ": " + e.getMessage(), e);
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int hashCode() {
        return this._field.getName().hashCode();
    }

    public boolean isTransient() {
        return Modifier.isTransient(getModifiers());
    }

    public Object readResolve() {
        Serialization serialization = this._serialization;
        Class<?> cls = serialization.clazz;
        try {
            Field declaredField = cls.getDeclaredField(serialization.name);
            if (!declaredField.isAccessible()) {
                ClassUtil.checkAndFixAccess(declaredField, false);
            }
            return new AnnotatedField(null, declaredField, null);
        } catch (Exception e) {
            throw new IllegalArgumentException("Could not find method '" + this._serialization.name + "' from Class '" + cls.getName());
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws IllegalArgumentException {
        try {
            this._field.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Failed to setValue() for field " + getFullName() + ": " + e.getMessage(), e);
        }
    }

    public String toString() {
        return "[field " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public AnnotatedField withAnnotations(AnnotationMap annotationMap) {
        return new AnnotatedField(this._typeContext, this._field, annotationMap);
    }

    public Object writeReplace() {
        return new AnnotatedField(new Serialization(this._field));
    }
}

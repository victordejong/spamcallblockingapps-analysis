package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AnnotatedMember.class */
public abstract class AnnotatedMember extends Annotated implements Serializable {
    public final transient AnnotationMap _annotations;
    public final transient TypeResolutionContext _typeContext;

    public AnnotatedMember(TypeResolutionContext typeResolutionContext, AnnotationMap annotationMap) {
        this._typeContext = typeResolutionContext;
        this._annotations = annotationMap;
    }

    public final boolean addIfNotPresent(Annotation annotation) {
        return this._annotations.addIfNotPresent(annotation);
    }

    public final boolean addOrOverride(Annotation annotation) {
        return this._annotations.add(annotation);
    }

    public final void fixAccess(boolean z) {
        ClassUtil.checkAndFixAccess(getMember(), z);
    }

    public AnnotationMap getAllAnnotations() {
        return this._annotations;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        AnnotationMap annotationMap = this._annotations;
        if (annotationMap == null) {
            return null;
        }
        return (A) annotationMap.get(cls);
    }

    public abstract Class<?> getDeclaringClass();

    public abstract Member getMember();

    public TypeResolutionContext getTypeContext() {
        return this._typeContext;
    }

    public abstract Object getValue(Object obj) throws UnsupportedOperationException, IllegalArgumentException;

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final boolean hasAnnotation(Class<?> cls) {
        AnnotationMap annotationMap = this._annotations;
        if (annotationMap == null) {
            return false;
        }
        return annotationMap.has(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        AnnotationMap annotationMap = this._annotations;
        if (annotationMap == null) {
            return false;
        }
        return annotationMap.hasOneOf(clsArr);
    }

    public abstract void setValue(Object obj, Object obj2) throws UnsupportedOperationException, IllegalArgumentException;
}

package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/MethodPartFactory.class */
class MethodPartFactory {
    private final AnnotationFactory factory;

    public MethodPartFactory(Detail detail, Support support) {
        this.factory = new AnnotationFactory(detail, support);
    }

    private Annotation getAnnotation(Method method) throws Exception {
        Class[] dependents = getDependents(method);
        Class type = getType(method);
        if (type != null) {
            return this.factory.getInstance(type, dependents);
        }
        return null;
    }

    private Class[] getDependents(Method method) throws Exception {
        MethodType methodType = getMethodType(method);
        if (methodType == MethodType.SET) {
            return Reflector.getParameterDependents(method, 0);
        }
        if (methodType == MethodType.GET || methodType == MethodType.IS) {
            return Reflector.getReturnDependents(method);
        }
        return null;
    }

    private MethodType getMethodType(Method method) {
        String name = method.getName();
        return name.startsWith("get") ? MethodType.GET : name.startsWith("is") ? MethodType.IS : name.startsWith("set") ? MethodType.SET : MethodType.NONE;
    }

    private MethodName getName(Method method, Annotation annotation) throws Exception {
        MethodType methodType = getMethodType(method);
        if (!(methodType == MethodType.GET || methodType == MethodType.IS)) {
            if (methodType == MethodType.SET) {
                return getWrite(method, methodType);
            }
            throw new MethodException("Annotation %s must mark a set or get method", annotation);
        }
        return getRead(method, methodType);
    }

    private Class getParameterType(Method method) throws Exception {
        if (method.getParameterTypes().length == 1) {
            return method.getParameterTypes()[0];
        }
        return null;
    }

    private MethodName getRead(Method method, MethodType methodType) throws Exception {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        if (parameterTypes.length == 0) {
            String typeName = getTypeName(name, methodType);
            if (typeName != null) {
                return new MethodName(method, methodType, typeName);
            }
            throw new MethodException("Could not get name for %s", method);
        }
        throw new MethodException("Get method %s is not a valid property", method);
    }

    private Class getReturnType(Method method) throws Exception {
        if (method.getParameterTypes().length == 0) {
            return method.getReturnType();
        }
        return null;
    }

    private String getTypeName(String str, MethodType methodType) {
        int prefix = methodType.getPrefix();
        int length = str.length();
        String str2 = str;
        if (length > prefix) {
            str2 = str.substring(prefix, length);
        }
        return Reflector.getName(str2);
    }

    private MethodName getWrite(Method method, MethodType methodType) throws Exception {
        Class<?>[] parameterTypes = method.getParameterTypes();
        String name = method.getName();
        if (parameterTypes.length == 1) {
            String typeName = getTypeName(name, methodType);
            if (typeName != null) {
                return new MethodName(method, methodType, typeName);
            }
            throw new MethodException("Could not get name for %s", method);
        }
        throw new MethodException("Set method %s is not a valid property", method);
    }

    public MethodPart getInstance(Method method, Annotation annotation, Annotation[] annotationArr) throws Exception {
        MethodName name = getName(method, annotation);
        return name.getType() == MethodType.SET ? new SetPart(name, annotation, annotationArr) : new GetPart(name, annotation, annotationArr);
    }

    public MethodPart getInstance(Method method, Annotation[] annotationArr) throws Exception {
        Annotation annotation = getAnnotation(method);
        if (annotation != null) {
            return getInstance(method, annotation, annotationArr);
        }
        return null;
    }

    public Class getType(Method method) throws Exception {
        MethodType methodType = getMethodType(method);
        if (methodType == MethodType.SET) {
            return getParameterType(method);
        }
        if (methodType == MethodType.GET || methodType == MethodType.IS) {
            return getReturnType(method);
        }
        return null;
    }
}

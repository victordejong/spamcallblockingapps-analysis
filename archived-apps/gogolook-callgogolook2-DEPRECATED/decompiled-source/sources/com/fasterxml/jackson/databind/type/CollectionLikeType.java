package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/type/CollectionLikeType.class */
public class CollectionLikeType extends TypeBase {
    public final JavaType _elementType;

    public CollectionLikeType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2.hashCode(), obj, obj2, z);
        this._elementType = javaType2;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    public JavaType _narrow(Class<?> cls) {
        return new CollectionLikeType(cls, this._bindings, this._superClass, this._superInterfaces, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    public String buildCanonicalName() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._class.getName());
        if (this._elementType != null) {
            sb.append('<');
            sb.append(this._elementType.toCanonical());
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        CollectionLikeType collectionLikeType = (CollectionLikeType) obj;
        if (this._class != collectionLikeType._class || !this._elementType.equals(collectionLikeType._elementType)) {
            z = false;
        }
        return z;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType getContentType() {
        return this._elementType;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, false);
        sb.append('<');
        this._elementType.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean isCollectionLikeType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean isContainerType() {
        return true;
    }

    public boolean isTrueCollectionType() {
        return Collection.class.isAssignableFrom(this._class);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new CollectionLikeType(cls, typeBindings, javaType, javaTypeArr, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[collection-like type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this._elementType == javaType ? this : new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, javaType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withContentTypeHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withTypeHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withContentValueHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withValueHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withStaticTyping() {
        return this._asStatic ? this : new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withTypeHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public CollectionLikeType withValueHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, obj, this._typeHandler, this._asStatic);
    }
}

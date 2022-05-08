package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver.class */
public class ClassNameIdResolver extends TypeIdResolverBase {
    public ClassNameIdResolver(JavaType javaType, TypeFactory typeFactory) {
        super(javaType, typeFactory);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007f, code lost:
        if (r0.startsWith(".Collections$") != false) goto L_0x0082;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String _idFrom(java.lang.Object r6, java.lang.Class<?> r7) {
        /*
            r5 = this;
            r0 = r7
            r8 = r0
            java.lang.Class<java.lang.Enum> r0 = java.lang.Enum.class
            r1 = r7
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L_0x0019
            r0 = r7
            r8 = r0
            r0 = r7
            boolean r0 = r0.isEnum()
            if (r0 != 0) goto L_0x0019
            r0 = r7
            java.lang.Class r0 = r0.getSuperclass()
            r8 = r0
        L_0x0019:
            r0 = r8
            java.lang.String r0 = r0.getName()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "java.util"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x0093
            r0 = r6
            boolean r0 = r0 instanceof java.util.EnumSet
            if (r0 == 0) goto L_0x0046
            r0 = r6
            java.util.EnumSet r0 = (java.util.EnumSet) r0
            java.lang.Class r0 = com.fasterxml.jackson.databind.util.ClassUtil.findEnumType(r0)
            r6 = r0
            com.fasterxml.jackson.databind.type.TypeFactory r0 = com.fasterxml.jackson.databind.type.TypeFactory.defaultInstance()
            java.lang.Class<java.util.EnumSet> r1 = java.util.EnumSet.class
            r2 = r6
            com.fasterxml.jackson.databind.type.CollectionType r0 = r0.constructCollectionType(r1, r2)
            java.lang.String r0 = r0.toCanonical()
            r6 = r0
            goto L_0x00c1
        L_0x0046:
            r0 = r6
            boolean r0 = r0 instanceof java.util.EnumMap
            if (r0 == 0) goto L_0x0067
            r0 = r6
            java.util.EnumMap r0 = (java.util.EnumMap) r0
            java.lang.Class r0 = com.fasterxml.jackson.databind.util.ClassUtil.findEnumType(r0)
            r6 = r0
            com.fasterxml.jackson.databind.type.TypeFactory r0 = com.fasterxml.jackson.databind.type.TypeFactory.defaultInstance()
            java.lang.Class<java.util.EnumMap> r1 = java.util.EnumMap.class
            r2 = r6
            java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
            com.fasterxml.jackson.databind.type.MapType r0 = r0.constructMapType(r1, r2, r3)
            java.lang.String r0 = r0.toCanonical()
            r6 = r0
            goto L_0x00c1
        L_0x0067:
            r0 = r7
            r1 = 9
            java.lang.String r0 = r0.substring(r1)
            r8 = r0
            r0 = r8
            java.lang.String r1 = ".Arrays$"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0082
            r0 = r7
            r6 = r0
            r0 = r8
            java.lang.String r1 = ".Collections$"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x00c1
        L_0x0082:
            r0 = r7
            r6 = r0
            r0 = r7
            java.lang.String r1 = "List"
            int r0 = r0.indexOf(r1)
            if (r0 < 0) goto L_0x00c1
            java.lang.String r0 = "java.util.ArrayList"
            r6 = r0
            goto L_0x00c1
        L_0x0093:
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = 36
            int r0 = r0.indexOf(r1)
            if (r0 < 0) goto L_0x00c1
            r0 = r7
            r6 = r0
            r0 = r8
            java.lang.Class r0 = com.fasterxml.jackson.databind.util.ClassUtil.getOuterClass(r0)
            if (r0 == 0) goto L_0x00c1
            r0 = r7
            r6 = r0
            r0 = r5
            com.fasterxml.jackson.databind.JavaType r0 = r0._baseType
            java.lang.Class r0 = r0.getRawClass()
            java.lang.Class r0 = com.fasterxml.jackson.databind.util.ClassUtil.getOuterClass(r0)
            if (r0 != 0) goto L_0x00c1
            r0 = r5
            com.fasterxml.jackson.databind.JavaType r0 = r0._baseType
            java.lang.Class r0 = r0.getRawClass()
            java.lang.String r0 = r0.getName()
            r6 = r0
        L_0x00c1:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.jsontype.impl.ClassNameIdResolver._idFrom(java.lang.Object, java.lang.Class):java.lang.String");
    }

    public JavaType _typeFromId(String str, TypeFactory typeFactory) {
        if (str.indexOf(60) > 0) {
            return typeFactory.constructFromCanonical(str);
        }
        try {
            return typeFactory.constructSpecializedType(this._baseType, typeFactory.findClass(str));
        } catch (ClassNotFoundException e) {
            throw new IllegalArgumentException("Invalid type id '" + str + "' (for id type 'Id.class'): no such class found");
        } catch (Exception e2) {
            throw new IllegalArgumentException("Invalid type id '" + str + "' (for id type 'Id.class'): " + e2.getMessage(), e2);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase
    public String getDescForKnownTypeIds() {
        return "class name used as type id";
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValue(Object obj) {
        return _idFrom(obj, obj.getClass());
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValueAndType(Object obj, Class<?> cls) {
        return _idFrom(obj, cls);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JavaType typeFromId(DatabindContext databindContext, String str) {
        return _typeFromId(str, databindContext.getTypeFactory());
    }
}

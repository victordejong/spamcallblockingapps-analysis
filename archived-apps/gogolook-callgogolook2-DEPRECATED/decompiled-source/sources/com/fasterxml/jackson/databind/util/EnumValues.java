package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/EnumValues.class */
public final class EnumValues implements Serializable {
    public final Class<Enum<?>> _enumClass;
    public final SerializableString[] _textual;
    public final Enum<?>[] _values;

    public EnumValues(Class<Enum<?>> cls, SerializableString[] serializableStringArr) {
        this._enumClass = cls;
        this._values = cls.getEnumConstants();
        this._textual = serializableStringArr;
    }

    public static EnumValues constructFromName(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Class<? extends Enum<?>> findEnumType = ClassUtil.findEnumType(cls);
        Enum<?>[] enumArr = (Enum[]) findEnumType.getEnumConstants();
        if (enumArr != null) {
            String[] findEnumValues = mapperConfig.getAnnotationIntrospector().findEnumValues(findEnumType, enumArr, new String[enumArr.length]);
            SerializableString[] serializableStringArr = new SerializableString[enumArr.length];
            int length = enumArr.length;
            for (int i = 0; i < length; i++) {
                Enum<?> r0 = enumArr[i];
                String str = findEnumValues[i];
                String str2 = str;
                if (str == null) {
                    str2 = r0.name();
                }
                serializableStringArr[r0.ordinal()] = mapperConfig.compileString(str2);
            }
            return new EnumValues(cls, serializableStringArr);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + cls.getName());
    }

    public List<Enum<?>> enums() {
        return Arrays.asList(this._values);
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public SerializableString serializedValueFor(Enum<?> r4) {
        return this._textual[r4.ordinal()];
    }

    public Collection<SerializableString> values() {
        return Arrays.asList(this._textual);
    }
}

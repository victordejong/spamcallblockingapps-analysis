package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyNamingStrategy.class */
public class PropertyNamingStrategy implements Serializable {
    public static final PropertyNamingStrategy SNAKE_CASE = new SnakeCaseStrategy();
    public static final PropertyNamingStrategy UPPER_CAMEL_CASE = new UpperCamelCaseStrategy();

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyNamingStrategy$KebabCaseStrategy.class */
    public static class KebabCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            int length;
            if (!(str == null || (length = str.length()) == 0)) {
                StringBuilder sb = new StringBuilder((length >> 1) + length);
                int i = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = str.charAt(i2);
                    char lowerCase = Character.toLowerCase(charAt);
                    if (lowerCase == charAt) {
                        if (i > 1) {
                            sb.insert(sb.length() - 1, '-');
                        }
                        i = 0;
                    } else {
                        if (i == 0 && i2 > 0) {
                            sb.append('-');
                        }
                        i++;
                    }
                    sb.append(lowerCase);
                }
                return sb.toString();
            }
            return str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyNamingStrategy$LowerCaseStrategy.class */
    public static class LowerCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            return str.toLowerCase();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase.class */
    public static abstract class PropertyNamingStrategyBase extends PropertyNamingStrategy {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForConstructorParameter(MapperConfig<?> mapperConfig, AnnotatedParameter annotatedParameter, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForGetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy
        public String nameForSetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
            return translate(str);
        }

        public abstract String translate(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy.class */
    public static class SnakeCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            if (str == null) {
                return str;
            }
            int length = str.length();
            StringBuilder sb = new StringBuilder(length * 2);
            int i = 0;
            boolean z = false;
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if (i2 <= 0) {
                    i = i;
                    z = z;
                    if (charAt == '_') {
                    }
                }
                if (Character.isUpperCase(charAt)) {
                    i = i;
                    if (!z) {
                        i = i;
                        if (i > 0) {
                            i = i;
                            if (sb.charAt(i - 1) != '_') {
                                sb.append('_');
                                i++;
                            }
                        }
                    }
                    charAt = Character.toLowerCase(charAt);
                    z = true;
                } else {
                    z = false;
                }
                sb.append(charAt);
                i++;
            }
            if (i > 0) {
                str = sb.toString();
            }
            return str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyNamingStrategy$UpperCamelCaseStrategy.class */
    public static class UpperCamelCaseStrategy extends PropertyNamingStrategyBase {
        @Override // com.fasterxml.jackson.databind.PropertyNamingStrategy.PropertyNamingStrategyBase
        public String translate(String str) {
            String str2 = str;
            if (str != null) {
                if (str.length() == 0) {
                    str2 = str;
                } else {
                    char charAt = str.charAt(0);
                    char upperCase = Character.toUpperCase(charAt);
                    if (charAt == upperCase) {
                        return str;
                    }
                    StringBuilder sb = new StringBuilder(str);
                    sb.setCharAt(0, upperCase);
                    str2 = sb.toString();
                }
            }
            return str2;
        }
    }

    static {
        new PropertyNamingStrategy();
        new LowerCaseStrategy();
        new KebabCaseStrategy();
    }

    public String nameForConstructorParameter(MapperConfig<?> mapperConfig, AnnotatedParameter annotatedParameter, String str) {
        return str;
    }

    public String nameForField(MapperConfig<?> mapperConfig, AnnotatedField annotatedField, String str) {
        return str;
    }

    public String nameForGetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
        return str;
    }

    public String nameForSetterMethod(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, String str) {
        return str;
    }
}

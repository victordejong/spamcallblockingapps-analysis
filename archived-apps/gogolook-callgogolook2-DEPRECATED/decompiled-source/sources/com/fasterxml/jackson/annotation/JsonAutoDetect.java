package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonAutoDetect.class */
public @interface JsonAutoDetect {

    /* renamed from: com.fasterxml.jackson.annotation.JsonAutoDetect$1 */
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonAutoDetect$1.class */
    public static /* synthetic */ class C27221 {

        /* renamed from: $SwitchMap$com$fasterxml$jackson$annotation$JsonAutoDetect$Visibility */
        public static final /* synthetic */ int[] f3798x23d16a11 = new int[Visibility.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f3798x23d16a11[Visibility.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3798x23d16a11[Visibility.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3798x23d16a11[Visibility.NON_PRIVATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3798x23d16a11[Visibility.PROTECTED_AND_PUBLIC.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3798x23d16a11[Visibility.PUBLIC_ONLY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/JsonAutoDetect$Visibility.class */
    public enum Visibility {
        ANY,
        NON_PRIVATE,
        PROTECTED_AND_PUBLIC,
        PUBLIC_ONLY,
        NONE,
        DEFAULT;

        public boolean isVisible(Member member) {
            int i = C27221.f3798x23d16a11[ordinal()];
            if (i == 1) {
                return true;
            }
            if (i == 2) {
                return false;
            }
            if (i == 3) {
                return !Modifier.isPrivate(member.getModifiers());
            }
            if (i != 4) {
                if (i != 5) {
                    return false;
                }
            } else if (Modifier.isProtected(member.getModifiers())) {
                return true;
            }
            return Modifier.isPublic(member.getModifiers());
        }
    }

    Visibility creatorVisibility() default Visibility.DEFAULT;

    Visibility fieldVisibility() default Visibility.DEFAULT;

    Visibility getterVisibility() default Visibility.DEFAULT;

    Visibility isGetterVisibility() default Visibility.DEFAULT;

    Visibility setterVisibility() default Visibility.DEFAULT;
}

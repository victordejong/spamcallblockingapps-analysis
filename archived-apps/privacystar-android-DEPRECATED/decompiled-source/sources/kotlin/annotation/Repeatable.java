package kotlin.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
@Target({ElementType.ANNOTATION_TYPE})
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\b\u0087\u0002\u0018��2\u00020\u0001B��¨\u0006\u0002"}, m254d2 = {"Lkotlin/annotation/Repeatable;", "", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:kotlin/annotation/Repeatable.class */
public @interface Repeatable {
}

package kotlin.jvm;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.annotation.MustBeDocumented;
@Target({ElementType.FIELD})
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.FIELD})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
@MustBeDocumented
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\b\u0087\u0002\u0018��2\u00020\u0001B��¨\u0006\u0002"}, m254d2 = {"Lkotlin/jvm/JvmField;", "", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@Documented
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/JvmField.class */
public @interface JvmField {
}

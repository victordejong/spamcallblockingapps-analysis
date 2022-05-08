package kotlin.annotation;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.ElementType;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
@Target({ElementType.ANNOTATION_TYPE})
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0002\u0018��2\u00020\u0001B\n\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, m254d2 = {"Lkotlin/annotation/Retention;", "", FirebaseAnalytics.Param.VALUE, "Lkotlin/annotation/AnnotationRetention;", "()Lkotlin/annotation/AnnotationRetention;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS})
@java.lang.annotation.Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:kotlin/annotation/Retention.class */
public @interface Retention {
    AnnotationRetention value() default AnnotationRetention.RUNTIME;
}

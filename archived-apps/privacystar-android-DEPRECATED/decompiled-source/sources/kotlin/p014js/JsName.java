package kotlin.p014js;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.OptionalExpectation;
import kotlin.annotation.AnnotationTarget;
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\"\u0018��2\u00020\u0001B\b\u0012\u0006\u0010\u0002\u001a\u00020\u0003R\u0013\u0010\u0002\u001a\u00020\u0003X\u0086\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, m254d2 = {"Lkotlin/js/JsName;", "", "name", "", "()Ljava/lang/String;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@OptionalExpectation
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS, AnnotationTarget.FUNCTION, AnnotationTarget.PROPERTY, AnnotationTarget.CONSTRUCTOR, AnnotationTarget.PROPERTY_GETTER, AnnotationTarget.PROPERTY_SETTER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: kotlin.js.JsName */
/* loaded from: classes2-dex2jar.jar:kotlin/js/JsName.class */
@interface JsName {
    String name();
}

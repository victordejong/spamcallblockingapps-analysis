package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE})
@SinceKotlin
@Deprecated
@kotlin.annotation.Target
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\u0002\u0018��2\u00020\u00012\u00020\u0002:\u0001\bB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001��\u0082\u0002\u0007\n\u0005\b\u009120\u0001¨\u0006\t"}, d2 = {"Lkotlin/Experimental;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "Lkotlin/Experimental$Level;", FirebaseAnalytics.Param.LEVEL, "()Lkotlin/Experimental$Level;", "<init>", "(Lkotlin/Experimental$Level;)V", "Level", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/Experimental.class */
public @interface Experimental {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/Experimental$Level;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "WARNING", "ERROR", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/Experimental$Level.class */
    public enum Level {
        WARNING,
        ERROR
    }
}

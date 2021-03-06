package kotlinx.android.parcel;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.Repeatable;
import kotlinx.android.parcel.Parceler;
@Target({ElementType.TYPE})
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018��*\u0004\b��\u0010\u0001*\u0010\b\u0001\u0010\u0003*\n\u0012\u0006\b��\u0012\u00028��0\u00022\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/android/parcel/TypeParceler;", "T", "Lkotlinx/android/parcel/Parceler;", "P", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "<init>", "()V", "kotlin-android-extensions-runtime"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@Repeatable
@kotlin.annotation.Target
@Retention(RetentionPolicy.SOURCE)
@kotlin.annotation.Retention
/* loaded from: classes2-dex2jar.jar:kotlinx/android/parcel/TypeParceler.class */
public @interface TypeParceler<T, P extends Parceler<? super T>> {
}

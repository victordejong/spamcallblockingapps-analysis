package kotlin.reflect;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��*\u0004\b��\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001\u000fJ\u0017\u0010\u0007\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00028��H&¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00028��H'¢\u0006\u0004\b\n\u0010\bR\"\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u000b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/reflect/KProperty1;", "T", "V", "Lkotlin/reflect/KProperty;", "Lkotlin/jvm/functions/Function1;", "Lkotlin/Any;", "receiver", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "getDelegate", "Lkotlin/reflect/KProperty1$Getter;", "getGetter", "()Lkotlin/reflect/KProperty1$Getter;", "getter", "Getter", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/KProperty1.class */
public interface KProperty1<T, V> extends KProperty<V>, Function1<T, V> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\bf\u0018��*\u0004\b\u0002\u0010\u0001*\u0006\b\u0003\u0010\u0002 \u00012\u00020\u00032\u00020\u00042\u00020\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/KProperty1$Getter;", "T", "V", "kotlin/reflect/KProperty$Getter", "Lkotlin/jvm/functions/Function1;", "Lkotlin/Any;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/reflect/KProperty1$Getter.class */
    public interface Getter<T, V> extends KProperty.Getter<V>, Function1<T, V> {
    }

    V get(T t);

    @NotNull
    Getter<T, V> getGetter();
}

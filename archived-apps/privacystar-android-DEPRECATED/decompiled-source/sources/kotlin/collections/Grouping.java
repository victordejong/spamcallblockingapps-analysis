package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
@SinceKotlin(version = "1.1")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010(\n��\bg\u0018��*\u0004\b��\u0010\u0001*\u0006\b\u0001\u0010\u0002 \u00012\u00020\u0003J\u0015\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0005\u001a\u00028��H&¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bH&¨\u0006\t"}, m254d2 = {"Lkotlin/collections/Grouping;", "T", "K", "", "keyOf", "element", "(Ljava/lang/Object;)Ljava/lang/Object;", "sourceIterator", "", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/collections/Grouping.class */
public interface Grouping<T, K> {
    K keyOf(T t);

    @NotNull
    Iterator<T> sourceIterator();
}

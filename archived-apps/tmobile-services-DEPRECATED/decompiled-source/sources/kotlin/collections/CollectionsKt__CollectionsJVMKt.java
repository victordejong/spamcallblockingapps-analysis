package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n��\n\u0002\u0010!\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u001e\n��\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a)\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001H\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001aF\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\u0006\u0010\u0007\u001a\u00020\u00062\u001d\u0010\u000b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\nH\u0081\bø\u0001��¢\u0006\u0004\b\f\u0010\r\u001a>\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\u001d\u0010\u000b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\nH\u0081\bø\u0001��¢\u0006\u0004\b\f\u0010\u000e\u001a\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0081\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0081\b¢\u0006\u0004\b\u0013\u0010\u0011\u001a$\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00162\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0081\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a6\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028��0\u0016\"\u0004\b��\u0010\u001a2\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00142\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u0016H\u0081\b¢\u0006\u0004\b\u0018\u0010\u001c\u001a\u001b\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��H\u0001¢\u0006\u0004\b\u001d\u0010\u001e\u001a#\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��2\u0006\u0010\u0007\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\u001d\u0010\u001f\u001a!\u0010!\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010\u001a2\u0006\u0010 \u001a\u00028��¢\u0006\u0004\b!\u0010\"\u001a3\u0010%\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00170\u0016\"\u0004\b��\u0010\u001a*\n\u0012\u0006\b\u0001\u0012\u00028��0\u00162\u0006\u0010$\u001a\u00020#H��¢\u0006\u0004\b%\u0010&\u001a%\u0010(\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010\u001a*\b\u0012\u0004\u0012\u00028��0'H\u0007¢\u0006\u0004\b(\u0010)\u001a-\u0010(\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010\u001a*\b\u0012\u0004\u0012\u00028��0'2\u0006\u0010+\u001a\u00020*H\u0007¢\u0006\u0004\b(\u0010,\u001a&\u0010.\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010\u001a*\b\u0012\u0004\u0012\u00028��0-H\u0087\b¢\u0006\u0004\b.\u0010/\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00060"}, d2 = {"E", "", "builder", "", "build", "(Ljava/util/List;)Ljava/util/List;", "", "capacity", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildListInternal", "(ILkotlin/Function1;)Ljava/util/List;", "(Lkotlin/Function1;)Ljava/util/List;", "count", "checkCountOverflow", "(I)I", FirebaseAnalytics.Param.INDEX, "checkIndexOverflow", "", "collection", "", "", "copyToArrayImpl", "(Ljava/util/Collection;)[Ljava/lang/Object;", "T", "array", "(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;", "createListBuilder", "()Ljava/util/List;", "(I)Ljava/util/List;", "element", "listOf", "(Ljava/lang/Object;)Ljava/util/List;", "", "isVarargs", "copyToArrayOfAny", "([Ljava/lang/Object;Z)[Ljava/lang/Object;", "", "shuffled", "(Ljava/lang/Iterable;)Ljava/util/List;", "Ljava/util/Random;", "random", "(Ljava/lang/Iterable;Ljava/util/Random;)Ljava/util/List;", "Ljava/util/Enumeration;", "toList", "(Ljava/util/Enumeration;)Ljava/util/List;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__CollectionsJVMKt.class */
public class CollectionsKt__CollectionsJVMKt {
    @NotNull
    /* renamed from: a */
    public static final <T> Object[] m2180a(@NotNull T[] copyToArrayOfAny, boolean z) {
        Intrinsics.m1830e(copyToArrayOfAny, "$this$copyToArrayOfAny");
        if (!z || !Intrinsics.m1834a(copyToArrayOfAny.getClass(), Object[].class)) {
            copyToArrayOfAny = (T[]) Arrays.copyOf(copyToArrayOfAny, copyToArrayOfAny.length, Object[].class);
        }
        Intrinsics.m1831d(copyToArrayOfAny, "if (isVarargs && this.ja… Array<Any?>::class.java)");
        return copyToArrayOfAny;
    }

    @NotNull
    /* renamed from: b */
    public static <T> List<T> m2179b(T t) {
        List<T> singletonList = Collections.singletonList(t);
        Intrinsics.m1831d(singletonList, "java.util.Collections.singletonList(element)");
        return singletonList;
    }
}

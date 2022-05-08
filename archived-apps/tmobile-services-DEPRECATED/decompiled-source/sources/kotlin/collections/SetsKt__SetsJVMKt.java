package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n��\n\u0002\u0010#\n��\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a)\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001H\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001aF\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\u0006\u0010\u0007\u001a\u00020\u00062\u001d\u0010\u000b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\nH\u0081\bø\u0001��¢\u0006\u0004\b\f\u0010\r\u001a>\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\u001d\u0010\u000b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0001\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\nH\u0081\bø\u0001��¢\u0006\u0004\b\f\u0010\u000e\u001a\u001b\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��H\u0001¢\u0006\u0004\b\u000f\u0010\u0010\u001a#\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0001\"\u0004\b��\u0010��2\u0006\u0010\u0007\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\u000f\u0010\u0011\u001a!\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010\u00122\u0006\u0010\u0013\u001a\u00028��¢\u0006\u0004\b\u0014\u0010\u0015\u001a-\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\u0018\"\u0004\b��\u0010\u00122\u0012\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0016\"\u00028��¢\u0006\u0004\b\u0019\u0010\u001a\u001aI\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\u0018\"\u0004\b��\u0010\u00122\u001a\u0010\u001d\u001a\u0016\u0012\u0006\b��\u0012\u00028��0\u001bj\n\u0012\u0006\b��\u0012\u00028��`\u001c2\u0012\u0010\u0017\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0016\"\u00028��¢\u0006\u0004\b\u0019\u0010\u001e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"E", "", "builder", "", "build", "(Ljava/util/Set;)Ljava/util/Set;", "", "capacity", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildSetInternal", "(ILkotlin/Function1;)Ljava/util/Set;", "(Lkotlin/Function1;)Ljava/util/Set;", "createSetBuilder", "()Ljava/util/Set;", "(I)Ljava/util/Set;", "T", "element", "setOf", "(Ljava/lang/Object;)Ljava/util/Set;", "", "elements", "Ljava/util/TreeSet;", "sortedSetOf", "([Ljava/lang/Object;)Ljava/util/TreeSet;", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/TreeSet;", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/SetsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/SetsKt__SetsJVMKt.class */
public class SetsKt__SetsJVMKt {
    @NotNull
    /* renamed from: a */
    public static final <T> Set<T> m2061a(T t) {
        Set<T> singleton = Collections.singleton(t);
        Intrinsics.m1831d(singleton, "java.util.Collections.singleton(element)");
        return singleton;
    }
}

package kotlin.collections;

import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0007\u001aU\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��2\u0006\u0010\u0002\u001a\u00020\u00012\u001f\b\u0001\u0010\u0007\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\u001aM\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010��2\u001f\b\u0001\u0010\u0007\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001��\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\t\u0010\u000b\u001a\u0019\u0010\r\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010\f¢\u0006\u0004\b\r\u0010\u000e\u001a&\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028��0\u000fj\b\u0012\u0004\u0012\u00028��`\u0010\"\u0004\b��\u0010\fH\u0087\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a7\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028��0\u000fj\b\u0012\u0004\u0012\u00028��`\u0010\"\u0004\b��\u0010\f2\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0013\"\u00028��¢\u0006\u0004\b\u0011\u0010\u0015\u001a&\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028��0\u0016j\b\u0012\u0004\u0012\u00028��`\u0017\"\u0004\b��\u0010\fH\u0087\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a7\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00028��0\u0016j\b\u0012\u0004\u0012\u00028��`\u0017\"\u0004\b��\u0010\f2\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0013\"\u00028��¢\u0006\u0004\b\u0018\u0010\u001a\u001a\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010\fH\u0087\b¢\u0006\u0004\b\u001b\u0010\u000e\u001a-\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010\f2\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0013\"\u00028��¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010\fH\u0087\b¢\u0006\u0004\b\u001d\u0010\u000e\u001a-\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010\f2\u0012\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0013\"\u00028��¢\u0006\u0004\b\u001d\u0010\u001c\u001a)\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\b\"\b\b��\u0010\f*\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00018��H\u0007¢\u0006\u0004\b \u0010!\u001a7\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\b\"\b\b��\u0010\f*\u00020\u001e2\u0016\u0010\u0014\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00018��0\u0013\"\u0004\u0018\u00018��H\u0007¢\u0006\u0004\b \u0010\u001c\u001a%\u0010\"\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010\f*\b\u0012\u0004\u0012\u00028��0\bH��¢\u0006\u0004\b\"\u0010#\u001a(\u0010$\u001a\b\u0012\u0004\u0012\u00028��0\b\"\u0004\b��\u0010\f*\n\u0012\u0004\u0012\u00028��\u0018\u00010\bH\u0087\b¢\u0006\u0004\b$\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006%"}, d2 = {"E", "", "capacity", "Lkotlin/Function1;", "", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "", "buildSet", "(ILkotlin/Function1;)Ljava/util/Set;", "(Lkotlin/Function1;)Ljava/util/Set;", "T", "emptySet", "()Ljava/util/Set;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "hashSetOf", "()Ljava/util/HashSet;", "", "elements", "([Ljava/lang/Object;)Ljava/util/HashSet;", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "linkedSetOf", "()Ljava/util/LinkedHashSet;", "([Ljava/lang/Object;)Ljava/util/LinkedHashSet;", "mutableSetOf", "([Ljava/lang/Object;)Ljava/util/Set;", "setOf", "", "element", "setOfNotNull", "(Ljava/lang/Object;)Ljava/util/Set;", "optimizeReadOnlySet", "(Ljava/util/Set;)Ljava/util/Set;", "orEmpty", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/SetsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/SetsKt__SetsKt.class */
public class SetsKt__SetsKt extends SetsKt__SetsJVMKt {
    @NotNull
    /* renamed from: b */
    public static <T> Set<T> m2060b() {
        return EmptySet.f20522f;
    }

    @NotNull
    /* renamed from: c */
    public static final <T> Set<T> m2059c(@NotNull Set<? extends T> optimizeReadOnlySet) {
        Collection collection;
        Intrinsics.m1830e(optimizeReadOnlySet, "$this$optimizeReadOnlySet");
        int size = optimizeReadOnlySet.size();
        if (size != 0) {
            collection = optimizeReadOnlySet;
            if (size == 1) {
                collection = (Set<T>) SetsKt__SetsJVMKt.m2061a(optimizeReadOnlySet.iterator().next());
            }
        } else {
            collection = (Set<T>) SetsKt.m2062b();
        }
        return (Set<T>) collection;
    }
}

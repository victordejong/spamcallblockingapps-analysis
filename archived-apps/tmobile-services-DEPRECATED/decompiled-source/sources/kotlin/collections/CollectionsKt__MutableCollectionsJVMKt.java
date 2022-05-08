package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n��\n\u0002\u0010!\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a(\u0010\u0004\u001a\u00020\u0003\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\u0002\u001a\u00028��H\u0087\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a \u0010\u0006\u001a\u00020\u0003\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u0001H\u0087\b¢\u0006\u0004\b\u0006\u0010\u0007\u001a(\u0010\u0006\u001a\u00020\u0003\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u0006\u0010\t\u001a\u00020\bH\u0087\b¢\u0006\u0004\b\u0006\u0010\n\u001a'\u0010\f\u001a\u00020\u0003\"\u000e\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u000b*\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\u0004\b\f\u0010\u0007\u001a=\u0010\f\u001a\u00020\u0003\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u000e0\rH\u0087\bø\u0001��¢\u0006\u0004\b\f\u0010\u0010\u001a<\u0010\f\u001a\u00020\u0003\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u001a\u0010\u0013\u001a\u0016\u0012\u0006\b��\u0012\u00028��0\u0011j\n\u0012\u0006\b��\u0012\u00028��`\u0012H\u0087\b¢\u0006\u0004\b\f\u0010\u0014\u001a9\u0010\u0015\u001a\u00020\u0003\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00012\u001a\u0010\u0013\u001a\u0016\u0012\u0006\b��\u0012\u00028��0\u0011j\n\u0012\u0006\b��\u0012\u00028��`\u0012¢\u0006\u0004\b\u0015\u0010\u0014\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"T", "", FirebaseAnalytics.Param.VALUE, "", "fill", "(Ljava/util/List;Ljava/lang/Object;)V", "shuffle", "(Ljava/util/List;)V", "Ljava/util/Random;", "random", "(Ljava/util/List;Ljava/util/Random;)V", "", "sort", "Lkotlin/Function2;", "", "comparison", "(Ljava/util/List;Lkotlin/Function2;)V", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "(Ljava/util/List;Ljava/util/Comparator;)V", "sortWith", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__MutableCollectionsJVMKt.class */
public class CollectionsKt__MutableCollectionsJVMKt extends CollectionsKt__IteratorsKt {
    /* renamed from: s */
    public static <T extends Comparable<? super T>> void m2161s(@NotNull List<T> sort) {
        Intrinsics.m1830e(sort, "$this$sort");
        if (sort.size() > 1) {
            Collections.sort(sort);
        }
    }

    /* renamed from: t */
    public static <T> void m2160t(@NotNull List<T> sortWith, @NotNull Comparator<? super T> comparator) {
        Intrinsics.m1830e(sortWith, "$this$sortWith");
        Intrinsics.m1830e(comparator, "comparator");
        if (sortWith.size() > 1) {
            Collections.sort(sortWith, comparator);
        }
    }
}

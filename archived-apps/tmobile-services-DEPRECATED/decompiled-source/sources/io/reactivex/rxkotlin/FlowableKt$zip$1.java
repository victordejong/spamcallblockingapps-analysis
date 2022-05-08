package io.reactivex.rxkotlin;

import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0001*\u00020\u00032*\u0010\u0004\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00030\u0003 \u0006*\u0012\u0012\u000e\b\u0001\u0012\n \u0006*\u0004\u0018\u00010\u00030\u00030\u00050\u0005H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", "R", "T", "", "it", "", "kotlin.jvm.PlatformType", "apply", "([Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/FlowableKt$zip$1.class */
public final class FlowableKt$zip$1<T, R> implements Function<Object[], R> {

    /* renamed from: f */
    final /* synthetic */ Function1 f19596f;

    @NotNull
    /* renamed from: a */
    public final R apply(@NotNull Object[] it) {
        List b;
        int p;
        Intrinsics.m1829f(it, "it");
        Function1 function1 = this.f19596f;
        b = ArraysKt___ArraysJvmKt.m2304b(it);
        p = CollectionsKt__IterablesKt.m2164p(b, 10);
        ArrayList arrayList = new ArrayList(p);
        for (T t : b) {
            if (t != null) {
                arrayList.add(t);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        }
        return (R) function1.invoke(arrayList);
    }
}

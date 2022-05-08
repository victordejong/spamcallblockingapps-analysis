package kotlinx.coroutines.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0080@\u0018��*\u0004\b��\u0010\u0001B\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002ø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J$\u0010\f\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\b0\u0007H\u0086\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ$\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0010\u001a\u00028��H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/internal/InlineList;", "E", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lkotlin/Function1;", "", "action", "forEachReversed-impl", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "forEachReversed", "", "hashCode", "()I", "element", "plus-UZ7vuAc", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "plus", "", "toString", "()Ljava/lang/String;", "holder", "Ljava/lang/Object;", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/InlineList.class */
public final class InlineList<E> {

    /* renamed from: a */
    private final Object f23909a;

    @NotNull
    /* renamed from: a */
    public static Object m547a(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: b */
    public static /* synthetic */ Object m546b(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            obj = null;
        }
        m547a(obj);
        return obj;
    }

    /* renamed from: c */
    public static boolean m545c(Object obj, @Nullable Object obj2) {
        return (obj2 instanceof InlineList) && Intrinsics.m1834a(obj, ((InlineList) obj2).m541g());
    }

    /* renamed from: d */
    public static int m544d(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    @NotNull
    /* renamed from: e */
    public static final Object m543e(Object obj, E e) {
        if (!DebugKt.m1308a() || (!(e instanceof List))) {
            if (obj == null) {
                m547a(e);
                obj = e;
            } else if (!(obj instanceof ArrayList)) {
                ArrayList arrayList = new ArrayList(4);
                arrayList.add(obj);
                arrayList.add(e);
                m547a(arrayList);
                obj = arrayList;
            } else if (obj != null) {
                ((ArrayList) obj).add(e);
                m547a(obj);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
            }
            return obj;
        }
        throw new AssertionError();
    }

    @NotNull
    /* renamed from: f */
    public static String m542f(Object obj) {
        return "InlineList(holder=" + obj + ")";
    }

    public boolean equals(Object obj) {
        return m545c(this.f23909a, obj);
    }

    @Nullable
    /* renamed from: g */
    public final /* synthetic */ Object m541g() {
        return this.f23909a;
    }

    public int hashCode() {
        return m544d(this.f23909a);
    }

    public String toString() {
        return m542f(this.f23909a);
    }
}

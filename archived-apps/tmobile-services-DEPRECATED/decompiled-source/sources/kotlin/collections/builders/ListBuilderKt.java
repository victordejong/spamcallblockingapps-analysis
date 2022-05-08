package kotlin.collections.builders;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010 \n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\u0006\u0010\u0002\u001a\u00020\u0001H��¢\u0006\u0004\b\u0004\u0010\u0005\u001a-\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u00032\u0006\u0010\u0007\u001a\u00020\u0001H��¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\f\u001a\u00020\u000b\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00032\u0006\u0010\n\u001a\u00020\u0001H��¢\u0006\u0004\b\f\u0010\r\u001a/\u0010\u0010\u001a\u00020\u000b\"\u0004\b��\u0010��*\b\u0012\u0004\u0012\u00028��0\u00032\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H��¢\u0006\u0004\b\u0010\u0010\u0011\u001a;\u0010\u0017\u001a\u00020\u0016\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u00032\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001a/\u0010\u0019\u001a\u00020\u0001\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u00032\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0019\u0010\u001a\u001a1\u0010\u001c\u001a\u00020\u001b\"\u0004\b��\u0010\u0006*\n\u0012\u0006\b\u0001\u0012\u00028��0\u00032\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"E", "", "size", "", "arrayOfUninitializedElements", "(I)[Ljava/lang/Object;", "T", "newSize", "copyOfUninitializedElements", "([Ljava/lang/Object;I)[Ljava/lang/Object;", FirebaseAnalytics.Param.INDEX, "", "resetAt", "([Ljava/lang/Object;I)V", "fromIndex", "toIndex", "resetRange", "([Ljava/lang/Object;II)V", "offset", Name.LENGTH, "", "other", "", "subarrayContentEquals", "([Ljava/lang/Object;IILjava/util/List;)Z", "subarrayContentHashCode", "([Ljava/lang/Object;II)I", "", "subarrayContentToString", "([Ljava/lang/Object;II)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/builders/ListBuilderKt.class */
public final class ListBuilderKt {
    @NotNull
    /* renamed from: d */
    public static final <E> E[] m2032d(int i) {
        if (i >= 0) {
            return (E[]) new Object[i];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    @NotNull
    /* renamed from: e */
    public static final <T> T[] m2031e(@NotNull T[] copyOfUninitializedElements, int i) {
        Intrinsics.m1830e(copyOfUninitializedElements, "$this$copyOfUninitializedElements");
        T[] tArr = (T[]) Arrays.copyOf(copyOfUninitializedElements, i);
        Intrinsics.m1831d(tArr, "java.util.Arrays.copyOf(this, newSize)");
        if (tArr != null) {
            return tArr;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* renamed from: f */
    public static final <E> void m2030f(@NotNull E[] resetAt, int i) {
        Intrinsics.m1830e(resetAt, "$this$resetAt");
        resetAt[i] = null;
    }

    /* renamed from: g */
    public static final <E> void m2029g(@NotNull E[] resetRange, int i, int i2) {
        Intrinsics.m1830e(resetRange, "$this$resetRange");
        while (i < i2) {
            m2030f(resetRange, i);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static final <T> boolean m2028h(T[] tArr, int i, int i2, List<?> list) {
        if (i2 != list.size()) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (true ^ Intrinsics.m1834a(tArr[i + i3], list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static final <T> int m2027i(T[] tArr, int i, int i2) {
        int i3 = 1;
        for (int i4 = 0; i4 < i2; i4++) {
            T t = tArr[i + i4];
            i3 = (i3 * 31) + (t != null ? t.hashCode() : 0);
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static final <T> String m2026j(T[] tArr, int i, int i2) {
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(tArr[i + i3]);
        }
        sb.append("]");
        String sb2 = sb.toString();
        Intrinsics.m1831d(sb2, "sb.toString()");
        return sb2;
    }
}

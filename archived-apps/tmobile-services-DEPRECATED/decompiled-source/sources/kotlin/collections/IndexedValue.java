package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\b\u0018��*\u0006\b��\u0010\u0001 \u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00028��¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00028��HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J*\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0��2\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00028��HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\b\u001a\u00028��8\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0006¨\u0006\u001a"}, d2 = {"Lkotlin/collections/IndexedValue;", "T", "", "component1", "()I", "component2", "()Ljava/lang/Object;", FirebaseAnalytics.Param.INDEX, FirebaseAnalytics.Param.VALUE, "copy", "(ILjava/lang/Object;)Lkotlin/collections/IndexedValue;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "", "toString", "()Ljava/lang/String;", "I", "getIndex", "Ljava/lang/Object;", "getValue", "<init>", "(ILjava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/IndexedValue.class */
public final class IndexedValue<T> {

    /* renamed from: a */
    private final int f20523a;

    /* renamed from: b */
    private final T f20524b;

    public IndexedValue(int i, T t) {
        this.f20523a = i;
        this.f20524b = t;
    }

    /* renamed from: a */
    public final int m2110a() {
        return this.f20523a;
    }

    /* renamed from: b */
    public final T m2109b() {
        return this.f20524b;
    }

    /* renamed from: c */
    public final int m2108c() {
        return this.f20523a;
    }

    /* renamed from: d */
    public final T m2107d() {
        return this.f20524b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IndexedValue)) {
            return false;
        }
        IndexedValue indexedValue = (IndexedValue) obj;
        return this.f20523a == indexedValue.f20523a && Intrinsics.m1834a(this.f20524b, indexedValue.f20524b);
    }

    public int hashCode() {
        int i = this.f20523a;
        T t = this.f20524b;
        return (i * 31) + (t != null ? t.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "IndexedValue(index=" + this.f20523a + ", value=" + this.f20524b + ")";
    }
}

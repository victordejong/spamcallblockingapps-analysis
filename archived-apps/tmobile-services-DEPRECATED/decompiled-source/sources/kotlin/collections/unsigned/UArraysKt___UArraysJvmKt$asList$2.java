package kotlin.collections.unsigned;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
@Metadata(bv = {1, 0, 3}, d1 = {"��#\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0096\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016ø\u0001��¢\u0006\u0004\b\u0013\u0010\u000fR\u0016\u0010\u0017\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0018"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "Lkotlin/ULong;", "element", "", "contains-VKZWuLQ", "(J)Z", "contains", "", FirebaseAnalytics.Param.INDEX, "get-s-VKNKU", "(I)J", "get", "indexOf-VKZWuLQ", "(J)I", "indexOf", "isEmpty", "()Z", "lastIndexOf-VKZWuLQ", "lastIndexOf", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$2.class */
public final class UArraysKt___UArraysJvmKt$asList$2 extends AbstractList<ULong> implements RandomAccess {

    /* renamed from: g */
    final /* synthetic */ long[] f20595g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return ULongArray.m2412k(this.f20595g);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ULong) {
            return m1968e(((ULong) obj).m2419l());
        }
        return false;
    }

    /* renamed from: e */
    public boolean m1968e(long j) {
        return ULongArray.m2417e(this.f20595g, j);
    }

    /* renamed from: f */
    public long m1967f(int i) {
        return ULongArray.m2414h(this.f20595g, i);
    }

    /* renamed from: g */
    public int m1966g(long j) {
        int B;
        B = ArraysKt___ArraysKt.m2259B(this.f20595g, j);
        return B;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        return ULong.m2426a(m1967f(i));
    }

    /* renamed from: h */
    public int m1965h(long j) {
        int K;
        K = ArraysKt___ArraysKt.m2250K(this.f20595g, j);
        return K;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ULong) {
            return m1966g(((ULong) obj).m2419l());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return ULongArray.m2410p(this.f20595g);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ULong) {
            return m1965h(((ULong) obj).m2419l());
        }
        return -1;
    }
}

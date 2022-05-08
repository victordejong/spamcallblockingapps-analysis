package kotlin.jvm.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CharIterator;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/jvm/internal/ArrayCharIterator;", "Lkotlin/collections/CharIterator;", "", "hasNext", "()Z", "", "nextChar", "()C", "", "array", "[C", "", FirebaseAnalytics.Param.INDEX, "I", "<init>", "([C)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/ArrayCharIterator.class */
final class ArrayCharIterator extends CharIterator {

    /* renamed from: f */
    private int f20720f;

    /* renamed from: g */
    private final char[] f20721g;

    public ArrayCharIterator(@NotNull char[] array) {
        Intrinsics.m1830e(array, "array");
        this.f20721g = array;
    }

    @Override // kotlin.collections.CharIterator
    /* renamed from: b */
    public char mo1421b() {
        try {
            char[] cArr = this.f20721g;
            int i = this.f20720f;
            this.f20720f = i + 1;
            return cArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f20720f--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20720f < this.f20721g.length;
    }
}

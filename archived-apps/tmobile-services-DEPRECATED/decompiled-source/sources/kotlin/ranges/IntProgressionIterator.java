package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.IntIterator;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\b��\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0019\u0010\f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u0007¨\u0006\u0012"}, d2 = {"Lkotlin/ranges/IntProgressionIterator;", "Lkotlin/collections/IntIterator;", "", "hasNext", "()Z", "", "nextInt", "()I", "finalElement", "I", "Z", "next", "step", "getStep", "first", "last", "<init>", "(III)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/IntProgressionIterator.class */
public final class IntProgressionIterator extends IntIterator {

    /* renamed from: f */
    private final int f20798f;

    /* renamed from: g */
    private boolean f20799g;

    /* renamed from: h */
    private int f20800h;

    /* renamed from: i */
    private final int f20801i;

    public IntProgressionIterator(int i, int i2, int i3) {
        this.f20801i = i3;
        this.f20798f = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f20799g = z;
        this.f20800h = !z ? this.f20798f : i;
    }

    @Override // kotlin.collections.IntIterator
    /* renamed from: b */
    public int mo1733b() {
        int i = this.f20800h;
        if (i != this.f20798f) {
            this.f20800h = this.f20801i + i;
        } else if (this.f20799g) {
            this.f20799g = false;
        } else {
            throw new NoSuchElementException();
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20799g;
    }
}

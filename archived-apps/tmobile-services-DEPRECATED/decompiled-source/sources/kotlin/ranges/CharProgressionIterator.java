package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CharIterator;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b��\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR\u0016\u0010\f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lkotlin/ranges/CharProgressionIterator;", "Lkotlin/collections/CharIterator;", "", "hasNext", "()Z", "", "nextChar", "()C", "", "finalElement", "I", "Z", "next", "step", "getStep", "()I", "first", "last", "<init>", "(CCI)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/CharProgressionIterator.class */
public final class CharProgressionIterator extends CharIterator {

    /* renamed from: f */
    private final int f20784f;

    /* renamed from: g */
    private boolean f20785g;

    /* renamed from: h */
    private int f20786h;

    /* renamed from: i */
    private final int f20787i;

    public CharProgressionIterator(char c, char c2, int i) {
        this.f20787i = i;
        this.f20784f = c2;
        boolean z = true;
        int g = Intrinsics.m1828g(c, c2);
        if (i <= 0 ? g < 0 : g > 0) {
            z = false;
        }
        this.f20785g = z;
        this.f20786h = !z ? this.f20784f : c;
    }

    @Override // kotlin.collections.CharIterator
    /* renamed from: b */
    public char mo1421b() {
        int i = this.f20786h;
        if (i != this.f20784f) {
            this.f20786h = this.f20787i + i;
        } else if (this.f20785g) {
            this.f20785g = false;
        } else {
            throw new NoSuchElementException();
        }
        return (char) i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20785g;
    }
}

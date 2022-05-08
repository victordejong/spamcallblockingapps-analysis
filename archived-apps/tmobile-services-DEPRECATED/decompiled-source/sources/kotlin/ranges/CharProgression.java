package kotlin.ranges;

import kotlin.Metadata;
import kotlin.collections.CharIterator;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u000f\b\u0016\u0018�� !2\u00020\u00012\u00020\u0002:\u0001!B!\b��\u0012\u0006\u0010\u001d\u001a\u00020\u0013\u0012\u0006\u0010\u001e\u001a\u00020\u0013\u0012\u0006\u0010\u001a\u001a\u00020\b¢\u0006\u0004\b\u001f\u0010 J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0014\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0018\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\u001a\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\n¨\u0006\""}, d2 = {"Lkotlin/ranges/CharProgression;", "Ljava/lang/Iterable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "Lkotlin/collections/CharIterator;", "iterator", "()Lkotlin/collections/CharIterator;", "", "toString", "()Ljava/lang/String;", "", "first", "C", "getFirst", "()C", "last", "getLast", "step", "I", "getStep", "start", "endInclusive", "<init>", "(CCI)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/CharProgression.class */
public class CharProgression implements Iterable<Character>, KMappedMarker {

    /* renamed from: f */
    private final char f20781f;

    /* renamed from: g */
    private final char f20782g;

    /* renamed from: h */
    private final int f20783h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ%\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/ranges/CharProgression$Companion;", "", "rangeStart", "rangeEnd", "", "step", "Lkotlin/ranges/CharProgression;", "fromClosedRange", "(CCI)Lkotlin/ranges/CharProgression;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/CharProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    public CharProgression(char c, char c2, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i != Integer.MIN_VALUE) {
            this.f20781f = c;
            this.f20782g = (char) ProgressionUtilKt.m1898c(c, c2, i);
            this.f20783h = i;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.f20783h == r0.f20783h) goto L_0x0040;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.CharProgression
            if (r0 == 0) goto L_0x0045
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.CharProgression r0 = (kotlin.ranges.CharProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0040
        L_0x0018:
            r0 = r3
            char r0 = r0.f20781f
            r5 = r0
            r0 = r4
            kotlin.ranges.CharProgression r0 = (kotlin.ranges.CharProgression) r0
            r4 = r0
            r0 = r5
            r1 = r4
            char r1 = r1.f20781f
            if (r0 != r1) goto L_0x0045
            r0 = r3
            char r0 = r0.f20782g
            r1 = r4
            char r1 = r1.f20782g
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f20783h
            r1 = r4
            int r1 = r1.f20783h
            if (r0 != r1) goto L_0x0045
        L_0x0040:
            r0 = 1
            r6 = r0
            goto L_0x0047
        L_0x0045:
            r0 = 0
            r6 = r0
        L_0x0047:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.CharProgression.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final char m1751f() {
        return this.f20781f;
    }

    /* renamed from: g */
    public final char m1750g() {
        return this.f20782g;
    }

    @NotNull
    /* renamed from: h */
    public CharIterator iterator() {
        return new CharProgressionIterator(this.f20781f, this.f20782g, this.f20783h);
    }

    public int hashCode() {
        return isEmpty() ? -1 : (((this.f20781f * 31) + this.f20782g) * 31) + this.f20783h;
    }

    public boolean isEmpty() {
        boolean z = true;
        if (this.f20783h <= 0 ? Intrinsics.m1828g(this.f20781f, this.f20782g) >= 0 : Intrinsics.m1828g(this.f20781f, this.f20782g) <= 0) {
            z = false;
        }
        return z;
    }

    @NotNull
    public String toString() {
        int i;
        StringBuilder sb;
        if (this.f20783h > 0) {
            sb = new StringBuilder();
            sb.append(this.f20781f);
            sb.append("..");
            sb.append(this.f20782g);
            sb.append(" step ");
            i = this.f20783h;
        } else {
            sb = new StringBuilder();
            sb.append(this.f20781f);
            sb.append(" downTo ");
            sb.append(this.f20782g);
            sb.append(" step ");
            i = -this.f20783h;
        }
        sb.append(i);
        return sb.toString();
    }
}

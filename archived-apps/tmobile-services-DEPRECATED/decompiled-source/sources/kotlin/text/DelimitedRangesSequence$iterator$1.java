package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u000e\u001a\u0004\b\u001c\u0010\u0010\"\u0004\b\u001d\u0010\u0012R\"\u0010\u001e\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u000e\u001a\u0004\b\u001f\u0010\u0010\"\u0004\b \u0010\u0012¨\u0006!"}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "calcNext", "()V", "", "hasNext", "()Z", "Lkotlin/ranges/IntRange;", "next", "()Lkotlin/ranges/IntRange;", "", "counter", "I", "getCounter", "()I", "setCounter", "(I)V", "currentStartIndex", "getCurrentStartIndex", "setCurrentStartIndex", "nextItem", "Lkotlin/ranges/IntRange;", "getNextItem", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "nextSearchIndex", "getNextSearchIndex", "setNextSearchIndex", "nextState", "getNextState", "setNextState", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/DelimitedRangesSequence$iterator$1.class */
public final class DelimitedRangesSequence$iterator$1 implements Iterator<IntRange>, KMappedMarker {

    /* renamed from: f */
    private int f21026f = -1;

    /* renamed from: g */
    private int f21027g;

    /* renamed from: h */
    private int f21028h;
    @Nullable

    /* renamed from: i */
    private IntRange f21029i;

    /* renamed from: j */
    private int f21030j;

    /* renamed from: k */
    final /* synthetic */ DelimitedRangesSequence f21031k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DelimitedRangesSequence$iterator$1(DelimitedRangesSequence delimitedRangesSequence) {
        int i;
        CharSequence charSequence;
        int f;
        this.f21031k = delimitedRangesSequence;
        i = delimitedRangesSequence.f21023b;
        charSequence = delimitedRangesSequence.f21022a;
        f = RangesKt___RangesKt.m1709f(i, 0, charSequence.length());
        this.f21027g = f;
        this.f21028h = f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0036, code lost:
        if (r0 < r1) goto L_0x0039;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1565a() {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.DelimitedRangesSequence$iterator$1.m1565a():void");
    }

    @NotNull
    /* renamed from: b */
    public IntRange next() {
        if (this.f21026f == -1) {
            m1565a();
        }
        if (this.f21026f != 0) {
            IntRange intRange = this.f21029i;
            if (intRange != null) {
                this.f21029i = null;
                this.f21026f = -1;
                return intRange;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.ranges.IntRange");
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f21026f == -1) {
            m1565a();
        }
        boolean z = true;
        if (this.f21026f != 1) {
            z = false;
        }
        return z;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p592c.C10050h;
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt___ArraysKt$withIndex$1.class */
public final class ArraysKt___ArraysKt$withIndex$1 extends Lambda implements AbstractC10020a<Iterator<? extends T>> {
    public final /* synthetic */ Object[] $this_withIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArraysKt___ArraysKt$withIndex$1(Object[] objArr) {
        super(0);
        this.$this_withIndex = objArr;
    }

    @Override // p573f.p590w.p591b.AbstractC10020a
    public final Iterator<T> invoke() {
        return C10050h.m1660a(this.$this_withIndex);
    }
}

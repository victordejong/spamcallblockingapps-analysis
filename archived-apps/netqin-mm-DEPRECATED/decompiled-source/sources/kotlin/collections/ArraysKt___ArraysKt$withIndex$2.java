package kotlin.collections;

import kotlin.jvm.internal.Lambda;
import p573f.p577r.AbstractC9974k;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p592c.C10051i;
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ArraysKt___ArraysKt$withIndex$2.class */
public final class ArraysKt___ArraysKt$withIndex$2 extends Lambda implements AbstractC10020a<AbstractC9974k> {
    public final /* synthetic */ byte[] $this_withIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArraysKt___ArraysKt$withIndex$2(byte[] bArr) {
        super(0);
        this.$this_withIndex = bArr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p573f.p590w.p591b.AbstractC10020a
    public final AbstractC9974k invoke() {
        return C10051i.m1659a(this.$this_withIndex);
    }
}

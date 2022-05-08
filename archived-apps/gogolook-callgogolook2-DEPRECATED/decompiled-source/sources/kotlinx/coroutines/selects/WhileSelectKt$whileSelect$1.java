package kotlinx.coroutines.selects;

import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.selects.WhileSelectKt", m472f = "WhileSelect.kt", m471l = {34}, m470m = "whileSelect")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u001f\b\u0004\u0010\u0002\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0002\b\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\tH\u0087H"}, m815d2 = {"whileSelect", "", "builder", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "", "Lkotlin/ExtensionFunctionType;", "continuation", "Lkotlin/coroutines/Continuation;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/WhileSelectKt$whileSelect$1.class */
public final class WhileSelectKt$whileSelect$1 extends AbstractC15068d {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;

    public WhileSelectKt$whileSelect$1(AbstractC15044d dVar) {
        super(dVar);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return WhileSelectKt.whileSelect(null, this);
    }
}

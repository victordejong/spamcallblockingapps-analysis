package kotlinx.coroutines.internal;

import kotlin.Metadata;
import p626l.C14979k;
import p626l.C14982l;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "", "e", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1.class */
public final class ExceptionsConstuctorKt$safeCtor$1 extends AbstractC15150l implements AbstractC15118l<Throwable, Throwable> {
    public final /* synthetic */ AbstractC15118l $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExceptionsConstuctorKt$safeCtor$1(AbstractC15118l lVar) {
        super(1);
        this.$block = lVar;
    }

    public final Throwable invoke(Throwable th) {
        Object obj;
        try {
            C14979k.C14980a aVar = C14979k.f33013a;
            obj = (Throwable) this.$block.invoke(th);
            C14979k.m657a(obj);
        } catch (Throwable th2) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            obj = C14982l.m652a(th2);
            C14979k.m657a(obj);
        }
        Object obj2 = obj;
        if (C14979k.m655c(obj)) {
            obj2 = null;
        }
        return (Throwable) obj2;
    }
}

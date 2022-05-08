package kotlinx.coroutines.flow.internal;

import androidx.core.app.Person;
import kotlin.Metadata;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018�� \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0018\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;", "Lkotlin/coroutines/CoroutineContext$Element;", "e", "", "(Ljava/lang/Throwable;)V", Person.KEY_KEY, "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "Key", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/DownstreamExceptionElement.class */
public final class DownstreamExceptionElement implements AbstractC15049g.AbstractC15052b {
    public static final Key Key = new Key(null);

    /* renamed from: e */
    public final Throwable f32924e;
    public final AbstractC15049g.AbstractC15054c<?> key = Key;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/flow/internal/DownstreamExceptionElement;", "()V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/DownstreamExceptionElement$Key.class */
    public static final class Key implements AbstractC15049g.AbstractC15054c<DownstreamExceptionElement> {
        public Key() {
        }

        public /* synthetic */ Key(C15145g gVar) {
            this();
        }
    }

    public DownstreamExceptionElement(Throwable th) {
        this.f32924e = th;
    }

    @Override // p626l.p634w.AbstractC15049g
    public <R> R fold(R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
        return (R) AbstractC15049g.AbstractC15052b.C15053a.m486a(this, r, pVar);
    }

    @Override // p626l.p634w.AbstractC15049g.AbstractC15052b, p626l.p634w.AbstractC15049g
    public <E extends AbstractC15049g.AbstractC15052b> E get(AbstractC15049g.AbstractC15054c<E> cVar) {
        return (E) AbstractC15049g.AbstractC15052b.C15053a.m485a(this, cVar);
    }

    @Override // p626l.p634w.AbstractC15049g.AbstractC15052b
    public AbstractC15049g.AbstractC15054c<?> getKey() {
        return this.key;
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g minusKey(AbstractC15049g.AbstractC15054c<?> cVar) {
        return AbstractC15049g.AbstractC15052b.C15053a.m483b(this, cVar);
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g plus(AbstractC15049g gVar) {
        return AbstractC15049g.AbstractC15052b.C15053a.m484a(this, gVar);
    }
}

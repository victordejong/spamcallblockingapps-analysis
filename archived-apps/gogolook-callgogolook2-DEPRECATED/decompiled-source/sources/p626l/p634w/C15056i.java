package p626l.p634w;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import p626l.C14979k;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p635j.EnumC15058a;
import p626l.p634w.p636k.p637a.AbstractC15069e;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0001\u0018�� \u001a*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\u0001\u001aB\u0015\b\u0011\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0002\u0010\u0005B\u001f\b��\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\n\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0001J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001e\u0010\u0014\u001a\u00020\u00152\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u0016H\u0016ø\u0001��¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, m815d2 = {"Lkotlin/coroutines/SafeContinuation;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "delegate", "(Lkotlin/coroutines/Continuation;)V", "initialResult", "", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "result", "getOrThrow", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "resumeWith", "", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "toString", "", "Companion", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.w.i */
/* loaded from: classes3-dex2jar.jar:l/w/i.class */
public final class C15056i<T> implements AbstractC15044d<T>, AbstractC15069e {

    /* renamed from: b */
    public static final AtomicReferenceFieldUpdater<C15056i<?>, Object> f33081b = AtomicReferenceFieldUpdater.newUpdater(C15056i.class, Object.class, "result");

    /* renamed from: a */
    public final AbstractC15044d<T> f33082a;
    public volatile Object result;

    /* renamed from: l.w.i$a */
    /* loaded from: classes3-dex2jar.jar:l/w/i$a.class */
    public static final class C15057a {
        public C15057a() {
        }

        public /* synthetic */ C15057a(C15145g gVar) {
            this();
        }
    }

    static {
        new C15057a(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C15056i(AbstractC15044d<? super T> dVar) {
        this(dVar, EnumC15058a.UNDECIDED);
        C15149k.m377b(dVar, "delegate");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C15056i(AbstractC15044d<? super T> dVar, Object obj) {
        C15149k.m377b(dVar, "delegate");
        this.f33082a = dVar;
        this.result = obj;
    }

    /* renamed from: a */
    public final Object m482a() {
        Object obj = this.result;
        EnumC15058a aVar = EnumC15058a.UNDECIDED;
        Object obj2 = obj;
        if (obj == aVar) {
            if (f33081b.compareAndSet(this, aVar, C15064c.m478a())) {
                return C15064c.m478a();
            }
            obj2 = this.result;
        }
        if (obj2 == EnumC15058a.RESUMED) {
            obj2 = C15064c.m478a();
        } else if (obj2 instanceof C14979k.C14981b) {
            throw ((C14979k.C14981b) obj2).f33014a;
        }
        return obj2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public AbstractC15069e getCallerFrame() {
        AbstractC15044d<T> dVar = this.f33082a;
        AbstractC15044d<T> dVar2 = dVar;
        if (!(dVar instanceof AbstractC15069e)) {
            dVar2 = null;
        }
        return (AbstractC15069e) dVar2;
    }

    @Override // p626l.p634w.AbstractC15044d
    public AbstractC15049g getContext() {
        return this.f33082a.getContext();
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15069e
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // p626l.p634w.AbstractC15044d
    public void resumeWith(Object obj) {
        while (true) {
            Object obj2 = this.result;
            EnumC15058a aVar = EnumC15058a.UNDECIDED;
            if (obj2 == aVar) {
                if (f33081b.compareAndSet(this, aVar, obj)) {
                    return;
                }
            } else if (obj2 != C15064c.m478a()) {
                throw new IllegalStateException("Already resumed");
            } else if (f33081b.compareAndSet(this, C15064c.m478a(), EnumC15058a.RESUMED)) {
                this.f33082a.resumeWith(obj);
                return;
            }
        }
    }

    public String toString() {
        return "SafeContinuation for " + this.f33082a;
    }
}
